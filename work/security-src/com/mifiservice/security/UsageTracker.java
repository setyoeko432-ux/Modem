package com.mifiservice.security;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import android.net.TrafficStats;

/**
 * Daily mobile-data usage, from android.net.TrafficStats (the same counters funcNo 1003 shows).
 * The OS counters restart at reboot; a lower reading is treated as a restart, so the new reading
 * is counted in full. The first ever reading is only a baseline (no history is invented).
 * While the modem clock is not set (before 2024) usage goes to an "undated" bucket instead of a wrong day.
 * Writes to flash are batched (at most one per FLUSH_SECONDS).
 */
public final class UsageTracker {
    static final int KEEP_DAYS = 62;
    static final long SAMPLE_MILLIS = 60L * 1000L;
    static final long FLUSH_SECONDS = 300L;
    static final long CLOCK_VALID_AFTER = 1704067200L; // 2024-01-01

    private static File file = new File("/data/mifi_usage.json");
    private static JSONObject cache;
    private static boolean dirty;
    private static long lastFlush;
    private static boolean started;

    private UsageTracker() {
    }

    public static synchronized void setFileForTests(File target) {
        file = target;
        cache = null;
        dirty = false;
        lastFlush = 0L;
    }

    /** Cheap and idempotent; called from the request path so tracking begins with the first portal request after boot. */
    public static synchronized void ensureStarted() {
        if (started) {
            return;
        }
        started = true;
        Thread worker = new Thread(new Runnable() {
            public void run() {
                while (true) {
                    try {
                        sampleFromSystem();
                    } catch (Throwable ignored) {
                        // keep sampling; one bad reading must not stop the tracker
                    }
                    try {
                        Thread.sleep(SAMPLE_MILLIS);
                    } catch (InterruptedException interrupted) {
                        return;
                    }
                }
            }
        }, "mifi-usage");
        worker.setDaemon(true);
        worker.start();
    }

    static void sampleFromSystem() {
        long rx = TrafficStats.getMobileRxBytes();
        long tx = TrafficStats.getMobileTxBytes();
        if (rx < 0L || tx < 0L) {
            return; // TrafficStats.UNSUPPORTED
        }
        sample(rx, tx, System.currentTimeMillis() / 1000L);
    }

    public static synchronized void sample(long rxBytes, long txBytes, long nowSeconds) {
        JSONObject store = load();
        JSONObject last = store.optJSONObject("last");
        long dRx = 0L;
        long dTx = 0L;
        try {
            if (last != null) {
                long lastRx = last.optLong("rx", 0L);
                long lastTx = last.optLong("tx", 0L);
                dRx = rxBytes >= lastRx ? rxBytes - lastRx : rxBytes;
                dTx = txBytes >= lastTx ? txBytes - lastTx : txBytes;
            } else {
                store.put("since", nowSeconds);
                dirty = true;
            }
            JSONObject marker = new JSONObject();
            marker.put("rx", rxBytes);
            marker.put("tx", txBytes);
            store.put("last", marker);
            if (dRx > 0L || dTx > 0L) {
                add(store, nowSeconds >= CLOCK_VALID_AFTER ? dayKey(nowSeconds) : "undated", dRx, dTx);
                prune(store);
                dirty = true;
            }
        } catch (Exception ignored) {
            return;
        }
        if (dirty && (lastFlush == 0L || nowSeconds - lastFlush >= FLUSH_SECONDS || nowSeconds < lastFlush)) {
            flushLocked(nowSeconds);
        }
    }

    public static synchronized void flush() {
        flushLocked(System.currentTimeMillis() / 1000L);
    }

    /** Reading API: days ascending, bytes converted to KB (the unit funcNo 1003 uses). */
    public static synchronized JSONObject snapshot() {
        JSONObject store = load();
        JSONObject out = new JSONObject();
        JSONArray days = new JSONArray();
        JSONObject map = store.optJSONObject("days");
        long undatedKb = 0L;
        try {
            if (map != null) {
                List<String> keys = new ArrayList<String>();
                Iterator<String> it = map.keys();
                while (it.hasNext()) {
                    keys.add(it.next());
                }
                Collections.sort(keys);
                for (int i = 0; i < keys.size(); i++) {
                    String key = keys.get(i);
                    JSONObject d = map.optJSONObject(key);
                    if (d == null) {
                        continue;
                    }
                    if ("undated".equals(key)) {
                        undatedKb = (d.optLong("rx", 0L) + d.optLong("tx", 0L)) / 1024L;
                        continue;
                    }
                    JSONObject item = new JSONObject();
                    item.put("d", key);
                    item.put("rx", d.optLong("rx", 0L) / 1024L);
                    item.put("tx", d.optLong("tx", 0L) / 1024L);
                    days.put(item);
                }
            }
            out.put("days", days);
            out.put("undatedKB", undatedKb);
            out.put("clockOk", System.currentTimeMillis() / 1000L >= CLOCK_VALID_AFTER ? "1" : "0");
            out.put("today", dayKey(System.currentTimeMillis() / 1000L));
            out.put("since", store.optLong("since", 0L));
        } catch (Exception ignored) {
            // return what we have
        }
        return out;
    }

    private static JSONObject load() {
        if (cache == null) {
            cache = AuthStore.readFile(file);
        }
        return cache;
    }

    private static void flushLocked(long nowSeconds) {
        if (cache != null && AuthStore.writeFile(file, cache)) {
            dirty = false;
            lastFlush = nowSeconds;
        }
    }

    private static void add(JSONObject store, String key, long rx, long tx) throws Exception {
        JSONObject days = store.optJSONObject("days");
        if (days == null) {
            days = new JSONObject();
            store.put("days", days);
        }
        JSONObject day = days.optJSONObject(key);
        if (day == null) {
            day = new JSONObject();
            days.put(key, day);
        }
        day.put("rx", day.optLong("rx", 0L) + rx);
        day.put("tx", day.optLong("tx", 0L) + tx);
    }

    private static void prune(JSONObject store) {
        JSONObject days = store.optJSONObject("days");
        if (days == null) {
            return;
        }
        List<String> keys = new ArrayList<String>();
        Iterator<String> it = days.keys();
        while (it.hasNext()) {
            String key = it.next();
            if (!"undated".equals(key)) {
                keys.add(key);
            }
        }
        Collections.sort(keys);
        for (int i = 0; i < keys.size() - KEEP_DAYS; i++) {
            days.remove(keys.get(i));
        }
    }

    static String dayKey(long seconds) {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(seconds * 1000L));
    }
}
