package com.mifiservice.security;

import android.net.wifi.WifiConfiguration;

import com.mifiservice.device.WifiApController;

/** Reads the hotspot name and key so the owner can show a join QR code. Callers must re-authenticate first. */
public final class WifiShare {
    private WifiShare() {
    }

    /** @return {ssid, security ("WPA" or "nopass"), key}, or null when the hotspot is not configured. */
    public static String[] read() {
        try {
            WifiConfiguration configuration = WifiApController.getInstance().getWifiApConfiguration();
            if (configuration == null || configuration.SSID == null) {
                return null;
            }
            String ssid = unquote(configuration.SSID);
            String key = configuration.preSharedKey == null ? "" : unquote(configuration.preSharedKey);
            boolean open = key.length() == 0;
            return new String[] {ssid, open ? "nopass" : "WPA", open ? "" : key};
        } catch (Throwable ignored) {
            return null;
        }
    }

    static String unquote(String value) {
        if (value.length() >= 2 && value.charAt(0) == '"' && value.charAt(value.length() - 1) == '"') {
            return value.substring(1, value.length() - 1);
        }
        return value;
    }
}
