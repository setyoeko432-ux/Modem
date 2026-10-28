package com.mifiservice.security;

import java.util.Iterator;

import org.json.JSONObject;

/** Strict, bounded validation performed before any controller is called. */
public final class Validator {
    public static final int MAX_BODY_CHARS = 65536;

    private Validator() {
    }

    public static String validate(int funcNo, JSONObject object) {
        if (object == null) {
            return "JSON";
        }
        if (object.toString().length() > MAX_BODY_CHARS) {
            return "body";
        }
        Object declared = object.opt("funcNo");
        if (!(declared instanceof Number) && !(declared instanceof String)) {
            return "funcNo";
        }
        try {
            if (object.getInt("funcNo") != funcNo) {
                return "funcNo";
            }
        } catch (Exception exception) {
            return "funcNo";
        }

        String generic = validateAllStrings(object);
        if (generic != null) {
            return generic;
        }

        switch (funcNo) {
            case 1000:
                String userError = requireSafeString(object, "username", 1, 32, true, "username");
                return userError != null ? userError
                        : requireSafeString(object, "password", 1, AuthConfig.OLD_PASSWORD_MAX, true, "password");
            case 1004:
                return requireInt(object, "conn_mode", 0, 1);
            case 1005:
                return requireInt(object, "net_mode", 0, 2);
            case 1007:
                return requireSafeString(object, "ssid", 1, 32, false, "ssid") != null
                        ? requireInt(object, "maxSta", 1, 32)
                        : requireSafeString(object, "ssid", 1, 32, false, "ssid");
            case 1010:
                if (requireInt(object, "encryp_type", 0, 5) != null) {
                    return requireInt(object, "encryp_type", 0, 5);
                }
                return requireAlphanumeric(object, "pwd", 8, 64);
            case 1012:
                if (!isIPv4(object.optString("dns1", ""))) {
                    return "dns1";
                }
                return isIPv4(object.optString("dns2", "")) ? null : "dns2";
            case 1017:
                if (requireInt(object, "no", 1, 5) != null) {
                    return requireInt(object, "no", 1, 5);
                }
                if (requireSafeString(object, "name", 1, 64, false, "name") != null) {
                    return requireSafeString(object, "name", 1, 64, false, "name");
                }
                if (requireSafeString(object, "apn", 1, 64, false, "apn") != null) {
                    return requireSafeString(object, "apn", 1, 64, false, "apn");
                }
                if (requireSafeString(object, "user", 0, 64, true, "user") != null) {
                    return requireSafeString(object, "user", 0, 64, true, "user");
                }
                if (requireAlphanumeric(object, "pwd", 1, 64) != null) {
                    return requireAlphanumeric(object, "pwd", 1, 64);
                }
                return requireInt(object, "auth", 0, 3);
            case 1018:
                return requireInt(object, "profile_num", 0, 5);
            case 1020:
                if (requireSafeString(object, "oldpwd", 1, 64, false, "oldpwd") != null) {
                    return "oldpwd";
                }
                return PasswordPolicy.check(object.optString("newpwd", null),
                        object.optString("oldpwd", null));
            case 1025:
                if (requireSafeString(object, "ssid", 1, 32, false, "ssid") != null) {
                    return requireSafeString(object, "ssid", 1, 32, false, "ssid");
                }
                return requireAlphanumeric(object, "pwd", 8, 64);
            case 1026:
                if (!isIPv4(object.optString("range_low", ""))) {
                    return "range_low";
                }
                if (!isIPv4(object.optString("range_high", ""))) {
                    return "range_high";
                }
                return compareIPv4(object.optString("range_low", ""),
                        object.optString("range_high", "")) < 0 ? null : "range";
            case 1053:
                return requireInt(object, "type", 0, 3);
            case 1054:
                if (requireInt(object, "id", 0, 9) != null) {
                    return requireInt(object, "id", 0, 9);
                }
                return isMac(object.optString("mac", "")) ? null : "mac";
            default:
                return null;
        }
    }

    public static boolean isIPv4(String value) {
        if (value == null || value.length() < 7 || value.length() > 15) {
            return false;
        }
        int start = 0;
        int parts = 0;
        for (int i = 0; i <= value.length(); i++) {
            if (i == value.length() || value.charAt(i) == '.') {
                if (i == start || i - start > 3) {
                    return false;
                }
                int part = 0;
                for (int j = start; j < i; j++) {
                    char c = value.charAt(j);
                    if (c < '0' || c > '9') {
                        return false;
                    }
                    part = part * 10 + (c - '0');
                }
                if (part > 255) {
                    return false;
                }
                parts++;
                start = i + 1;
            }
        }
        return parts == 4 && start == value.length() + 1;
    }

