package com.mifiservice.security;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

/** Session endpoints added by this project (not part of stock firmware): 1060-1063. */
public final class AuthApi {
    public static final int WHOAMI = 1060;
    public static final int LOGOUT = 1061;
    public static final int LIST = 1062;
    public static final int REVOKE = 1063;
    public static final int GET_PREFS = 1064;
    public static final int SET_PREFS = 1065;
    public static final int RECOVER = 1066;
    public static final int NEW_RECOVERY_CODE = 1067;
    public static final int USAGE = 1068;
    public static final int WIFI_SHARE = 1069;

    private AuthApi() {
    }

    public static boolean owns(int funcNo) {
        return funcNo >= WHOAMI && funcNo <= WIFI_SHARE;
    }

    /** Writes the full response. Caller has already authenticated the request. */
    public static void handle(int funcNo, HttpServletRequest request, HttpServletResponse response,
            JSONObject body) {
        handle(funcNo, request, response, body, SessionManager.cookieToken(request.getHeader("Cookie")));
    }

    /** Same, with an explicit session token (used right after a remember-me resume). */
    public static void handle(int funcNo, HttpServletRequest request, HttpServletResponse response,
            JSONObject body, String token) {
        try {
            JSONArray results = new JSONArray();
            String error = "";
            String flag = "1";
            switch (funcNo) {
                case WHOAMI: {
                    JSONObject me = new JSONObject();
                    me.put("sessionId", SessionManager.publicId(token));
                    me.put("needsPasswordChange",
                            SessionManager.needsPasswordChange(token) ? "1" : "0");
                    results.put(me);
                    break;
                }
                case LOGOUT:
                    Guard.logout(request, response);
                    break;
                case LIST: {
                    List<String[]> rows = SessionManager.list(token);
                    for (int i = 0; i < rows.size(); i++) {
                        String[] row = rows.get(i);
                        JSONObject item = new JSONObject();
                        item.put("id", row[0]);
                        item.put("address", row[1]);
                        item.put("ageSeconds", row[2]);
                        item.put("idleSeconds", row[3]);
                        item.put("current", row[4]);
                        results.put(item);
                    }
                    break;
                }
                case REVOKE:
                    if (!SessionManager.revoke(body.optString("id", ""), token)) {
                        flag = "0";
                        error = "NOT_FOUND";
                    }
                    break;
                case GET_PREFS: {
                    JSONObject wrapper = new JSONObject();
                    wrapper.put("prefs", Prefs.get());
                    wrapper.put("recoveryConfigured", Recovery.exists() ? "1" : "0");
                    results.put(wrapper);
                    break;
                }
                case SET_PREFS:
                    if (!Prefs.merge(body.optJSONObject("prefs"))) {
                        flag = "0";
                        error = "STORAGE";
                    }
                    break;
                case RECOVER: {
                    String reason = recover(body);
                    if (reason != null) {
                        flag = "0";
                        error = reason;
                    }
                    break;
                }
                case NEW_RECOVERY_CODE: {
                    String user = "admin";
                    if (!SessionManager.loginAllowed(request.getRemoteAddr(), user)) {
                        response.addHeader("Retry-After", String.valueOf(
                                SessionManager.retryAfterSeconds(request.getRemoteAddr(), user)));
                        writeStatus(response, 429, "RATE_LIMITED");
                        return;
                    }
                    if (!currentPasswordMatches(body.optString("password", ""))) {
                        SessionManager.recordLoginFailure(request.getRemoteAddr(), user);
                        flag = "0";
                        error = "INVALID_INPUT:password";
                        break;
                    }
                    String code = Recovery.generate();
                    if (code == null) {
                        flag = "0";
                        error = "STORAGE";
                    } else {
                        JSONObject item = new JSONObject();
                        item.put("recoveryCode", code); // shown once; only a salted hash is kept
                        results.put(item);
                    }
                    break;
                }
                case USAGE:
                    results.put(UsageTracker.snapshot());
                    break;
                case WIFI_SHARE: {
                    String user = "admin";
                    if (!SessionManager.loginAllowed(request.getRemoteAddr(), user)) {
                        response.addHeader("Retry-After", String.valueOf(
                                SessionManager.retryAfterSeconds(request.getRemoteAddr(), user)));
                        writeStatus(response, 429, "RATE_LIMITED");
                        return;
                    }
                    if (!currentPasswordMatches(body.optString("password", ""))) {
                        SessionManager.recordLoginFailure(request.getRemoteAddr(), user);
                        flag = "0";
                        error = "INVALID_INPUT:password";
                        break;
                    }
                    String[] wifi = WifiShare.read();
                    if (wifi == null) {
                        flag = "0";
                        error = "UNAVAILABLE";
                        break;
                    }
                    JSONObject item = new JSONObject();
                    item.put("ssid", wifi[0]);
                    item.put("security", wifi[1]);
                    item.put("wifiKey", wifi[2]);
                    results.put(item);
                    response.addHeader("Cache-Control", "no-store");
                    response.addHeader("Pragma", "no-cache");
                    break;
                }
                default:
                    flag = "0";
                    error = "FORBIDDEN";
                    break;
            }
            JSONObject out = new JSONObject();
            out.put("flag", flag);
            out.put("error_info", error);
            out.put("results", results);
            response.setStatus("1".equals(flag) ? 200 : (error.equals("NOT_FOUND") ? 404 : 400));
            response.setContentType("text/json");
            PrintWriter writer = response.getWriter();
            writer.println(out.toString());
        } catch (IOException ignored) {
            // Connection is owned by the container.
        } catch (Exception ignored) {
            // Never echo request data on failure.
        }
    }

    /** Password reset without a session. @return null on success, otherwise an error_info string. */
    private static String recover(JSONObject body) {
        com.mifiservice.config.MifiConfiguration cfg = com.mifiservice.config.MifiConfiguration.getInstance();
        if (cfg == null) {
            return "STORAGE";
        }
        String newPassword = body.optString("newpwd", "");
        String policy = PasswordPolicy.check(newPassword, cfg.loginPassword);
        if (policy != null) {
            return "INVALID_INPUT:" + policy;
        }
        if (!Recovery.verifyAndConsume(body.optString("code", ""))) {
            return "RECOVERY_FAILED";
        }
        cfg.loginPassword = newPassword;
        cfg.saveToFile();
        SessionManager.destroyAll();
        RememberMe.wipeAll();
        return null;
    }

    static boolean currentPasswordMatches(String candidate) {
        com.mifiservice.config.MifiConfiguration cfg = com.mifiservice.config.MifiConfiguration.getInstance();
        return cfg != null && cfg.loginPassword != null
                && Crypto.constantTimeEquals(cfg.loginPassword, candidate);
    }

    static void writeStatus(HttpServletResponse response, int status, String error) {
        try {
            response.setStatus(status);
            response.setContentType("text/json");
            JSONObject out = new JSONObject();
            out.put("flag", "0");
            out.put("error_info", error);
            out.put("results", new JSONArray());
            response.getWriter().println(out.toString());
        } catch (Exception ignored) {
            // bounded, non-sensitive failure
        }
    }
}
