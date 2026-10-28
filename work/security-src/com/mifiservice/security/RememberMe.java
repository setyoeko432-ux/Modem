package com.mifiservice.security;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * "Remember me" as selector + validator. Only SHA-256(validator) is stored. Every use rotates the token.
 * A known selector with a wrong validator is treated as theft: all remember tokens are wiped.
 */
public final class RememberMe {
    public static final int MAX_TOKENS = 5;
    public static final long LIFETIME_SECONDS = 14L * 24L * 60L * 60L;

    private RememberMe() {
    }

    public static boolean wellFormed(String cookie) {
        if (cookie == null || cookie.length() != 16 + 1 + 32 || cookie.charAt(16) != '.') {
            return false;
        }
        return Crypto.isHex(cookie.substring(0, 16), 16) && Crypto.isHex(cookie.substring(17), 32);
    }

    /** @return cookie value "selector.validator" */
    public static synchronized String issue() {
        JSONObject store = AuthStore.read();
        JSONArray tokens = store.optJSONArray("remember");
        JSONArray kept = new JSONArray();
        long now = AuthStore.nowSeconds();
        if (tokens != null) {
            for (int i = 0; i < tokens.length(); i++) {
                JSONObject t = tokens.optJSONObject(i);
                if (t != null && t.optLong("exp", 0L) > now) {
                    kept.put(t);
                }
            }
        }
        // Keep at most MAX_TOKENS - 1 old tokens (drop the oldest) before adding the new one.
        JSONArray trimmed = new JSONArray();
        int skip = Math.max(0, kept.length() - (MAX_TOKENS - 1));
        for (int i = skip; i < kept.length(); i++) {
            trimmed.put(kept.optJSONObject(i));
        }
        String selector = Crypto.hex(Crypto.random(8));
        String validator = Crypto.hex(Crypto.random(16));
        try {
            JSONObject entry = new JSONObject();
            entry.put("sel", selector);
            entry.put("hash", Crypto.sha256Hex(selector, validator));
            entry.put("exp", now + LIFETIME_SECONDS);
            trimmed.put(entry);
            store.put("remember", trimmed);
        } catch (Exception exception) {
            return null;
        }
        return AuthStore.write(store) ? selector + "." + validator : null;
    }

    /** Validates and rotates. Returns the replacement cookie value, or null (invalid, expired, or theft). */
    public static synchronized String consume(String cookie) {
        if (!wellFormed(cookie)) {
            return null;
        }
        String selector = cookie.substring(0, 16);
        String validator = cookie.substring(17);
        JSONObject store = AuthStore.read();
        JSONArray tokens = store.optJSONArray("remember");
        if (tokens == null) {
            return null;
        }
        long now = AuthStore.nowSeconds();
        for (int i = 0; i < tokens.length(); i++) {
            JSONObject t = tokens.optJSONObject(i);
            if (t == null || !selector.equals(t.optString("sel", ""))) {
                continue;
            }
            boolean match = Crypto.constantTimeEquals(Crypto.sha256Hex(selector, validator),
                    t.optString("hash", ""));
            if (!match) {
                wipeAll(); // selector known, validator wrong: assume the cookie was stolen and reused
                return null;
            }
            if (t.optLong("exp", 0L) <= now) {
                removeSelector(selector);
                return null;
            }
            removeSelector(selector);
            return issue();
        }
        return null;
    }

    public static synchronized void revoke(String cookie) {
        if (wellFormed(cookie)) {
            removeSelector(cookie.substring(0, 16));
        }
    }

    public static synchronized void wipeAll() {
        JSONObject store = AuthStore.read();
        if (store.has("remember")) {
            store.remove("remember");
            AuthStore.write(store);
        }
    }

    public static synchronized int count() {
        JSONArray tokens = AuthStore.read().optJSONArray("remember");
        return tokens == null ? 0 : tokens.length();
    }

    private static void removeSelector(String selector) {
        JSONObject store = AuthStore.read();
        JSONArray tokens = store.optJSONArray("remember");
        if (tokens == null) {
            return;
        }
        JSONArray kept = new JSONArray();
        for (int i = 0; i < tokens.length(); i++) {
            JSONObject t = tokens.optJSONObject(i);
            if (t != null && !selector.equals(t.optString("sel", ""))) {
                kept.put(t);
            }
        }
        try {
            store.put("remember", kept);
        } catch (Exception ignored) {
            return;
        }
        AuthStore.write(store);
    }
}
