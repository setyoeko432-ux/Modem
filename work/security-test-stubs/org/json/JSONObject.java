package org.json;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class JSONObject {
    private final LinkedHashMap<String, Object> values = new LinkedHashMap<String, Object>();

    public JSONObject() {
    }

    public JSONObject put(String key, Object value) throws JSONException {
        if (key == null) {
            throw new JSONException("null key");
        }
        values.put(key, value);
        return this;
    }

    public Object opt(String key) {
        return values.get(key);
    }

    public String optString(String key, String fallback) {
        Object value = values.get(key);
        return value == null ? fallback : String.valueOf(value);
    }

    public int getInt(String key) throws JSONException {
        Object value = values.get(key);
        if (value instanceof Number) {
            return ((Number) value).intValue();
        }
        try {
            return Integer.parseInt(String.valueOf(value));
        } catch (Exception exception) {
            throw new JSONException(key);
        }
    }

    public boolean has(String key) {
        return values.containsKey(key);
    }

    public Object remove(String key) {
        return values.remove(key);
    }

    public Iterator<String> keys() {
        return values.keySet().iterator();
    }

    public String toString() {
        StringBuilder result = new StringBuilder("{");
        boolean first = true;
        for (Map.Entry<String, Object> entry : values.entrySet()) {
            if (!first) {
                result.append(',');
            }
            first = false;
            result.append('"').append(escape(entry.getKey())).append('"').append(':');
            result.append(valueToString(entry.getValue()));
        }
        return result.append('}').toString();
    }

    private static String valueToString(Object value) {
        if (value == null) {
            return "null";
        }
        if (value instanceof String) {
            return "\"" + escape((String) value) + "\"";
        }
        return String.valueOf(value);
    }

    private static String escape(String value) {
        return value.replace("\\", "\\\\").replace("\"", "\\\"");
    }
}
