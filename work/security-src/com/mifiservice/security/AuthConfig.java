package com.mifiservice.security;

/** Single source of truth for authentication limits. Values are deliberate; change here only. */
public final class AuthConfig {
    public static final long IDLE_TIMEOUT_SECONDS = 15L * 60L;
    public static final long ABSOLUTE_TIMEOUT_SECONDS = 8L * 60L * 60L;
    public static final int MAX_SESSIONS = 4;

    public static final int PASSWORD_MIN = 12;
    public static final int PASSWORD_MAX = 64;
    public static final int OLD_PASSWORD_MAX = 64;

    /** Failures on one account before delays start. */
    public static final int ACCOUNT_FREE_FAILURES = 5;
    public static final long ACCOUNT_BASE_DELAY_SECONDS = 30L;
    public static final long ACCOUNT_MAX_DELAY_SECONDS = 15L * 60L;
    /** Per-address backstop so one client cannot cycle through many account names. */
    public static final int ADDRESS_FREE_FAILURES = 20;
    public static final long ADDRESS_DELAY_SECONDS = 60L;
    public static final long FAILURE_MEMORY_SECONDS = 30L * 60L;
    public static final int MAX_TRACKED_KEYS = 64;

    public static final String SESSION_COOKIE = "mifi_sid";

    private AuthConfig() {
    }
}
