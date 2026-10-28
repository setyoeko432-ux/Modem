package com.mifiservice.security;

import java.security.MessageDigest;
import java.security.SecureRandom;

/** Tiny helpers shared by the credential stores. */
final class Crypto {
    private static final SecureRandom RANDOM = new SecureRandom();

    private Crypto() {
    }

    static byte[] random(int bytes) {
        byte[] result = new byte[bytes];
        RANDOM.nextBytes(result);
        return result;
    }

    static String hex(byte[] bytes) {
        final char[] digits = "0123456789abcdef".toCharArray();
        char[] out = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            int v = bytes[i] & 0xff;
            out[i * 2] = digits[v >>> 4];
            out[i * 2 + 1] = digits[v & 0x0f];
        }
        return new String(out);
    }

    static String sha256Hex(String salt, String value) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.update((salt + ":" + value).getBytes("UTF-8"));
            return hex(digest.digest());
        } catch (Exception exception) {
            throw new IllegalStateException("SHA-256 unavailable");
        }
    }

    static boolean constantTimeEquals(String a, String b) {
        if (a == null || b == null) {
            return false;
        }
        try {
            return MessageDigest.isEqual(a.getBytes("UTF-8"), b.getBytes("UTF-8"));
        } catch (Exception exception) {
            return false;
        }
    }

    static boolean isHex(String value, int length) {
        if (value == null || value.length() != length) {
            return false;
        }
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f'))) {
                return false;
            }
        }
        return true;
    }
}