    public static boolean isMac(String value) {
        if (value == null || value.length() != 17) {
            return false;
        }
        for (int i = 0; i < value.length(); i++) {
            if ((i + 1) % 3 == 0) {
                if (value.charAt(i) != ':') {
                    return false;
                }
            } else if (Character.digit(value.charAt(i), 16) < 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllowedHost(String value) {
        if (value == null || value.length() == 0 || value.length() > 64) {
            return false;
        }
        String host = hostOnly(value);
        if ("localhost".equalsIgnoreCase(host)) {
            return true;
        }
        return isIPv4(host);
    }

    public static boolean sameHost(String hostHeader, String originHeader) {
        if (originHeader == null || originHeader.length() == 0) {
            return true;
        }
        String host = hostOnly(hostHeader);
        String origin = hostOnly(originHeader);
        return host != null && origin != null && host.equalsIgnoreCase(origin);
    }

    private static String validateAllStrings(JSONObject object) {
        Iterator<?> keys = object.keys();
        while (keys.hasNext()) {
            String key = String.valueOf(keys.next());
            Object value = object.opt(key);
            if (value instanceof String) {
                String string = (String) value;
                if (string.length() > 256) {
                    return key;
                }
                if ("password".equals(key) || "oldpwd".equals(key)) {
                    // Credentials are compared in memory only, never passed to a shell.
                    if (string.length() > AuthConfig.OLD_PASSWORD_MAX) {
                        return key;
                    }
                    for (int i = 0; i < string.length(); i++) {
                        char c = string.charAt(i);
                        if (c < 0x20 || c == 0x7f) {
                            return key;
                        }
                    }
                    continue;
                }
                for (int i = 0; i < string.length(); i++) {
                    char c = string.charAt(i);
                    if (c < 0x20 || c == 0x7f || c == '"' || c == '\\' || c == '`'
                            || c == '$' || c == ';' || c == '|' || c == '&'
                            || c == '<' || c == '>') {
                        return key;
                    }
                }
            }
        }
        return null;
    }

    private static String requireSafeString(JSONObject object, String key, int min, int max,
            boolean allowEmpty, String error) {
        Object value = object.opt(key);
        if (!(value instanceof String)) {
            return error;
        }
        String text = (String) value;
        if ((!allowEmpty && text.length() == 0) || text.length() < min || text.length() > max) {
            return error;
        }
        return null;
    }

    private static String requireAlphanumeric(JSONObject object, String key, int min, int max) {
        Object value = object.opt(key);
        if (!(value instanceof String)) {
            return key;
        }
        String text = (String) value;
        if (text.length() < min || text.length() > max) {
            return key;
        }
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                    || (c >= '0' && c <= '9') || c == '_')) {
                return key;
            }
        }
        return null;
    }

    private static String requireInt(JSONObject object, String key, int min, int max) {
        Object value = object.opt(key);
        if (!(value instanceof Number) && !(value instanceof String)) {
            return key;
        }
        try {
            int number = object.getInt(key);
            return number >= min && number <= max ? null : key;
        } catch (Exception exception) {
            return key;
        }
    }

    private static int compareIPv4(String first, String second) {
        return ipv4Value(first) < ipv4Value(second) ? -1
                : (ipv4Value(first) == ipv4Value(second) ? 0 : 1);
    }

    private static int ipv4Value(String value) {
        int result = 0;
        int start = 0;
        for (int i = 0; i <= value.length(); i++) {
            if (i == value.length() || value.charAt(i) == '.') {
                result = (result << 8) + Integer.parseInt(value.substring(start, i));
                start = i + 1;
            }
        }
        return result;
    }

    private static String hostOnly(String value) {
        if (value == null) {
            return null;
        }
        String text = value.trim();
        int scheme = text.indexOf("://");
        if (scheme >= 0) {
            text = text.substring(scheme + 3);
        }
        int slash = text.indexOf('/');
        if (slash >= 0) {
            text = text.substring(0, slash);
        }
        int colon = text.lastIndexOf(':');
        if (colon > 0 && text.indexOf(':') == colon) {
            text = text.substring(0, colon);
        }
        return text;
    }
}
