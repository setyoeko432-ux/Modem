package android.net.wifi;

import java.util.BitSet;

/** Host stub mirroring the public API 19 shape the portal reads (KeyMgmt is a nested class there too). */
public class WifiConfiguration {
    public static class KeyMgmt {
        public static final int NONE = 0;
        public static final int WPA_PSK = 1;
    }

    public String SSID;
    public String preSharedKey;
    public BitSet allowedKeyManagement = new BitSet();
}
