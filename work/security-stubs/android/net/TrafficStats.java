package android.net;

/** Host stub. Tests set the counters; on a device the real class is used. */
public class TrafficStats {
    public static final long UNSUPPORTED = -1L;
    public static long rx = 0L;
    public static long tx = 0L;

    public static long getMobileRxBytes() {
        return rx;
    }

    public static long getMobileTxBytes() {
        return tx;
    }
}
