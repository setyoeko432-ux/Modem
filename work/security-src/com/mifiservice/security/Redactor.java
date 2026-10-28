package com.mifiservice.security;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/** Response redaction helpers; secret values are never returned by name. */
public final class Redactor {
    private Redactor() {
    }

    public static String configured(String value) {
        return value != null && value.length() > 0 ? "true" : "false";
    }

    public static String maskIdentifier(String value) {
        if (value == null || value.length() == 0) {
            return "";
        }
        if (value.length() <= 4) {
            return "****";
        }
        StringBuilder result = new StringBuilder(value.length());
        for (int i = 0; i < value.length() - 4; i++) {
            result.append('*');
        }
        result.append(value.substring(value.length() - 4));
        return result.toString();
    }

    public static void redactResponse(JSONObject response) {
        if (response == null) {
            return;
        }
        redactObject(response);
    }

    private static void redactObject(JSONObject object) {
        redactSecret(object, "pwd");
        redactSecret(object, "password");
        redactIdentifier(object, "imei");
        redactIdentifier(object, "imsi");
        redactIdentifier(object, "iccid");

        Object results = object.opt("results");
        if (results instanceof JSONArray) {
            redactArray((JSONArray) results);
        }
        Object profiles = object.opt("info_arr");
        if (profiles instanceof JSONArray) {
            redactArray((JSONArray) profiles);
        }
    }

    private static void redactArray(JSONArray array) {
        for (int i = 0; i < array.length(); i++) {
            Object value = array.opt(i);
            if (value instanceof JSONObject) {
                redactObject((JSONObject) value);
            } else if (value instanceof JSONArray) {
                redactArray((JSONArray) value);
            }
        }
    }

    private static void redactSecret(JSONObject object, String key) {
        if (object.has(key)) {
            String configured = configured(object.optString(key, ""));
            object.remove(key);
            if (!object.has("passwordConfigured")) {
                try {
                    object.put("passwordConfigured", configured);
                } catch (JSONException ignored) {
                    // A response object that cannot accept the marker is still scrubbed.
                }
            }
        }
    }

    private static void redactIdentifier(JSONObject object, String key) {
        if (object.has(key)) {
            try {
                object.put(key, maskIdentifier(object.optString(key, "")));
            } catch (JSONException ignored) {
                // Keep the original key out of logs; response construction owns the failure.
            }
        }
    }
}
