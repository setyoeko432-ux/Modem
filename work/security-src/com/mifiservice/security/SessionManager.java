package com.mifiservice.security;

import java.security.SecureRandom;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Small bounded in-memory session store for the API 19 portal.
 * No session material is persisted to the modem configuration file.
 */
public final class SessionManager {
    private static final int TOKEN_BYTES = 16;
    private static final int MAX_SESSIONS = AuthConfig.MAX_SESSIONS;
    private static final long NANOS = 1000000000L;
    private static final long IDLE_TIMEOUT_NANOS = AuthConfig.IDLE_TIMEOUT_SECONDS * NANOS;
    private static final long ABSOLUTE_TIMEOUT_NANOS = AuthConfig.ABSOLUTE_TIMEOUT_SECONDS * NANOS;

    private static final SecureRandom RANDOM = new SecureRandom();
    private static final LinkedHashMap<String, Session> SESSIONS =
            new LinkedHashMap<String, Session>();
    private static final LinkedHashMap<String, LoginBucket> LOGIN_BUCKETS =
            new LinkedHashMap<String, LoginBucket>();
    private static Long testNowNanos;

    private SessionManager() {
    }

    public static synchronized String create(String remoteAddress, boolean needsPasswordChange) {
        long now = nowNanos();
        purgeExpired(now);
        while (SESSIONS.size() >= MAX_SESSIONS) {
            Iterator<Map.Entry<String, Session>> iterator = SESSIONS.entrySet().iterator();
            if (!iterator.hasNext()) {
                break;
            }
            iterator.next();
            iterator.remove();
        }

        byte[] bytes = new byte[TOKEN_BYTES];
        RANDOM.nextBytes(bytes);
        String token = toHex(bytes);
        SESSIONS.put(token, new Session(token, remoteAddress, now, needsPasswordChange));
        return token;
    }

    public static synchronized boolean isValid(String token) {
        return touch(token) != null;
    }

    public static synchronized boolean needsPasswordChange(String token) {
        Session session = touch(token);
        return session != null && session.needsPasswordChange;
    }

