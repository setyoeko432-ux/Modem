package com.mifiservice.device;

import android.net.wifi.WifiConfiguration;

/** Host stub: same signatures as the firmware class (see WifiApController.smali). */
public class WifiApController {
    public static WifiConfiguration configuration;
    public static final WifiApController INSTANCE = new WifiApController();

    public static WifiApController getInstance() {
        return INSTANCE;
    }

    public WifiConfiguration getWifiApConfiguration() {
        return configuration;
    }
}
