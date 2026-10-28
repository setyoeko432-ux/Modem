import java.io.File;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;

import com.mifiservice.config.MifiConfiguration;
import com.mifiservice.security.AuthStore;
import com.mifiservice.security.Guard;
import com.mifiservice.security.Prefs;
import com.mifiservice.security.Recovery;
import com.mifiservice.security.RememberMe;
import com.mifiservice.security.SessionManager;

public final class AuthFlowTests {
    private static int checks;
    private static File store;

    static void reset() throws Exception {
        store = File.createTempFile("mifi_auth", ".json");
        store.delete();
        AuthStore.setFile(store);
        AuthStore.setNowSecondsForTests(Long.valueOf(1000000L));
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000000000L);
        MifiConfiguration cfg = new MifiConfiguration();
        cfg.loginPassword = "OldPassword-Valid1";
        MifiConfiguration.instance = cfg;
    }

    static String fileText() throws Exception {
        return store.isFile() ? new String(Files.readAllBytes(store.toPath()), "UTF-8") : "";
    }

    static JSONObject login(boolean remember, GuardFlowTests.Resp[] out) throws Exception {
        JSONObject b = new JSONObject();
        b.put("funcNo", 1000);
        b.put("username", "admin");
        b.put("password", "OldPassword-Valid1");
        if (remember) { b.put("remember", "1"); }
        HttpServletRequest rq = GuardFlowTests.req(null, "a", false);
        GuardFlowTests.Resp r = GuardFlowTests.resp();
        check(Guard.authorize(rq, r.proxy, 1000, b), "login passes guard");
        r = GuardFlowTests.resp();
        Guard.loginSuccess(rq, r.proxy);
        out[0] = r;
        return b;
    }

    static String cookie(GuardFlowTests.Resp r, String name) {
        for (String h : r.headers) {
            if (h.startsWith("Set-Cookie: " + name + "=")) {
                String v = h.substring(("Set-Cookie: " + name + "=").length()).split(";")[0];
                return v.length() == 0 ? null : v;
            }
        }
        return null;
    }

    static GuardFlowTests.Resp call(String cookies, int f, JSONObject body) throws Exception {
        GuardFlowTests.Resp r = GuardFlowTests.resp();
        Guard.authorize(GuardFlowTests.req(cookies, "a", true), r.proxy, f, body);
        return r;
    }

    public static void main(String[] args) throws Exception {
        testRecoveryStore();
        testRememberStore();
        testPrefsStore();
        testGuardRemember();
        testGuardRecovery();
        testGuardPrefs();
        System.out.println("auth flow tests passed: " + checks);
    }

    static void testRecoveryStore() throws Exception {
        reset();
        check(!Recovery.exists(), "no recovery initially");
        String code = Recovery.generate();
        check(code != null && code.matches("[A-HJ-NP-Z2-9]{5}(-[A-HJ-NP-Z2-9]{5}){3}"), "code format " + code);
        check(Recovery.exists(), "recovery exists");
        String plain = code.replace("-", "");
        check(!fileText().contains(plain) && !fileText().contains(code), "code never stored in clear");
        check(!Recovery.verifyAndConsume("AAAAA-AAAAA-AAAAA-AAAAA"), "wrong code rejected");
        check(!Recovery.verifyAndConsume(null) && !Recovery.verifyAndConsume("short"), "garbage rejected");
        check(Recovery.verifyAndConsume(code.toLowerCase().replace("-", " ")), "lowercase/spaces accepted");
        check(!Recovery.verifyAndConsume(code), "single use");
        String first = Recovery.generate();
        String second = Recovery.generate();
        check(!Recovery.verifyAndConsume(first) && Recovery.verifyAndConsume(second), "regenerate invalidates previous");
        check(!first.equals(second), "codes differ");
    }

    static void testRememberStore() throws Exception {
        reset();
        String c1 = RememberMe.issue();
        check(RememberMe.wellFormed(c1), "cookie shape");
        String validator = c1.substring(17);
        check(!fileText().contains(validator), "validator not stored in clear");
        String c2 = RememberMe.consume(c1);
        check(c2 != null && !c2.equals(c1), "rotated on use");
        check(RememberMe.consume(c1) == null, "old cookie unusable after rotation");
        check(RememberMe.count() == 1, "one live token");
        String stolen = c2.substring(0, 16) + "." + "0123456789abcdef0123456789abcdef";
        check(RememberMe.consume(stolen) == null, "right selector, wrong validator rejected");
        check(RememberMe.consume(c2) == null && RememberMe.count() == 0, "theft signal wipes all tokens");
        reset();
        String c3 = RememberMe.issue();
        AuthStore.setNowSecondsForTests(Long.valueOf(1000000L + RememberMe.LIFETIME_SECONDS + 1));
        check(RememberMe.consume(c3) == null, "expired token rejected");
        reset();
        for (int i = 0; i < 8; i++) { RememberMe.issue(); }
        check(RememberMe.count() == RememberMe.MAX_TOKENS, "token cap");
        check(RememberMe.consume("nonsense") == null && RememberMe.consume(null) == null, "malformed rejected");
        String c4 = RememberMe.issue();
        RememberMe.revoke(c4);
        check(RememberMe.consume(c4) == null, "revoke works");
    }

    static void testPrefsStore() throws Exception {
        reset();
        check(Prefs.validate(new JSONObject("{\"lang\":\"id\",\"theme\":\"dark\",\"refreshSeconds\":5,\"speedUnit\":\"Bps\",\"lastPage\":\"main.html\"}")) == null, "valid prefs");
        check(Prefs.validate(new JSONObject("{\"lang\":\"fr\"}")) != null, "unknown language");
        check(Prefs.validate(new JSONObject("{\"refreshSeconds\":1}")) != null, "refresh too low");
        check(Prefs.validate(new JSONObject("{\"refreshSeconds\":301}")) != null, "refresh too high");
        check(Prefs.validate(new JSONObject("{\"lastPage\":\"../etc/passwd\"}")) != null, "path in lastPage");
        check(Prefs.validate(new JSONObject("{\"lastPage\":\"http://x.html\"}")) != null, "url in lastPage");
        check(Prefs.validate(new JSONObject("{\"evil\":\"1\"}")) != null, "unknown key rejected");
        check(Prefs.validate(new JSONObject("{\"deviceNames\":{\"00:11:22:33:44:55\":\"Laptop\"}}")) == null, "device name ok");
        check(Prefs.validate(new JSONObject("{\"deviceNames\":{\"zz\":\"Laptop\"}}")) != null, "bad mac key");
        check(Prefs.validate(new JSONObject("{\"deviceNames\":{\"00:11:22:33:44:55\":\"<script>\"}}")) != null, "markup in name");
        check(Prefs.validate(null) != null, "null prefs");
        check(Prefs.merge(new JSONObject("{\"lang\":\"zh\",\"refreshSeconds\":\"10\"}")), "merge");
        check(Prefs.merge(new JSONObject("{\"theme\":\"light\"}")), "merge keeps earlier fields");
        JSONObject p = Prefs.get();
        check("zh".equals(p.optString("lang", "")) && "light".equals(p.optString("theme", "")) && p.optInt("refreshSeconds", 0) == 10, "prefs persisted");
        AuthStore.setFile(store); // re-read from disk path
        check("zh".equals(Prefs.get().optString("lang", "")), "prefs survive a re-read");
        store.delete();
        check(Prefs.get().length() == 0, "missing file behaves as empty");
        java.io.FileWriter w = new java.io.FileWriter(store);
        w.write("{not json");
        w.close();
        check(Prefs.get().length() == 0 && !Recovery.exists(), "corrupt file behaves as empty, never throws");
    }

    static void testGuardRemember() throws Exception {
        reset();
        GuardFlowTests.Resp[] o = new GuardFlowTests.Resp[1];
        login(false, o);
        check(cookie(o[0], "mifi_rm") == null, "no remember cookie unless asked");
        String sid = cookie(o[0], "mifi_sid");
        login(true, o);
        String sid2 = cookie(o[0], "mifi_sid");
        String rm = cookie(o[0], "mifi_rm");
        check(rm != null && RememberMe.wellFormed(rm), "remember cookie issued");
        String hdr = null;
        for (String h : o[0].headers) { if (h.contains("mifi_rm=")) { hdr = h; } }
        check(hdr.contains("HttpOnly") && hdr.contains("SameSite=Strict") && hdr.contains("Max-Age=1209600"), "remember cookie flags");

        // browser restarted: session gone, only rm cookie left
        SessionManager.destroyAll();
        GuardFlowTests.Resp r = call("mifi_rm=" + rm, 1060, GuardFlowTests.body(1060, null, null));
        check(r.status == 200 && r.out.toString().contains("sessionId"), "whoami resumes from remember cookie");
        String newSid = cookie(r, "mifi_sid");
        String newRm = cookie(r, "mifi_rm");
        check(newSid != null && newRm != null && !newRm.equals(rm), "new session and rotated remember cookie");
        check(call("mifi_rm=" + rm, 1060, GuardFlowTests.body(1060, null, null)).status == 401, "replayed old cookie rejected");
        check(call("mifi_sid=" + newSid, 1060, GuardFlowTests.body(1060, null, null)).status == 200, "resumed session valid");
        check(call("mifi_rm=" + newRm, 1062, GuardFlowTests.body(1062, null, null)).status == 401,
                "remember cookie alone does not authorise other APIs");

        // logout revokes and clears
        r = call("mifi_sid=" + newSid + "; mifi_rm=" + newRm, 1061, GuardFlowTests.body(1061, null, null));
        check(cookie(r, "mifi_rm") == null && r.headers.toString().contains("mifi_rm=; Path=/; HttpOnly; Max-Age=0"), "logout clears remember cookie");
        check(call("mifi_rm=" + newRm, 1060, GuardFlowTests.body(1060, null, null)).status == 401, "revoked remember cookie dead");

        // password change wipes remember tokens
        login(true, o);
        RememberMe.issue();
        HttpServletRequest rq = GuardFlowTests.req("mifi_sid=" + cookie(o[0], "mifi_sid"), "a", true);
        Guard.passwordChanged(rq, GuardFlowTests.resp().proxy);
        check(RememberMe.count() == 0, "password change wipes remember tokens");
    }

    static void testGuardRecovery() throws Exception {
        reset();
        GuardFlowTests.Resp[] o = new GuardFlowTests.Resp[1];
        login(false, o);
        String sid = "mifi_sid=" + cookie(o[0], "mifi_sid");

        JSONObject bad = GuardFlowTests.body(1067, "password", "wrong-password");
        GuardFlowTests.Resp r = call(sid, 1067, bad);
        check(r.status == 400 && r.out.toString().contains("INVALID_INPUT:password"), "wrong password cannot mint a code");
        check(!Recovery.exists(), "nothing created on wrong password");
        r = call(null, 1067, GuardFlowTests.body(1067, "password", "OldPassword-Valid1"));
        check(r.status == 401, "no session cannot mint a code");
        r = call(sid, 1067, GuardFlowTests.body(1067, "password", "OldPassword-Valid1"));
        String out = r.out.toString();
        check(r.status == 200 && out.contains("recoveryCode"), "code minted with correct password");
        String code = out.substring(out.indexOf("recoveryCode\":\"") + 15, out.indexOf("recoveryCode\":\"") + 15 + 23);

        // policy failure must not burn the code
        JSONObject rec = GuardFlowTests.body(1066, "code", code);
        rec.put("newpwd", "short");
        r = call(null, 1066, rec);
        check(r.status == 400 && Recovery.exists(), "weak new password rejected, code intact");
        // wrong code
        rec.put("newpwd", "BrandNew-Passw0rd");
        rec.put("code", "AAAAA-AAAAA-AAAAA-AAAAA");
        r = call(null, 1066, rec);
        check(r.out.toString().contains("RECOVERY_FAILED") && MifiConfiguration.instance.loginPassword.equals("OldPassword-Valid1"), "wrong code changes nothing");
        // correct code, no session needed
        rec.put("code", code);
        r = call(null, 1066, rec);
        check(r.status == 200 && r.out.toString().contains("\"flag\":\"1\""), "recovery succeeds without a session");
        check("BrandNew-Passw0rd".equals(MifiConfiguration.instance.loginPassword), "password replaced");
        check(MifiConfiguration.instance.saves == 1, "saveToFile called once");
        check(call(sid, 1060, GuardFlowTests.body(1060, null, null)).status == 401, "all sessions killed after recovery");
        check(!Recovery.exists(), "code consumed");
        // throttle: only attempts that reach code verification count (validator rejects are free);
        // after the free allowance the endpoint must answer 429 with a Retry-After hint.
        int tries = 0;
        while (r.status != 429 && tries < 10) {
            r = call(null, 1066, rec);
            tries++;
        }
        check(r.status == 429 && tries <= 5, "recover endpoint throttled after " + tries + " more attempts");
        boolean retry = false;
        for (String h : r.headers) { if (h.startsWith("Retry-After: ")) { retry = true; } }
        check(retry, "Retry-After on recover throttle");

        // sanity: code in a request body never echoed
        check(!r.out.toString().contains(code), "code not echoed");
    }

    static void testGuardPrefs() throws Exception {
        reset();
        GuardFlowTests.Resp[] o = new GuardFlowTests.Resp[1];
        login(false, o);
        String sid = "mifi_sid=" + cookie(o[0], "mifi_sid");
        JSONObject set = GuardFlowTests.body(1065, null, null);
        set.put("prefs", new JSONObject("{\"lang\":\"id\",\"theme\":\"dark\"}"));
        check(call(sid, 1065, set).status == 200, "set prefs");
        GuardFlowTests.Resp r = call(sid, 1064, GuardFlowTests.body(1064, null, null));
        check(r.out.toString().contains("\"lang\":\"id\"") && r.out.toString().contains("recoveryConfigured"), "get prefs");
        set.put("prefs", new JSONObject("{\"lang\":\"xx\"}"));
        check(call(sid, 1065, set).status == 400, "invalid pref rejected with 400");
        check(call(null, 1064, GuardFlowTests.body(1064, null, null)).status == 401, "prefs need a session");
        JSONObject noPrefs = GuardFlowTests.body(1065, null, null);
        check(call(sid, 1065, noPrefs).status == 400, "missing prefs object rejected");
    }

    private static void check(boolean c, String m) {
        checks++;
        if (!c) { throw new AssertionError(m); }
    }
}
