import com.mifiservice.security.PasswordPolicy;
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
        testSessionManagement();
        testPasswordPolicy();
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

    private static final long SEC = 1000000000L;

    private static void testRateLimit() {
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000 * SEC);
        for (int i = 0; i < 5; i++) {
            check(SessionManager.loginAllowed("10.0.0.2", "admin"), "allowed before failure " + i);
            SessionManager.recordLoginFailure("10.0.0.2", "admin");
        }
        check(!SessionManager.loginAllowed("10.0.0.2", "admin"), "account delayed after 5");
        check(!SessionManager.loginAllowed("10.0.0.9", "admin"),
                "account delay applies from another address");
        check(SessionManager.loginAllowed("10.0.0.9", "other"), "other account unaffected");
        check(SessionManager.retryAfterSeconds("10.0.0.2", "admin") == 30, "first delay 30s");
        SessionManager.advanceNanosForTests(31 * SEC);
        check(SessionManager.loginAllowed("10.0.0.2", "admin"), "allowed after first delay");
        SessionManager.recordLoginFailure("10.0.0.2", "admin");
        check(SessionManager.retryAfterSeconds("10.0.0.2", "admin") == 60, "delay doubles");
        for (int i = 0; i < 30; i++) {
            SessionManager.advanceNanosForTests(16 * 60 * SEC);
            SessionManager.recordLoginFailure("10.0.0.2", "admin");
            check(SessionManager.retryAfterSeconds("10.0.0.2", "admin") <= 900, "delay capped");
        }
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000 * SEC);
        SessionManager.recordLoginFailure("10.0.0.2", "admin");
        SessionManager.recordLoginSuccess("10.0.0.2", "admin");
        for (int i = 0; i < 4; i++) {
            SessionManager.recordLoginFailure("10.0.0.2", "admin");
        }
        check(SessionManager.loginAllowed("10.0.0.2", "admin"), "success resets account count");

        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000 * SEC);
        for (int i = 0; i < 20; i++) {
            SessionManager.recordLoginFailure("10.0.0.7", "user" + i);
        }
        check(!SessionManager.loginAllowed("10.0.0.7", "fresh"), "address backstop");
    }

    private static void testSessionManagement() {
        SessionManager.clearForTests();
        SessionManager.setNowNanosForTests(1000 * SEC);
        String a = SessionManager.create("a", false);
        String b = SessionManager.create("b", false);
        String idB = SessionManager.publicId(b);
        check(idB != null && idB.length() == 12 && a.indexOf(idB) < 0 && b.indexOf(idB) < 0,
                "public id is independent of token");
        check(SessionManager.list(a).size() == 2, "list shows both");
        check(!SessionManager.revoke(SessionManager.publicId(a), a), "cannot revoke self via revoke");
        check(SessionManager.revoke(idB, a) && !SessionManager.isValid(b), "revoke other");
        check(SessionManager.destroy(a) && !SessionManager.isValid(a), "logout destroys");
        check(!SessionManager.destroy(null), "destroy null safe");
        for (int i = 0; i < 6; i++) {
            SessionManager.create("c" + i, false);
        }
        check(SessionManager.list(null).size() == 4, "session cap");
    }

    private static void testPasswordPolicy() throws Exception {
        check(PasswordPolicy.check("Tr0ub4dor-horse-9", "admin") == null, "good password");
        check("newpwd_short".equals(PasswordPolicy.check("Short1!", "x")), "short");
        check("newpwd_weak".equals(PasswordPolicy.check("aaaaaaaaaaaaaa", "x")), "all same");
        check("newpwd_weak".equals(PasswordPolicy.check("MyAdminPass2026", "x")), "contains admin");
        check("newpwd_same".equals(PasswordPolicy.check("Tr0ub4dor-horse-9", "Tr0ub4dor-horse-9")), "same");
        check("newpwd_chars".equals(PasswordPolicy.check("has space in it 12", "x")), "space");
        check("newpwd_chars".equals(PasswordPolicy.check("semi;colon-12345", "x")), "shell char");
        check(PasswordPolicy.check(null, "x") != null, "null");

        JSONObject legacy = new JSONObject();
        legacy.put("funcNo", 1000);
        legacy.put("username", "admin");
        legacy.put("password", "p&ss;w|rd$\"x");
        check(Validator.validate(1000, legacy) == null, "legacy password with metachars can log in");
        legacy.put("password", "bad\u0001");
        check(Validator.validate(1000, legacy) != null, "control char rejected");
        JSONObject change = new JSONObject();
        change.put("funcNo", 1020);
        change.put("oldpwd", "o&d;pw");
        change.put("newpwd", "Tr0ub4dor-horse-9");
        check(Validator.validate(1020, change) == null, "old pwd metachars allowed on change");
        change.put("newpwd", "short");
        check(Validator.validate(1020, change) != null, "new password policy enforced");
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
        modifyPwd.put("newpwd", "NewPass123456x");
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
