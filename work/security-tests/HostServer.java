import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.mifiservice.config.MifiConfiguration;
import com.mifiservice.security.Guard;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

/**
 * Host-only harness: the REAL Guard/SessionManager/Validator/Redactor classes in front of the REAL
 * frontend assets, with a fake business layer. It is a test double for AjaxSevlet.doPost, NOT the device.
 * usage: HostServer <assetsDir> <port> [startingPassword]
 */
public final class HostServer {
    public static void main(String[] args) throws Exception {
        final File root = new File(args[0]);
        int port = Integer.parseInt(args[1]);
        File authFile = File.createTempFile("host_auth", ".json");
        authFile.delete();
        com.mifiservice.security.AuthStore.setFile(authFile);
        File usageFile = File.createTempFile("host_usage", ".json");
        usageFile.delete();
        com.mifiservice.security.UsageTracker.setFileForTests(usageFile);
        android.net.wifi.WifiConfiguration wifi = new android.net.wifi.WifiConfiguration();
        wifi.SSID = "\"UZ801-TEST\"";
        wifi.preSharedKey = "\"host-wifi-key-1234\"";
        com.mifiservice.device.WifiApController.configuration = wifi;
        MifiConfiguration cfg = new MifiConfiguration();
        cfg.loginPassword = args.length > 2 ? args[2] : "admin";
        MifiConfiguration.instance = cfg;

        HttpServer server = HttpServer.create(new InetSocketAddress("127.0.0.1", port), 0);
        server.createContext("/", new HttpHandler() {
            public void handle(HttpExchange ex) throws java.io.IOException {
                try {
                    route(ex, root);
                } catch (Throwable t) {
                    t.printStackTrace();
                    ex.sendResponseHeaders(500, -1);
                } finally {
                    ex.close();
                }
            }
        });
        server.start();
        System.out.println("READY " + port);
    }

    static void route(HttpExchange ex, File root) throws Exception {
        String path = ex.getRequestURI().getPath();
        if (path.equals("/__test/seed-usage")) {            // harness only: fabricate 30 days of history
            long now = System.currentTimeMillis() / 1000L, base = 1000000000L;
            com.mifiservice.security.UsageTracker.sample(base, base / 4, now - 31 * 86400L);
            for (int i = 30; i >= 0; i--) {
                base += (200L + (i * 37L) % 900L) * 1024L * 1024L;
                com.mifiservice.security.UsageTracker.sample(base, base / 4, now - i * 86400L);
            }
            ex.sendResponseHeaders(204, -1);
            return;
        }
        if (path.equals("/ajax") && ex.getRequestMethod().equals("POST")) {
            ajax(ex);
            return;
        }
        if (path.equals("/")) {
            path = "/index.html";
        }
        File f = new File(root, path).getCanonicalFile();
        if (!f.getPath().startsWith(root.getCanonicalPath()) || !f.isFile()) {
            ex.sendResponseHeaders(404, -1);
            return;
        }
        String type = path.endsWith(".html") ? "text/html" : path.endsWith(".js") ? "application/javascript"
                : path.endsWith(".css") ? "text/css" : path.endsWith(".png") ? "image/png" : "application/octet-stream";
        byte[] data = Files.readAllBytes(f.toPath());
        ex.getResponseHeaders().add("Content-Type", type);
        ex.sendResponseHeaders(200, data.length);
        OutputStream o = ex.getResponseBody();
        o.write(data);
    }

    static synchronized void ajax(final HttpExchange ex) throws Exception {
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        InputStream in = ex.getRequestBody();
        byte[] chunk = new byte[4096];
        int n;
        while ((n = in.read(chunk)) > 0) {
            buf.write(chunk, 0, n);
        }
        final String bodyText = new String(buf.toByteArray(), "UTF-8");
        final int length = buf.size();

        HttpServletRequest req = (HttpServletRequest) Proxy.newProxyInstance(
                HostServer.class.getClassLoader(), new Class<?>[] {HttpServletRequest.class},
                new InvocationHandler() {
                    public Object invoke(Object p, Method m, Object[] a) {
                        String name = m.getName();
                        if (name.equals("getHeader")) { return ex.getRequestHeaders().getFirst((String) a[0]); }
                        if (name.equals("getContentType")) { return ex.getRequestHeaders().getFirst("Content-Type"); }
                        if (name.equals("getContentLength")) { return Integer.valueOf(length); }
                        if (name.equals("getRemoteAddr")) { return ex.getRemoteAddress().getAddress().getHostAddress(); }
                        return null;
                    }
                });
        final StringWriter out = new StringWriter();
        final int[] status = {200};
        final List<String[]> headers = new ArrayList<String[]>();
        HttpServletResponse resp = (HttpServletResponse) Proxy.newProxyInstance(
                HostServer.class.getClassLoader(), new Class<?>[] {HttpServletResponse.class},
                new InvocationHandler() {
                    public Object invoke(Object p, Method m, Object[] a) {
                        String name = m.getName();
                        if (name.equals("setStatus")) { status[0] = ((Integer) a[0]).intValue(); }
                        else if (name.equals("addHeader")) { headers.add(new String[] {(String) a[0], (String) a[1]}); }
                        else if (name.equals("getWriter")) { return new PrintWriter(out, true); }
                        return null;
                    }
                });

        // Mirrors AjaxSevlet.doPost ordering: preflight -> parse -> authorize -> business -> redact.
        if (Guard.preflight(req, resp)) {
            JSONObject body = null;
            try {
                body = new JSONObject(bodyText);
            } catch (Exception e) {
                Guard.badRequest(resp);
            }
            if (body != null) {
                int funcNo = -1;
                try { funcNo = body.getInt("funcNo"); } catch (Exception e) { Guard.badRequest(resp); }
                if (funcNo >= 0 && Guard.authorize(req, resp, funcNo, body)) {
                    business(funcNo, body, req, resp, out);
                }
            }
        }
        for (String[] h : headers) {
            ex.getResponseHeaders().add(h[0], h[1]);
        }
        ex.getResponseHeaders().set("Content-Type", "text/json");
        byte[] data = out.toString().getBytes("UTF-8");
        ex.sendResponseHeaders(status[0], data.length);
        ex.getResponseBody().write(data);
    }

