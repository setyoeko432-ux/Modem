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

    private AuthApi() {
    }

    public static boolean owns(int funcNo) {
        return funcNo >= WHOAMI && funcNo <= REVOKE;
    }

    /** Writes the full response. Caller has already authenticated the request. */
    public static void handle(int funcNo, HttpServletRequest request, HttpServletResponse response,
            JSONObject body) {
        String token = SessionManager.cookieToken(request.getHeader("Cookie"));
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
                default:
                    flag = "0";
                    error = "FORBIDDEN";
                    break;
            }
            JSONObject out = new JSONObject();
            out.put("flag", flag);
            out.put("error_info", error);
            out.put("results", results);
            response.setStatus("1".equals(flag) ? 200 : 404);
            response.setContentType("text/json");
            PrintWriter writer = response.getWriter();
            writer.println(out.toString());
        } catch (IOException ignored) {
            // Connection is owned by the container.
        } catch (Exception ignored) {
            // Never echo request data on failure.
        }
    }
}
