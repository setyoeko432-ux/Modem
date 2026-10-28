package com.mifiservice.security;

/** Rules for the NEW admin password. The old password is never held to this policy. */
public final class PasswordPolicy {
    private static final String SYMBOLS = "_-.!@#%^*+=?~";

    private PasswordPolicy() {
    }

    /** @return null when acceptable, otherwise a short machine-readable reason. */
    public static String check(String candidate, String oldPassword) {
        if (candidate == null) {
            return "newpwd";
        }
        if (candidate.length() < AuthConfig.PASSWORD_MIN) {
            return "newpwd_short";
        }
        if (candidate.length() > AuthConfig.PASSWORD_MAX) {
            return "newpwd_long";
        }
        boolean allSame = true;
        for (int i = 0; i < candidate.length(); i++) {
            char c = candidate.charAt(i);
            boolean ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                    || (c >= '0' && c <= '9') || SYMBOLS.indexOf(c) >= 0;
            if (!ok) {
                return "newpwd_chars";
            }
            if (c != candidate.charAt(0)) {
                allSame = false;
            }
        }
        if (allSame) {
            return "newpwd_weak";
        }
        String lower = candidate.toLowerCase();
        if (lower.indexOf("admin") >= 0 || lower.indexOf("password") >= 0
                || lower.indexOf("12345678") >= 0) {
            return "newpwd_weak";
        }
        if (oldPassword != null && candidate.equals(oldPassword)) {
            return "newpwd_same";
        }
        return null;
    }
}
