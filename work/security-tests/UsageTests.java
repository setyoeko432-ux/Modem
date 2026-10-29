import java.io.File;
import java.util.BitSet;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;

import com.mifiservice.config.MifiConfiguration;
import com.mifiservice.device.WifiApController;
import com.mifiservice.security.Guard;
import com.mifiservice.security.Prefs;
import com.mifiservice.security.SessionManager;
import com.mifiservice.security.UsageTracker;

import android.net.TrafficStats;
import android.net.wifi.WifiConfiguration;

public final class UsageTests {
    private static int checks;
    private static final long DAY = 86400L;
    private static final long T0 = 1798761600L; // 2027-01-01 00:00:00 UTC, a valid clock

    static File fresh() throws Exception {
        File f = File.createTempFile("mifi_usage", ".json");
        f.delete();
        UsageTracker.setFileForTests(f);
        return f;
    }

    static long totalKb(JSONObject snap, String field) {
        JSONArray days = (JSONArray) snap.opt("days");
        long sum = 0;
        for (int i = 0; i < days.length(); i++) {
            sum += days.optJSONObject(i).optLong(field, 0L);
        }
        return sum;
    }

    public static void main(String[] args) throws Exception {
        testTracker();
        testWifiShare();
        testPrefs();
        testGuard();
        System.out.println("usage/share tests passed: " + checks);
    }

    static void testTracker() throws Exception {
        fresh();
        UsageTracker.sample(5000000L, 1000000L, T0);                      // baseline only
        check(totalKb(UsageTracker.snapshot(), "rx") == 0, "first reading is a baseline, no invented history");
        UsageTracker.sample(5000000L + 10 * 1024 * 1024L, 1000000L + 2 * 1024 * 1024L, T0 + 60);
        JSONObject s = UsageTracker.snapshot();
        check(totalKb(s, "rx") == 10 * 1024 && totalKb(s, "tx") == 2 * 1024, "delta counted in KB");
        check(((JSONArray) s.opt("days")).length() == 1, "one day bucket");
        // next day
        UsageTracker.sample(5000000L + 12 * 1024 * 1024L, 1000000L + 3 * 1024 * 1024L, T0 + DAY + 60);
        s = UsageTracker.snapshot();
        check(((JSONArray) s.opt("days")).length() == 2, "second day bucket");
        // counters restart (reboot): lower reading counted in full
        UsageTracker.sample(3 * 1024 * 1024L, 1024 * 1024L, T0 + DAY + 120);
        s = UsageTracker.snapshot();
        check(totalKb(s, "rx") == 12 * 1024 + 3 * 1024, "reset counted in full: " + totalKb(s, "rx"));
        // unchanged reading adds nothing
        long before = totalKb(UsageTracker.snapshot(), "rx");
        UsageTracker.sample(3 * 1024 * 1024L, 1024 * 1024L, T0 + DAY + 180);
        check(totalKb(UsageTracker.snapshot(), "rx") == before, "no traffic, no change");

        // unset clock goes to undated, never to a wrong day
        fresh();
        UsageTracker.sample(1000L, 1000L, 100L);
        UsageTracker.sample(1000L + 5 * 1024 * 1024L, 1000L, 160L);
        s = UsageTracker.snapshot();
        check(((JSONArray) s.opt("days")).length() == 0 && s.optLong("undatedKB", 0L) == 5 * 1024, "undated bucket while clock is unset");

        // pruning to 62 days
        fresh();
        UsageTracker.sample(0L, 0L, T0);
        for (int i = 1; i <= 80; i++) {
            UsageTracker.sample(i * 1024L * 1024L, 0L, T0 + i * DAY);
        }
        check(((JSONArray) UsageTracker.snapshot().opt("days")).length() == UsageTrackerLimit.KEEP, "kept only the last 62 days");

        // survives a restart (flush + reload)
        File f = fresh();
        UsageTracker.sample(0L, 0L, T0);
        UsageTracker.sample(7 * 1024 * 1024L, 0L, T0 + 10);
        UsageTracker.flush();
        UsageTracker.setFileForTests(f);                                  // drops the in-memory copy
        check(totalKb(UsageTracker.snapshot(), "rx") == 7 * 1024, "usage survives restart");
        // a restart does not double count: same reading again adds nothing
        UsageTracker.sample(7 * 1024 * 1024L, 0L, T0 + 20);
        check(totalKb(UsageTracker.snapshot(), "rx") == 7 * 1024, "no double count after restart");

        // corrupt file behaves as empty, never throws
        File bad = fresh();
        java.io.FileWriter w = new java.io.FileWriter(bad);
        w.write("{oops");
        w.close();
        UsageTracker.setFileForTests(bad);
        check(totalKb(UsageTracker.snapshot(), "rx") == 0, "corrupt usage file treated as empty");
    }