    static void business(int funcNo, JSONObject body, HttpServletRequest req, HttpServletResponse resp,
            StringWriter out) throws Exception {
        MifiConfiguration cfg = MifiConfiguration.getInstance();
        JSONObject res = new JSONObject();
        JSONArray results = new JSONArray();
        String flag = "1";
        String error = "";
        if (funcNo == 1000) {
            boolean ok = "admin".equals(body.optString("username", ""))
                    && cfg.loginPassword.equals(body.optString("password", ""));
            if (ok) {
                Guard.loginSuccess(req, resp);
                JSONObject r = new JSONObject();
                r.put("conn_mode", "0");
                r.put("net_mode", "0");
                r.put("imei", "123456789012345");
                r.put("fwversion", "host-harness");
                results.put(r);
            } else {
                Guard.loginFailure(req);
                flag = "0";
                error = "LOGIN_FAILED";
            }
        } else if (funcNo == 1020) {
            if (!cfg.loginPassword.equals(body.optString("oldpwd", ""))) {
                flag = "0";
                error = "INVALID_INPUT:oldpwd";
            } else {
                cfg.loginPassword = body.optString("newpwd", "");
                Guard.passwordChanged(req, resp);
            }
        } else if (funcNo == 1001) {
            // signal / operator / netstatus
            JSONObject r = new JSONObject();
            r.put("rssi",      "4");
            r.put("netmode",   "4G LTE");
            r.put("netstatus", "Connected");
            r.put("oper",      "Test Carrier");
            results.put(r);
        } else if (funcNo == 1002) {
            // IP / DNS / SSID / WLAN
            JSONObject r = new JSONObject();
            r.put("IP",      "192.168.100.1");
            r.put("mask",    "255.255.255.0");
            r.put("dns1",    "8.8.8.8");
            r.put("dns2",    "8.8.4.4");
            r.put("ssid",    "UZ801-TEST");
            r.put("wlan_ip", "192.168.100.1");
            results.put(r);
        } else if (funcNo == 1003) {
            // traffic counters (grow each call to exercise speed calc)
            JSONObject r = new JSONObject();
            long now = System.currentTimeMillis() / 1000L;
            r.put("up_bytes",   String.valueOf(now % 100000));
            r.put("down_bytes", String.valueOf(now % 200000 + 5000));
            r.put("client_num", "2");
            r.put("maxSta",     "10");
            results.put(r);
        } else if (funcNo == 1011) {
            // connected device list
            JSONObject r = new JSONObject();
            JSONArray devArr = new JSONArray();
            JSONObject d1 = new JSONObject();
            d1.put("name",  "Android-Phone");
            d1.put("ip",    "192.168.100.101");
            d1.put("mac",   "AA:BB:CC:DD:EE:FF");
            d1.put("media", "Wireless");
            devArr.put(d1);
            JSONObject d2 = new JSONObject();
            d2.put("name",  "Laptop");
            d2.put("ip",    "192.168.100.102");
            d2.put("mac",   "11:22:33:44:55:66");
            d2.put("media", "Wireless");
            devArr.put(d2);
            r.put("device_arr", devArr);
            results.put(r);
        } else if (funcNo == 1015) {
            // SIM information
            JSONObject r = new JSONObject();
            r.put("sim_status", "SIM_READY");
            r.put("imsi",       "510100123456789");
            r.put("iccid",      "89620110000123456789");
            results.put(r);
        } else if (funcNo == 1069) {
            // Wi-Fi share (re-auth) — verify admin password
            if (!cfg.loginPassword.equals(body.optString("password", ""))) {
                flag = "0";
                error = "INVALID_INPUT:password";
            } else {
                JSONObject r = new JSONObject();
                r.put("ssid", "UZ801-TEST");
                r.put("key",  "host-wifi-key-1234");
                r.put("enc",  "WPA");
                results.put(r);
            }
        } else if (funcNo != 1060 && funcNo != 1061 && funcNo != 1062 && funcNo != 1063) {
            results.put(new JSONObject()); // generic empty row for other APIs
        }
        res.put("flag", flag);
        res.put("error_info", error);
        res.put("results", results);
        Guard.redact(res);
        out.write(res.toString() + "\n");
    }
}
