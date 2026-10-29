package com.mifiservice.security;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.json.JSONObject;

/**
 * One small JSON file holding recovery hash, remember-me selectors (hashed) and preferences.
 * Written atomically (temp file + rename). Never holds the admin password or any session token.
 */
public final class AuthStore {
    static final int MAX_BYTES = 64 * 1024;
    private static File file = new File("/data/mifi_auth.json");
    private static Long testNowSeconds;

    private AuthStore() {
    }

    public static synchronized void setFile(File target) {
        file = target;
    }

    public static synchronized void setNowSecondsForTests(Long now) {
        testNowSeconds = now;
    }

    static synchronized long nowSeconds() {
        return testNowSeconds != null ? testNowSeconds.longValue() : System.currentTimeMillis() / 1000L;
    }

    static synchronized JSONObject read() {
        return readFile(file);
    }

    static synchronized boolean write(JSONObject value) {
        return writeFile(file, value);
    }

    static synchronized JSONObject readFile(File file) {
        if (file == null || !file.isFile() || file.length() > MAX_BYTES) {
            return new JSONObject();
        }
        InputStream in = null;
        try {
            in = new FileInputStream(file);
            ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            byte[] chunk = new byte[4096];
            int n;
            while ((n = in.read(chunk)) > 0) {
                buffer.write(chunk, 0, n);
            }
            return new JSONObject(new String(buffer.toByteArray(), "UTF-8"));
        } catch (Exception exception) {
            // A corrupt file must never lock the admin out: behave as empty.
            return new JSONObject();
        } finally {
            close(in);
        }
    }

    static synchronized boolean writeFile(File file, JSONObject value) {
        if (file == null) {
            return false;
        }
        byte[] data;
        try {
            data = value.toString().getBytes("UTF-8");
        } catch (Exception exception) {
            return false;
        }
        if (data.length > MAX_BYTES) {
            return false;
        }
        File temp = new File(file.getPath() + ".tmp");
        OutputStream out = null;
        try {
            out = new FileOutputStream(temp);
            out.write(data);
            out.flush();
            close(out);
            out = null;
            temp.setReadable(false, false);
            temp.setWritable(false, false);
            temp.setReadable(true, true);
            temp.setWritable(true, true);
            if (!temp.renameTo(file)) {
                temp.delete();
                return false;
            }
            return true;
        } catch (IOException exception) {
            temp.delete();
            return false;
        } finally {
            close(out);
        }
    }

    private static void close(java.io.Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException ignored) {
                // nothing useful to do
            }
        }
    }
}
