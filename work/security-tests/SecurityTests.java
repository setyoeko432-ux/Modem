import com.mifiservice.security.Redactor;
import com.mifiservice.security.SessionManager;
import com.mifiservice.security.Validator;

import org.json.JSONArray;
import org.json.JSONObject;

public final class SecurityTests {
    private static int checks;

    public static void main(String[] args) throws Exception {
        testSessions();
        testRateLimit();
        testValidation();
        testRedaction();
        System.out.println("security tests passed: " + checks);
    }

    private static void testSessions() {
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000000000L);
        String token = SessionManager.create("192.168.100.10", true);
        check(token.length() == 32, "session token length");
        check(SessionManager.isValid(token), "session valid");
        check(SessionManager.needsPasswordChange(token), "first-run marker");
        SessionManager.advanceNanosForTests(15L * 60L * 1000000000L + 1L);
        check(!SessionManager.isValid(token), "idle timeout");

        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000000000L);
        String first = SessionManager.create("a", false);
        String second = SessionManager.create("b", false);
        SessionManager.passwordChanged(first);
        check(SessionManager.isValid(first), "current session retained after password change");
        check(!SessionManager.isValid(second), "other sessions invalidated after password change");
    }

    private static void testRateLimit() {
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000000000L);
        String remote = "192.168.100.11";
        for (int i = 0; i < 5; i++) {
            check(SessionManager.loginAllowed(remote), "login allowed before failure " + i);
            SessionManager.recordLoginFailure(remote);
        }
        check(!SessionManager.loginAllowed(remote), "login cooldown after fifth failure");
        SessionManager.advanceNanosForTests(60L * 1000000000L + 1L);
        check(SessionManager.loginAllowed(remote), "login allowed after cooldown");
    }

    private static void testValidation() throws Exception {
        JSONObject login = new JSONObject();
        login.put("funcNo", 1000);
        login.put("username", "fake-user");
        login.put("password", "SENTINEL_PW_123");
        check(Validator.validate(1000, login) == null, "login fixture accepted");

        JSONObject modifyPwd = new JSONObject();
        modifyPwd.put("funcNo", 1020);
        modifyPwd.put("oldpwd", "admin");
        modifyPwd.put("newpwd", "NewPass123456");
        String resMod = Validator.validate(1020, modifyPwd);
        if (resMod != null) {
            System.err.println("DEBUG: 1020 returned error field: " + resMod);
        }
        check(resMod == null, "5-char default oldpwd accepted");

        JSONObject badDns = new JSONObject();
        badDns.put("funcNo", 1012);
        badDns.put("dns1", "192.168.100.1;reboot");
        badDns.put("dns2", "8.8.8.8");
        check(Validator.validate(1012, badDns) != null, "command delimiter rejected");

        JSONObject range = new JSONObject();
        range.put("funcNo", 1026);
        range.put("range_low", "192.168.100.200");
        range.put("range_high", "192.168.100.100");
        check(Validator.validate(1026, range) != null, "reversed DHCP range rejected");
        check(Validator.isIPv4("192.168.100.1"), "valid IPv4");
        check(!Validator.isIPv4("192.168.100.999"), "invalid IPv4");
        check(Validator.isMac("00:11:22:33:44:55"), "valid MAC");
        check(!Validator.isMac("00:11:22:33:44"), "invalid MAC");
        check(Validator.isAllowedHost("192.168.100.1:80"), "literal host accepted");
        check(!Validator.isAllowedHost("evil.example"), "hostname rejected");
        check(!Validator.sameHost("192.168.100.1:80", "http://evil.example/"),
                "foreign origin rejected");
    }

    private static void testRedaction() throws Exception {
        JSONObject response = new JSONObject();
        JSONArray results = new JSONArray();
        JSONObject result = new JSONObject();
        result.put("pwd", "SENTINEL_WIFI_PASSWORD");
        result.put("imei", "123456789012345");
        results.put(result);
        response.put("results", results);
        Redactor.redactResponse(response);
        String output = response.toString();
        check(output.indexOf("SENTINEL_WIFI_PASSWORD") < 0, "password redacted");
        check(output.indexOf("\"pwd\"") < 0, "password key removed");
        check(output.indexOf("passwordConfigured") >= 0, "configured marker added");
        check(output.indexOf("123456789012345") < 0, "IMEI masked");
        check(output.indexOf("2345") >= 0, "IMEI suffix preserved");
    }

    private static void check(boolean condition, String message) {
        checks++;
        if (!condition) {
            throw new AssertionError(message);
        }
    }
}
