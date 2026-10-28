package com.mifiservice.security;

import java.util.Iterator;

import org.json.JSONObject;

/** Per-modem UI preferences, stored server-side so they follow the owner across browsers. Strict whitelist. */
public final class Prefs {
    static final int MAX_DEVICE_NAMES = 16;
    static final int MAX_NAME = 32;

    private Prefs() {
    }

    /** @return null when valid, otherwise the offending field. Unknown fields are rejected. */
    public static String validate(JSONObject prefs) {
        if (prefs == null) {
            return "prefs";
        }
        Iterator<String> keys = prefs.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            Object value = prefs.opt(key);
            if ("lang".equals(key)) {
                if (!oneOf(value, "en", "zh", "ru", "id")) { return key; }
            } else if ("theme".equals(key)) {
                if (!oneOf(value, "auto", "light", "dark")) { return key; }
            } else if ("speedUnit".equals(key)) {
                if (!oneOf(value, "auto", "bps", "Bps")) { return key; }
            } else if ("refreshSeconds".equals(key)) {
                long n = asLong(value);
                if (n < 2 || n > 300) { return key; }
            } else if ("lastPage".equals(key)) {
                if (!(value instanceof String) || !pageName((String) value)) { return key; }
            } else if ("deviceNames".equals(key)) {
                String bad = validateNames(value);
                if (bad != null) { return key; }
            } else {
                return key;
            }
        }
        return null;
    }

    public static synchronized JSONObject get() {
        JSONObject prefs = AuthStore.read().optJSONObject("prefs");
        return prefs == null ? new JSONObject() : prefs;
    }

    /** Merges validated fields; returns false on I/O failure. Caller must validate first. */
    public static synchronized boolean merge(JSONObject update) {
        JSONObject store = AuthStore.read();
        JSONObject current = store.optJSONObject("prefs");
        if (current == null) {
            current = new JSONObject();
        }
        try {
            Iterator<String> keys = update.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                Object value = update.opt(key);
                if ("refreshSeconds".equals(key)) {
                    value = Long.valueOf(asLong(value));
                }
                current.put(key, value);
            }
            store.put("prefs", current);
        } catch (Exception exception) {
            return false;
        }
        return AuthStore.write(store);
    }

    private static boolean oneOf(Object value, String... allowed) {
        if (!(value instanceof String)) {
            return false;
        }
        for (String a : allowed) {
            if (a.equals(value)) {
                return true;
            }
        }
        return false;
    }

    private static long asLong(Object value) {
        if (value instanceof Number) {
            return ((Number) value).longValue();
        }
        try {
            return Long.parseLong(String.valueOf(value));
        } catch (Exception exception) {
            return -1L;
        }
    }

    private static boolean pageName(String name) {
        if (name.length() < 6 || name.length() > 40 || !name.endsWith(".html")) {
            return false;
        }
        for (int i = 0; i < name.length() - 5; i++) {
            char c = name.charAt(i);
            if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_')) {
                return false;
            }
        }
        return true;
    }

    private static String validateNames(Object value) {
        if (!(value instanceof JSONObject)) {
            return "deviceNames";
        }
        JSONObject names = (JSONObject) value;
        if (names.length() > MAX_DEVICE_NAMES) {
            return "deviceNames";
        }
        Iterator<String> keys = names.keys();
        while (keys.hasNext()) {
            String mac = keys.next();
            Object name = names.opt(mac);
            if (!Validator.isMac(mac) || !(name instanceof String)) {
                return mac;
            }
            String text = (String) name;
            if (text.length() > MAX_NAME) {
                return mac;
            }
            for (int i = 0; i < text.length(); i++) {
                char c = text.charAt(i);
                if (c < 0x20 || c == 0x7f || c == '"' || c == '\\' || c == '<' || c == '>' || c == '&') {
                    return mac;
                }
            }
        }
        return null;
    }
}