    public static synchronized void passwordChanged(String token) {
        Session current = touch(token);
        if (current == null) {
            return;
        }
        Iterator<Map.Entry<String, Session>> iterator = SESSIONS.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, Session> entry = iterator.next();
            if (!entry.getKey().equals(token)) {
                iterator.remove();
            }
        }
        current.needsPasswordChange = false;
        current.lastActivityNanos = nowNanos();
    }

    public static synchronized String cookieToken(String cookieHeader) {
        if (cookieHeader == null) {
            return null;
        }
        String[] parts = cookieHeader.split(";");
        for (int i = 0; i < parts.length; i++) {
            String part = parts[i].trim();
            if (part.startsWith(AuthConfig.SESSION_COOKIE + "=")) {
                String token = part.substring(AuthConfig.SESSION_COOKIE.length() + 1);
                if (token.length() == TOKEN_BYTES * 2 && isHex(token)) {
                    return token;
                }
            }
        }
        return null;
    }

    /** Allowed when neither the account nor the source address is in a delay period. */
    public static synchronized boolean loginAllowed(String remoteAddress, String username) {
        long now = nowNanos();
        return !blocked("a:" + norm(username), now) && !blocked("i:" + norm(remoteAddress), now);
    }

    public static synchronized void recordLoginFailure(String remoteAddress, String username) {
        long now = nowNanos();
        fail("a:" + norm(username), now, AuthConfig.ACCOUNT_FREE_FAILURES, true);
        fail("i:" + norm(remoteAddress), now, AuthConfig.ADDRESS_FREE_FAILURES, false);
    }

    public static synchronized void recordLoginSuccess(String remoteAddress, String username) {
        LOGIN_BUCKETS.remove("a:" + norm(username));
    }

    /** Seconds the caller should wait, 0 when allowed. Used for the Retry-After hint. */
    public static synchronized long retryAfterSeconds(String remoteAddress, String username) {
        long now = nowNanos();
        long a = remaining("a:" + norm(username), now);
        long i = remaining("i:" + norm(remoteAddress), now);
        return Math.max(a, i);
    }

    public static synchronized boolean destroy(String token) {
        return token != null && SESSIONS.remove(token) != null;
    }

    /** Public, non-secret session id (not usable as a cookie). */
    public static synchronized String publicId(String token) {
        Session session = touch(token);
        return session == null ? null : session.publicId;
    }

    public static synchronized java.util.List<String[]> list(String currentToken) {
        long now = nowNanos();
        purgeExpired(now);
        java.util.ArrayList<String[]> rows = new java.util.ArrayList<String[]>();
        for (Session session : SESSIONS.values()) {
            rows.add(new String[] {
                session.publicId,
                session.remoteAddress,
                String.valueOf((now - session.createdNanos) / NANOS),
                String.valueOf((now - session.lastActivityNanos) / NANOS),
                session.token.equals(currentToken) ? "1" : "0" });
        }
        return rows;
    }

    /** Revoke by public id. A caller cannot revoke its own session here (use destroy). */
    public static synchronized boolean revoke(String publicId, String callerToken) {
        if (publicId == null) {
            return false;
        }
        Iterator<Map.Entry<String, Session>> iterator = SESSIONS.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, Session> entry = iterator.next();
            if (entry.getValue().publicId.equals(publicId) && !entry.getKey().equals(callerToken)) {
                iterator.remove();
                return true;
            }
        }
        return false;
    }

    private static String newPublicId() {
        byte[] bytes = new byte[6];
        RANDOM.nextBytes(bytes);
        return toHex(bytes);
    }

    private static String norm(String value) {
        if (value == null) {
            return "";
        }
        String text = value.trim().toLowerCase();
        return text.length() > 64 ? text.substring(0, 64) : text;
    }

    private static boolean blocked(String key, long now) {
        LoginBucket bucket = LOGIN_BUCKETS.get(key);
        if (bucket == null) {
            return false;
        }
        if (now - bucket.lastFailureNanos > AuthConfig.FAILURE_MEMORY_SECONDS * NANOS) {
            LOGIN_BUCKETS.remove(key);
            return false;
        }
        return bucket.blockedUntilNanos > now;
    }

    private static long remaining(String key, long now) {
        LoginBucket bucket = LOGIN_BUCKETS.get(key);
        if (bucket == null || bucket.blockedUntilNanos <= now) {
            return 0L;
        }
        return (bucket.blockedUntilNanos - now + NANOS - 1L) / NANOS;
    }

    private static void fail(String key, long now, int free, boolean escalate) {
        LoginBucket bucket = LOGIN_BUCKETS.get(key);
        if (bucket == null || now - bucket.lastFailureNanos > AuthConfig.FAILURE_MEMORY_SECONDS * NANOS) {
            if (bucket == null && LOGIN_BUCKETS.size() >= AuthConfig.MAX_TRACKED_KEYS) {
                Iterator<String> oldest = LOGIN_BUCKETS.keySet().iterator();
                oldest.next();
                oldest.remove();
            }
            bucket = new LoginBucket();
            LOGIN_BUCKETS.put(key, bucket);
        }
        bucket.failures++;
        bucket.lastFailureNanos = now;
        if (bucket.failures >= free) {
            long delay = AuthConfig.ADDRESS_DELAY_SECONDS;
            if (escalate) {
                int steps = Math.min(bucket.failures - free, 20);
                delay = AuthConfig.ACCOUNT_BASE_DELAY_SECONDS << steps;
                delay = Math.min(delay, AuthConfig.ACCOUNT_MAX_DELAY_SECONDS);
            }
            bucket.blockedUntilNanos = now + delay * NANOS;
        }
    }

    public static synchronized void clearForTests() {
        SESSIONS.clear();
        LOGIN_BUCKETS.clear();
        testNowNanos = null;
    }

    public static synchronized void setNowNanosForTests(long now) {
        testNowNanos = Long.valueOf(now);
    }

    public static synchronized void advanceNanosForTests(long delta) {
        long now = nowNanos();
        testNowNanos = Long.valueOf(now + delta);
    }

    private static Session touch(String token) {
        if (token == null) {
            return null;
        }
        long now = nowNanos();
        Session session = SESSIONS.get(token);
        if (session == null) {
            return null;
        }
        if (now - session.createdNanos > ABSOLUTE_TIMEOUT_NANOS
                || now - session.lastActivityNanos > IDLE_TIMEOUT_NANOS) {
            SESSIONS.remove(token);
            return null;
        }
        session.lastActivityNanos = now;
        return session;
    }

    private static void purgeExpired(long now) {
        Iterator<Map.Entry<String, Session>> iterator = SESSIONS.entrySet().iterator();
        while (iterator.hasNext()) {
            Session session = iterator.next().getValue();
            if (now - session.createdNanos > ABSOLUTE_TIMEOUT_NANOS
                    || now - session.lastActivityNanos > IDLE_TIMEOUT_NANOS) {
                iterator.remove();
            }
        }
    }

    private static long nowNanos() {
        return testNowNanos == null ? System.nanoTime() : testNowNanos.longValue();
    }

    private static String toHex(byte[] bytes) {
        final char[] digits = "0123456789abcdef".toCharArray();
        char[] result = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            int value = bytes[i] & 0xff;
            result[i * 2] = digits[value >>> 4];
            result[i * 2 + 1] = digits[value & 0x0f];
        }
        return new String(result);
    }

    private static boolean isHex(String value) {
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f')
                    || (c >= 'A' && c <= 'F'))) {
                return false;
            }
        }
        return true;
    }

    private static final class Session {
        private final String token;
        private final String publicId;
        private final String remoteAddress;
        private final long createdNanos;
        private long lastActivityNanos;
        private boolean needsPasswordChange;

        private Session(String token, String remoteAddress, long now, boolean needsPasswordChange) {
            this.token = token;
            this.publicId = newPublicId();
            this.remoteAddress = remoteAddress;
            this.createdNanos = now;
            this.lastActivityNanos = now;
            this.needsPasswordChange = needsPasswordChange;
        }
    }

    private static final class LoginBucket {
        private int failures;
        private long lastFailureNanos;
        private long blockedUntilNanos;
    }
}
