package com.mifiservice.security;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.mifiservice.config.MifiConfiguration;

/** Servlet adapter for the pure policy/session/validation helpers. */
public final class Guard {
    private static final String HEADER = "X-Mifi-Req";
    private static final String DEFAULT_PASSWORD = "admin";

    /** Username of the login attempt on this request thread; set by authorize, cleared by preflight. */
    private static final ThreadLocal<String> LOGIN_USER = new ThreadLocal<String>();

    private static final ThreadLocal<Boolean> REMEMBER = new ThreadLocal<Boolean>();

    private Guard() {
    }

    public static boolean preflight(HttpServletRequest request, HttpServletResponse response) {
        LOGIN_USER.remove();
        REMEMBER.remove();
        try {
            UsageTracker.ensureStarted();
        } catch (Throwable ignored) {
            // tracking is optional; never block a request because of it
        }
        if (request == null || response == null) {
            return false;
        }
        String contentType = request.getContentType();
        if (contentType != null && contentType.toLowerCase().startsWith("multipart/")) {
            deny(response, 403, "FORBIDDEN");
            return false;
        }
        if (request.getContentLength() > Validator.MAX_BODY_CHARS) {
            deny(response, 400, "INVALID_INPUT:body");
            return false;
        }
        String host = request.getHeader("Host");
        if (!Validator.isAllowedHost(host)) {
            deny(response, 403, "HOST");
            return false;
        }
        String origin = request.getHeader("Origin");
        if (!Validator.sameHost(host, origin)) {
            deny(response, 403, "HOST");
            return false;
        }
        return true;
    }

    public static boolean authorize(HttpServletRequest request, HttpServletResponse response,
            int funcNo, JSONObject body) {
        String validationError = Validator.validate(funcNo, body);
        if (validationError != null) {
            deny(response, 400, "INVALID_INPUT:" + validationError);
            return false;
        }

        if (funcNo == 1000) {
            String user = body.optString("username", "");
            LOGIN_USER.set(user);
            REMEMBER.set(Boolean.valueOf("1".equals(body.optString("remember", ""))));
            if (!SessionManager.loginAllowed(remote(request), user)) {
                response.addHeader("Retry-After",
                        String.valueOf(SessionManager.retryAfterSeconds(remote(request), user)));
                deny(response, 429, "RATE_LIMITED");
                return false;
            }
            return true;
        }

        if (funcNo == AuthApi.RECOVER) {
            if (!"1".equals(request.getHeader(HEADER))) {
                deny(response, 403, "FORBIDDEN");
                return false;
            }
            String key = "recover";
            if (!SessionManager.loginAllowed(remote(request), key)) {
                response.addHeader("Retry-After",
                        String.valueOf(SessionManager.retryAfterSeconds(remote(request), key)));
                deny(response, 429, "RATE_LIMITED");
                return false;
            }
            // Every attempt counts against the throttle; a success is a one-off.
            SessionManager.recordLoginFailure(remote(request), key);
            AuthApi.handle(funcNo, request, response, body);
            return false;
        }
        if (!isAllowed(funcNo)) {
            deny(response, 403, "FORBIDDEN");
            return false;
        }
        if (!"1".equals(request.getHeader(HEADER))) {
            deny(response, 403, "FORBIDDEN");
            return false;
        }

        String token = SessionManager.cookieToken(request.getHeader("Cookie"));
        if (!SessionManager.isValid(token)) {
            if (funcNo == AuthApi.WHOAMI) {
                String resumed = resumeFromRememberMe(request, response);
                if (resumed != null) {
                    AuthApi.handle(funcNo, request, response, body, resumed);
                    return false;
                }
            }
            deny(response, 401, "SESSION_REQUIRED");
            return false;
        }
        if (needsPasswordChange(token) && funcNo != 1020
                && funcNo != AuthApi.WHOAMI && funcNo != AuthApi.LOGOUT) {
            deny(response, 403, "PASSWORD_CHANGE_REQUIRED");
            return false;
        }
        if (AuthApi.owns(funcNo)) {
            AuthApi.handle(funcNo, request, response, body);
            return false;
        }
        return true;
    }

    public static void loginSuccess(HttpServletRequest request, HttpServletResponse response) {
        String user = LOGIN_USER.get();
        LOGIN_USER.remove();
        SessionManager.recordLoginSuccess(remote(request), user == null ? "" : user);
        boolean firstRun = isShippedDefaultPassword();
        String token = SessionManager.create(remote(request), firstRun);
        response.addHeader("Set-Cookie", cookie(token));
        Boolean remember = REMEMBER.get();
        REMEMBER.remove();
        if (remember != null && remember.booleanValue() && !firstRun) {
            String value = RememberMe.issue();
            if (value != null) {
                response.addHeader("Set-Cookie", rememberCookie(value));
            }
        }
    }

