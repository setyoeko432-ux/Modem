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

    private Guard() {
    }

    public static boolean preflight(HttpServletRequest request, HttpServletResponse response) {
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
            if (!SessionManager.loginAllowed(remote(request))) {
                deny(response, 429, "RATE_LIMITED");
                return false;
            }
            return true;
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
            deny(response, 401, "SESSION_REQUIRED");
            return false;
        }
        if (needsPasswordChange(token) && funcNo != 1020) {
            deny(response, 403, "PASSWORD_CHANGE_REQUIRED");
            return false;
        }
        return true;
    }

    public static void loginSuccess(HttpServletRequest request, HttpServletResponse response) {
        boolean firstRun = isShippedDefaultPassword();
        String token = SessionManager.create(remote(request), firstRun);
        response.addHeader("Set-Cookie", "MIFISID=" + token + "; Path=/; HttpOnly");
    }

    public static void loginFailure(HttpServletRequest request) {
        SessionManager.recordLoginFailure(remote(request));
    }

    public static void passwordChanged(HttpServletRequest request, HttpServletResponse response) {
        String token = SessionManager.cookieToken(request.getHeader("Cookie"));
        SessionManager.passwordChanged(token);
        if (token != null && SessionManager.isValid(token)) {
            response.addHeader("Set-Cookie", "MIFISID=" + token + "; Path=/; HttpOnly");
        }
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
            case 1013:
            case 1015:
            case 1016:
            case 1017:
            case 1018:
            case 1020:
            case 1021:
            case 1023:
            case 1024:
            case 1025:
            case 1026:
            case 1027:
            case 1028:
            case 1029:
            case 1052:
            case 1053:
            case 1054:
            case 1055:
            case 3001:
            case 3002:
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