    static void testWifiShare() throws Exception {
        WifiConfiguration c = new WifiConfiguration();
        c.SSID = "\"My Hotspot\"";
        c.preSharedKey = "\"s3cret-Key\"";
        c.allowedKeyManagement = new BitSet();
        c.allowedKeyManagement.set(WifiConfiguration.KeyMgmt.WPA_PSK);
        WifiApController.configuration = c;
        String[] r = com.mifiservice.security.WifiShare.read();
        check(r != null && "My Hotspot".equals(r[0]) && "WPA".equals(r[1]) && "s3cret-Key".equals(r[2]), "ssid/key unquoted");
        c.preSharedKey = "plainkey123";
        check("plainkey123".equals(com.mifiservice.security.WifiShare.read()[2]), "unquoted key as-is");
        c.preSharedKey = null;
        r = com.mifiservice.security.WifiShare.read();
        check("nopass".equals(r[1]) && r[2].length() == 0, "open network");
        WifiApController.configuration = null;
        check(com.mifiservice.security.WifiShare.read() == null, "no configuration -> null");
    }

    static void testPrefs() throws Exception {
        check(Prefs.validate(new JSONObject("{\"seedColor\":\"#0D9488\",\"dataLimitMB\":20480,\"resetDay\":5}")) == null, "new prefs accepted");
        check(Prefs.validate(new JSONObject("{\"seedColor\":\"red\"}")) != null, "named color rejected");
        check(Prefs.validate(new JSONObject("{\"seedColor\":\"#GG0000\"}")) != null, "non-hex rejected");
        check(Prefs.validate(new JSONObject("{\"seedColor\":\"#12345678\"}")) != null, "wrong length rejected");
        check(Prefs.validate(new JSONObject("{\"dataLimitMB\":-1}")) != null, "negative limit rejected");
        check(Prefs.validate(new JSONObject("{\"resetDay\":29}")) != null, "reset day 29 rejected");
        check(Prefs.validate(new JSONObject("{\"resetDay\":0}")) != null, "reset day 0 rejected");
    }

    static void testGuard() throws Exception {
        AuthFlowTests.reset();
        UsageTracker.setFileForTests(fresh());
        UsageTracker.sample(0L, 0L, T0);
        UsageTracker.sample(2 * 1024 * 1024L, 1024 * 1024L, T0 + 5);
        WifiConfiguration c = new WifiConfiguration();
        c.SSID = "\"Home\"";
        c.preSharedKey = "\"hunter2hunter2\"";
        WifiApController.configuration = c;

        GuardFlowTests.Resp[] o = new GuardFlowTests.Resp[1];
        AuthFlowTests.login(false, o);
        String sid = "mifi_sid=" + AuthFlowTests.cookie(o[0], "mifi_sid");

        check(AuthFlowTests.call(null, 1068, GuardFlowTests.body(1068, null, null)).status == 401, "usage needs a session");
        GuardFlowTests.Resp r = AuthFlowTests.call(sid, 1068, GuardFlowTests.body(1068, null, null));
        check(r.status == 200 && r.out.toString().contains("\"days\""), "usage returned");

        check(AuthFlowTests.call(null, 1069, GuardFlowTests.body(1069, "password", "OldPassword-Valid1")).status == 401, "share needs a session");
        r = AuthFlowTests.call(sid, 1069, GuardFlowTests.body(1069, "password", "wrong"));
        check(r.status == 400 && !r.out.toString().contains("hunter2"), "wrong password gets no key");
        r = AuthFlowTests.call(sid, 1069, GuardFlowTests.body(1069, "password", "OldPassword-Valid1"));
        String out = r.out.toString();
        check(r.status == 200 && out.contains("hunter2hunter2") && out.contains("\"ssid\":\"Home\""), "key returned after re-auth");
        boolean noStore = false;
        for (String h : r.headers) { if (h.equals("Cache-Control: no-store")) { noStore = true; } }
        check(noStore, "key response is no-store");
        // the key must not appear in any other API answer
        for (int f : new int[] {1060, 1062, 1064, 1068}) {
            check(!AuthFlowTests.call(sid, f, GuardFlowTests.body(f, null, null)).out.toString().contains("hunter2"), "key absent from " + f);
        }
        // repeated wrong re-auth is throttled
        AuthFlowTests.reset();
        AuthFlowTests.login(false, o);
        sid = "mifi_sid=" + AuthFlowTests.cookie(o[0], "mifi_sid");
        int tries = 0;
        r = GuardFlowTests.resp();
        while (r.status != 429 && tries < 12) {
            r = AuthFlowTests.call(sid, 1069, GuardFlowTests.body(1069, "password", "nope" + tries));
            tries++;
        }
        check(r.status == 429 && tries <= 6, "re-auth guessing throttled after " + tries);
    }

    private static void check(boolean c, String m) {
        checks++;
        if (!c) { throw new AssertionError(m); }
    }

    /** UsageTracker.KEEP_DAYS is package-private; the contract is 62. */
    static final class UsageTrackerLimit { static final int KEEP = 62; }
}
