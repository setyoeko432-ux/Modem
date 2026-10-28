package org.json;

import java.util.ArrayList;
import java.util.List;

public class JSONArray {
    private final List<Object> values = new ArrayList<Object>();

    public JSONArray put(Object value) {
        values.add(value);
        return this;
    }

    public int length() {
        return values.size();
    }

    public Object opt(int index) {
        return index < 0 || index >= values.size() ? null : values.get(index);
    }

    public String toString() {
        StringBuilder result = new StringBuilder("[");
        for (int i = 0; i < values.size(); i++) {
            if (i > 0) {
                result.append(',');
            }
            result.append(String.valueOf(values.get(i)));
        }
        return result.append(']').toString();
    }
}
