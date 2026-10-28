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
    private static final int MAX_SESSIONS = 4;
    private static final long IDLE_TIMEOUT_NANOS = 15L * 60L * 1000000000L;
    private static final long ABSOLUTE_TIMEOUT_NANOS = 8L * 60L * 60L * 1000000000L;
    private static final long LOGIN_WINDOW_NANOS = 5L * 60L * 1000000000L;
    private static final long LOGIN_COOLDOWN_NANOS = 60L * 1000000000L;

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
            if (part.startsWith("MIFISID=")) {
                String token = part.substring("MIFISID=".length());
                if (token.length() == TOKEN_BYTES * 2 && isHex(token)) {
                    return token;
                }
            }
        }
        return null;
    }

    public static synchronized boolean loginAllowed(String remoteAddress) {
        String key = remoteAddress == null ? "" : remoteAddress;
        LoginBucket bucket = LOGIN_BUCKETS.get(key);
        if (bucket == null) {
            return true;
        }
        long now = nowNanos();
        if (bucket.cooldownUntilNanos > now) {
            return false;
        }
        if (bucket.cooldownUntilNanos != 0L && bucket.failures >= 5) {
            bucket.failures = 0;
            bucket.windowStartNanos = now;
            bucket.cooldownUntilNanos = 0L;
        }
        if (now - bucket.windowStartNanos > LOGIN_WINDOW_NANOS) {
            bucket.failures = 0;
            bucket.windowStartNanos = now;
        }
        return bucket.failures < 5;
    }

    public static synchronized void recordLoginFailure(String remoteAddress) {
        String key = remoteAddress == null ? "" : remoteAddress;
        long now = nowNanos();
        LoginBucket bucket = LOGIN_BUCKETS.get(key);
        if (bucket == null || now - bucket.windowStartNanos > LOGIN_WINDOW_NANOS) {
            bucket = new LoginBucket(now);
            LOGIN_BUCKETS.put(key, bucket);
        }
        bucket.failures++;
        if (bucket.failures >= 5) {
            bucket.cooldownUntilNanos = now + LOGIN_COOLDOWN_NANOS;
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
        private final String remoteAddress;
        private final long createdNanos;
        private long lastActivityNanos;
        private boolean needsPasswordChange;

        private Session(String token, String remoteAddress, long now, boolean needsPasswordChange) {
            this.token = token;
            this.remoteAddress = remoteAddress;
            this.createdNanos = now;
            this.lastActivityNanos = now;
            this.needsPasswordChange = needsPasswordChange;
        }
    }

    private static final class LoginBucket {
        private long windowStartNanos;
        private int failures;
        private long cooldownUntilNanos;

        private LoginBucket(long now) {
            this.windowStartNanos = now;
        }
    }
}
