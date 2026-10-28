package org.json;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class JSONObject {
    private final LinkedHashMap<String, Object> values = new LinkedHashMap<String, Object>();

    public JSONObject() {
    }

    /** Test-stub parser (strict JSON subset: objects, arrays, strings, numbers, booleans, null). */
    public JSONObject(String text) throws JSONException {
        Parser parser = new Parser(text);
        Object value = parser.parseValue();
        parser.end();
        if (!(value instanceof JSONObject)) {
            throw new JSONException("not an object");
        }
        values.putAll(((JSONObject) value).values);
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

    public JSONObject optJSONObject(String key) {
        Object value = values.get(key);
        return value instanceof JSONObject ? (JSONObject) value : null;
    }

    public JSONArray optJSONArray(String key) {
        Object value = values.get(key);
        return value instanceof JSONArray ? (JSONArray) value : null;
    }

    public long optLong(String key, long fallback) {
        Object value = values.get(key);
        if (value instanceof Number) {
            return ((Number) value).longValue();
        }
        try {
            return Long.parseLong(String.valueOf(value));
        } catch (Exception exception) {
            return fallback;
        }
    }

    public int optInt(String key, int fallback) {
        return (int) optLong(key, fallback);
    }

    public int length() {
        return values.size();
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

    static String valueToString(Object value) {
        if (value == null) {
            return "null";
        }
        if (value instanceof String) {
            return "\"" + escape((String) value) + "\"";
        }
        return String.valueOf(value);
    }

    static String escape(String value) {
        StringBuilder out = new StringBuilder();
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (c == '\\' || c == '"') {
                out.append('\\').append(c);
            } else if (c < 0x20) {
                out.append(String.format("\\u%04x", (int) c));
            } else {
                out.append(c);
            }
        }
        return out.toString();
    }

    static final class Parser {
        private final String text;
        private int pos;

        Parser(String text) {
            this.text = text == null ? "" : text;
        }

        void end() throws JSONException {
            skip();
            if (pos != text.length()) {
                throw new JSONException("trailing data");
            }
        }

        Object parseValue() throws JSONException {
            skip();
            if (pos >= text.length()) {
                throw new JSONException("eof");
            }
            char c = text.charAt(pos);
            if (c == '{') {
                pos++;
                JSONObject object = new JSONObject();
                skip();
                if (peek() == '}') {
                    pos++;
                    return object;
                }
                while (true) {
                    skip();
                    String key = parseString();
                    skip();
                    expect(':');
                    object.put(key, parseValue());
                    skip();
                    if (peek() == ',') {
                        pos++;
                    } else {
                        expect('}');
                        return object;
                    }
                }
            }
            if (c == '[') {
                pos++;
                JSONArray array = new JSONArray();
                skip();
                if (peek() == ']') {
                    pos++;
                    return array;
                }
                while (true) {
                    array.put(parseValue());
                    skip();
                    if (peek() == ',') {
                        pos++;
                    } else {
                        expect(']');
                        return array;
                    }
                }
            }
            if (c == '"') {
                return parseString();
            }
            int start = pos;
            while (pos < text.length() && "-+.eE0123456789truefalsn".indexOf(text.charAt(pos)) >= 0) {
                pos++;
            }
            String token = text.substring(start, pos);
            if (token.equals("true")) { return Boolean.TRUE; }
            if (token.equals("false")) { return Boolean.FALSE; }
            if (token.equals("null")) { return null; }
            try {
                return token.indexOf('.') >= 0 || token.indexOf('e') >= 0 || token.indexOf('E') >= 0
                        ? (Object) Double.valueOf(token) : (Object) Long.valueOf(token);
            } catch (NumberFormatException e) {
                throw new JSONException("bad token");
            }
        }

        private String parseString() throws JSONException {
            expect('"');
            StringBuilder out = new StringBuilder();
            while (pos < text.length()) {
                char c = text.charAt(pos++);
                if (c == '"') {
                    return out.toString();
                }
                if (c == '\\') {
                    if (pos >= text.length()) { break; }
                    char e = text.charAt(pos++);
                    switch (e) {
                        case 'n': out.append('\n'); break;
                        case 't': out.append('\t'); break;
                        case 'r': out.append('\r'); break;
                        case 'b': out.append('\b'); break;
                        case 'f': out.append('\f'); break;
                        case 'u':
                            if (pos + 4 > text.length()) { throw new JSONException("bad escape"); }
                            out.append((char) Integer.parseInt(text.substring(pos, pos + 4), 16));
                            pos += 4;
                            break;
                        default: out.append(e);
                    }
                } else {
                    out.append(c);
                }
            }
            throw new JSONException("unterminated string");
        }

        private char peek() {
            return pos < text.length() ? text.charAt(pos) : '\0';
        }

        private void expect(char c) throws JSONException {
            if (peek() != c) {
                throw new JSONException("expected " + c);
            }
            pos++;
        }

        private void skip() {
            while (pos < text.length() && Character.isWhitespace(text.charAt(pos))) {
                pos++;
            }
        }
    }
}