    public static void loginFailure(HttpServletRequest request) {
        String user = LOGIN_USER.get();
        LOGIN_USER.remove();
        SessionManager.recordLoginFailure(remote(request), user == null ? "" : user);
    }

    public static void passwordChanged(HttpServletRequest request, HttpServletResponse response) {
        String token = SessionManager.cookieToken(request.getHeader("Cookie"));
        SessionManager.passwordChanged(token);
        RememberMe.wipeAll();
        if (token != null && SessionManager.isValid(token)) {
            response.addHeader("Set-Cookie", cookie(token));
        }
    }

    public static void logout(HttpServletRequest request, HttpServletResponse response) {
        SessionManager.destroy(SessionManager.cookieToken(request.getHeader("Cookie")));
        RememberMe.revoke(cookieValue(request.getHeader("Cookie"), AuthConfig.REMEMBER_COOKIE));
        response.addHeader("Set-Cookie", AuthConfig.REMEMBER_COOKIE
                + "=; Path=/; HttpOnly; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT");
        response.addHeader("Set-Cookie", AuthConfig.SESSION_COOKIE
                + "=; Path=/; HttpOnly; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT");
    }

    static String rememberCookie(String value) {
        return AuthConfig.REMEMBER_COOKIE + "=" + value + "; Path=/; HttpOnly; SameSite=Strict; Max-Age="
                + RememberMe.LIFETIME_SECONDS;
    }

    static String cookieValue(String header, String name) {
        if (header == null) {
            return null;
        }
        String[] parts = header.split(";");
        for (int i = 0; i < parts.length; i++) {
            String part = parts[i].trim();
            if (part.startsWith(name + "=")) {
                return part.substring(name.length() + 1);
            }
        }
        return null;
    }

    private static String resumeFromRememberMe(HttpServletRequest request, HttpServletResponse response) {
        String cookie = cookieValue(request.getHeader("Cookie"), AuthConfig.REMEMBER_COOKIE);
        String fresh = RememberMe.consume(cookie);
        if (fresh == null) {
            if (cookie != null) {
                response.addHeader("Set-Cookie", AuthConfig.REMEMBER_COOKIE
                        + "=; Path=/; HttpOnly; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT");
            }
            return null;
        }
        String token = SessionManager.create(remote(request), false);
        response.addHeader("Set-Cookie", cookie(token));
        response.addHeader("Set-Cookie", rememberCookie(fresh));
        return token;
    }

    static String cookie(String token) {
        return AuthConfig.SESSION_COOKIE + "=" + token + "; Path=/; HttpOnly; SameSite=Strict";
    }

    public static void redact(JSONObject response) {
        Redactor.redactResponse(response);
    }

    public static void denyMultipart(HttpServletResponse response) {
        deny(response, 403, "FORBIDDEN");
    }

    public static void badRequest(HttpServletResponse response) {
        deny(response, 400, "INVALID_INPUT:JSON");
    }

    public static boolean isAllowed(int funcNo) {
        switch (funcNo) {
            case 1001:
            case 1002:
            case 1003:
            case 1004:
            case 1005:
            case 1006:
            case 1007:
            case 1008:
            case 1009:
            case 1010:
            case 1011:
            case 1012:
            case 1015:
            case 1016:
            case 1017:
            case 1018:
            case 1020:
            case 1021:
            case 1023:
            case 1025:
            case 1026:
            case 1027:
            case 1028:
            case 1029:
            case 1052:
            case 1053:
            case 1054:
            case 1055:
            case 3002:
            case 1060:
            case 1061:
            case 1062:
            case 1063:
            case 1064:
            case 1065:
            case 1067:
            case 1068:
            case 1069:
                return true;
            default:
                return false;
        }
    }

    private static boolean needsPasswordChange(String token) {
        return SessionManager.needsPasswordChange(token);
    }

    private static boolean isShippedDefaultPassword() {
        try {
            MifiConfiguration configuration = MifiConfiguration.getInstance();
            return configuration != null && DEFAULT_PASSWORD.equals(configuration.loginPassword);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String remote(HttpServletRequest request) {
        String remote = request == null ? null : request.getRemoteAddr();
        return remote == null ? "" : remote;
    }

    private static void deny(HttpServletResponse response, int status, String error) {
        try {
            response.setStatus(status);
            response.setContentType("text/json");
            PrintWriter writer = response.getWriter();
            JSONObject body = new JSONObject();
            body.put("flag", "0");
            body.put("error_info", error);
            body.put("results", new org.json.JSONArray());
            writer.println(body.toString());
        } catch (IOException ignored) {
            // The servlet container owns the connection; do not expose request data.
        } catch (Exception ignored) {
            // Keep failure responses bounded and non-sensitive.
        }
    }
}
