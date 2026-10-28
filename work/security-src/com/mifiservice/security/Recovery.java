package com.mifiservice.security;

import org.json.JSONObject;

/**
 * Single-use recovery code, 100 bits (20 symbols x 5 bits), shown once and stored only as a salted hash.
 * Lets the owner reset the admin password without ADB. Treat it like the password itself.
 */
public final class Recovery {
    private static final String ALPHABET = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"; // 32 symbols, no I/O/0/1
    static final int SYMBOLS = 20;

    private Recovery() {
    }

    public static synchronized boolean exists() {
        return AuthStore.read().optJSONObject("recovery") != null;
    }

    /** Replaces any previous code. Returns the code grouped as XXXXX-XXXXX-XXXXX-XXXXX, or null on I/O failure. */
    public static synchronized String generate() {
        byte[] bytes = Crypto.random(SYMBOLS);
        StringBuilder code = new StringBuilder();
        for (int i = 0; i < SYMBOLS; i++) {
            code.append(ALPHABET.charAt(bytes[i] & 31));
        }
        String salt = Crypto.hex(Crypto.random(16));
        JSONObject entry = new JSONObject();
        try {
            entry.put("salt", salt);
            entry.put("hash", Crypto.sha256Hex(salt, code.toString()));
            JSONObject store = AuthStore.read();
            store.put("recovery", entry);
            if (!AuthStore.write(store)) {
                return null;
            }
        } catch (Exception exception) {
            return null;
        }
        StringBuilder grouped = new StringBuilder();
        for (int i = 0; i < SYMBOLS; i++) {
            if (i > 0 && i % 5 == 0) {
                grouped.append('-');
            }
            grouped.append(code.charAt(i));
        }
        return grouped.toString();
    }

    /** True once, then the code is gone. */
    public static synchronized boolean verifyAndConsume(String input) {
        String normalized = normalize(input);
        if (normalized == null) {
            return false;
        }
        JSONObject store = AuthStore.read();
        JSONObject entry = store.optJSONObject("recovery");
        if (entry == null) {
            return false;
        }
        String salt = entry.optString("salt", "");
        String hash = entry.optString("hash", "");
        if (!Crypto.constantTimeEquals(Crypto.sha256Hex(salt, normalized), hash)) {
            return false;
        }
        store.remove("recovery");
        return AuthStore.write(store);
    }

    static String normalize(String input) {
        if (input == null || input.length() > 40) {
            return null;
        }
        StringBuilder out = new StringBuilder();
        for (int i = 0; i < input.length(); i++) {
            char c = Character.toUpperCase(input.charAt(i));
            if (c == '-' || c == ' ') {
                continue;
            }
            if (ALPHABET.indexOf(c) < 0) {
                return null;
            }
            out.append(c);
        }
        return out.length() == SYMBOLS ? out.toString() : null;
    }
}
