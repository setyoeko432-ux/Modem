import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.mifiservice.security.Guard;
import com.mifiservice.security.SessionManager;

public final class GuardFlowTests {
    private static int checks;

    static final class Resp {
        int status = 200;
        final List<String> headers = new ArrayList<String>();
        final StringWriter out = new StringWriter();
        HttpServletResponse proxy;
    }

    static Resp resp() {
        final Resp r = new Resp();
        r.proxy = (HttpServletResponse) Proxy.newProxyInstance(
                GuardFlowTests.class.getClassLoader(), new Class<?>[] {HttpServletResponse.class},
                new InvocationHandler() {
                    public Object invoke(Object p, Method m, Object[] a) {
                        String n = m.getName();
                        if (n.equals("setStatus")) { r.status = ((Integer) a[0]).intValue(); }
                        else if (n.equals("addHeader")) { r.headers.add(a[0] + ": " + a[1]); }
                        else if (n.equals("getWriter")) { return new PrintWriter(r.out, true); }
                        return null;
                    }
                });
        return r;
    }

    static HttpServletRequest req(final String cookie, final String addr, final boolean header) {
        final Map<String, String> h = new HashMap<String, String>();
        h.put("Host", "192.168.100.1");
        if (cookie != null) { h.put("Cookie", cookie); }
        if (header) { h.put("X-Mifi-Req", "1"); }
        return (HttpServletRequest) Proxy.newProxyInstance(
                GuardFlowTests.class.getClassLoader(), new Class<?>[] {HttpServletRequest.class},
                new InvocationHandler() {
                    public Object invoke(Object p, Method m, Object[] a) {
                        String n = m.getName();
                        if (n.equals("getHeader")) { return h.get((String) a[0]); }
                        if (n.equals("getRemoteAddr")) { return addr; }
                        if (n.equals("getContentLength")) { return Integer.valueOf(50); }
                        return null;
                    }
                });
    }

    static JSONObject body(int f, String k, String v) throws Exception {
        JSONObject o = new JSONObject();
        o.put("funcNo", f);
        if (k != null) { o.put(k, v); }
        return o;
    }

    static String cookieFrom(Resp r) {
        for (String h : r.headers) {
            if (h.startsWith("Set-Cookie: mifi_sid=")) {
                return h.substring("Set-Cookie: ".length()).split(";")[0];
            }
        }
        return null;
    }

    public static void main(String[] args) throws Exception {
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000000000L);

        // unauthenticated
        Resp r = resp();
        check(!Guard.authorize(req(null, "a", true), r.proxy, 1060, body(1060, null, null)), "no session denied");
        check(r.status == 401, "401 without session");

        // login (stub config password is not the shipped default -> no forced change)
        JSONObject login = body(1000, "username", "admin");
        login.put("password", "x");
        r = resp();
        HttpServletRequest lr = req(null, "a", false);
        check(Guard.authorize(lr, r.proxy, 1000, login), "login passes guard");
        r = resp();
        Guard.loginSuccess(lr, r.proxy);
        String cookie = cookieFrom(r);
        check(cookie != null, "cookie issued");
        String setCookie = r.headers.get(0);
        check(setCookie.contains("HttpOnly") && setCookie.contains("SameSite=Strict"), "cookie flags");

        // CSRF header required
        r = resp();
        check(!Guard.authorize(req(cookie, "a", false), r.proxy, 1060, body(1060, null, null)), "header required");
        check(r.status == 403, "403 without header");

        // whoami handled by AuthApi
        r = resp();
        check(!Guard.authorize(req(cookie, "a", true), r.proxy, 1060, body(1060, null, null)), "whoami consumed");
        check(r.out.toString().contains("\"flag\":\"1\"") && r.out.toString().contains("sessionId"), "whoami body");
        check(!r.out.toString().contains(cookie.substring("mifi_sid=".length())), "token never echoed");

        // second session, list, revoke
        Resp r2 = resp();
        HttpServletRequest lr2 = req(null, "b", false);
        Guard.authorize(lr2, r2.proxy, 1000, login);
        r2 = resp();
        Guard.loginSuccess(lr2, r2.proxy);
        String cookie2 = cookieFrom(r2);
        r = resp();
        Guard.authorize(req(cookie, "a", true), r.proxy, 1062, body(1062, null, null));
        String list = r.out.toString();
        check(list.split("\"id\"").length == 3, "list shows two sessions");
        String id2 = list.substring(list.indexOf("\"id\":\"") + 6);
        // find the non-current one robustly
        List<String[]> rows = SessionManager.list(cookie.substring("mifi_sid=".length()));
        String other = null;
        for (String[] row : rows) { if ("0".equals(row[4])) { other = row[0]; } }
        r = resp();
        Guard.authorize(req(cookie, "a", true), r.proxy, 1063, body(1063, "id", other));
        check(r.out.toString().contains("\"flag\":\"1\""), "revoke ok");
        r = resp();
        check(!Guard.authorize(req(cookie2, "b", true), r.proxy, 1060, body(1060, null, null)) && r.status == 401,
                "revoked session rejected");
        r = resp();
        Guard.authorize(req(cookie, "a", true), r.proxy, 1063, body(1063, "id", "zzzzzzzzzzzz"));
        check(r.status == 400, "bad id rejected by validator");

        // logout
        r = resp();
        check(!Guard.authorize(req(cookie, "a", true), r.proxy, 1061, body(1061, null, null)), "logout consumed");
        boolean cleared = false;
        for (String h : r.headers) { if (h.contains("Max-Age=0")) { cleared = true; } }
        check(cleared, "cookie cleared");
        r = resp();
        Guard.authorize(req(cookie, "a", true), r.proxy, 1060, body(1060, null, null));
        check(r.status == 401, "session dead after logout");

        // throttle through Guard: 5 failures -> 429 + Retry-After
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000000000L);
        for (int i = 0; i < 5; i++) {
            HttpServletRequest q = req(null, "c", false);
            r = resp();
            Guard.authorize(q, r.proxy, 1000, login);
            Guard.loginFailure(q);
        }
        r = resp();
        check(!Guard.authorize(req(null, "c", false), r.proxy, 1000, login), "login throttled");
        check(r.status == 429, "429");
        boolean retry = false;
        for (String h : r.headers) { if (h.startsWith("Retry-After: 30")) { retry = true; } }
        check(retry, "Retry-After present");

        System.out.println("guard flow tests passed: " + checks);
    }

    private static void check(boolean c, String m) {
        checks++;
        if (!c) { throw new AssertionError(m); }
    }
}
