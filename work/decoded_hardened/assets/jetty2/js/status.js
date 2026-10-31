/* status.js — M3 Dashboard
   Polls: 1001 (signal/operator), 1002 (IP/DNS/SSID), 1003 (traffic/clients),
          1011 (device list), 1015 (SIM)
   Interval: 5 s for traffic/signal, 15 s for devices/SIM
*/

/* ── helpers ──────────────────────────────────────────────────── */
function escapeHtml(s) {
    if (s == null || s === "") return "—";
    return String(s)
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;")
        .replace(/'/g, "&#39;");
}

var FMT = {
    bytes: function(kb) {
        kb = parseInt(kb) || 0;
        if (kb < 1024) return { v: kb, u: "KB" };
        var mb = kb / 1024;
        if (mb < 1024) return { v: mb.toFixed(1), u: "MB" };
        return { v: (mb / 1024).toFixed(2), u: "GB" };
    },
    speed: function(deltakb) {
        if (deltakb < 0) deltakb = 0;
        if (deltakb < 1024) return { v: deltakb.toFixed(1), u: "KB/s" };
        return { v: (deltakb / 1024).toFixed(2), u: "MB/s" };
    }
};

/* ── traffic state for speed calculation ─────────────────────── */
var _prevRx = null, _prevTx = null, _prevTime = null;

/* ── 1001: signal / operator / net status ────────────────────── */
function updateSignal() {
    request({funcNo: 1001}, function(data) {
        if (data.flag !== "1") return;
        var r = data.results[0];

        /* signal bars */
        var rssi = parseInt(r.rssi) || 0;
        var sig = document.getElementById("hero-signal");
        if (sig) {
            sig.className = "signal-bars rssi" + (rssi > 5 ? 5 : rssi < 0 ? 0 : rssi);
        }

        /* netmode */
        if (r.netmode) $("#hero-netmode").text(r.netmode);

        /* operator */
        if (r.oper) $("#hero-operator").text(r.oper);

        /* connection status chip */
        if (r.netstatus) {
            var connected = (r.netstatus.toLowerCase() === "connected");
            var statusBadge = $("#hero-status");
            var dot = $("#hero-dot");
            $("#hero-status-text").text(connected ? "Connected" : "Disconnected");
            statusBadge.removeClass("hero-badge-connected hero-badge-disconnected");
            statusBadge.addClass(connected ? "hero-badge-connected" : "hero-badge-disconnected");
            dot.removeClass("disconnected");
            if (!connected) dot.addClass("disconnected");
        }
    });
}

/* ── 1002: IP / DNS / Wi-Fi ──────────────────────────────────── */
function updateNetwork() {
    request({funcNo: 1002}, function(data) {
        if (data.flag !== "1") return;
        var r = data.results[0];
        if (r.IP)     $("#mifi_ip").text(r.IP);
        if (r.mask)   $("#g3_mask").text(r.mask);
        if (r.dns1)   $("#g3_dns").text(r.dns1);
        if (r.dns2)   $("#g3_dns2").text(r.dns2);
        if (r.ssid)   $("#ssid").text(r.ssid);
        if (r.wlan_ip)$("#wlan_ip").text(r.wlan_ip);
    });
}

/* ── 1003: traffic + clients ─────────────────────────────────── */
function updateTraffic() {
    request({funcNo: 1003}, function(data) {
        if (data.flag !== "1") return;
        var r = data.results[0];
        var nowRx = parseInt(r.down_bytes) || 0;
        var nowTx = parseInt(r.up_bytes)   || 0;
        var nowT  = Date.now();

        /* totals */
        var rxF = FMT.bytes(nowRx);
        var txF = FMT.bytes(nowTx);
        $("#rx-total").text(rxF.v + " " + rxF.u);
        $("#tx-total").text(txF.v + " " + txF.u);

        /* live speed */
        if (_prevRx !== null && _prevTime !== null) {
            var dt = (nowT - _prevTime) / 1000;
            if (dt > 0) {
                var rxDelta = (nowRx - _prevRx) / dt;
                var txDelta = (nowTx - _prevTx) / dt;
                var rxS = FMT.speed(rxDelta);
                var txS = FMT.speed(txDelta);
                $("#rx-speed").text(rxS.v);
                $("#rx-unit").text(" " + rxS.u);
                $("#tx-speed").text(txS.v);
                $("#tx-unit").text(" " + txS.u);
            }
        } else {
            /* first tick — show totals as context */
            $("#rx-speed").text("—");
            $("#tx-speed").text("—");
        }
        _prevRx = nowRx;
        _prevTx = nowTx;
        _prevTime = nowT;

        /* clients */
        var cnt = parseInt(r.client_num) || 0;
        var max = parseInt(r.maxSta)     || 10;
        $("#client-count").text(cnt);
        $("#client-max").text(" / " + max);
    });
}

/* ── 1011: connected devices ─────────────────────────────────── */
function updateDevices() {
    request({funcNo: 1011}, function(data) {
        if (data.flag !== "1") return;
        var r = data.results[0];
        var arr = r.device_arr || [];
        var $tbody = $("#devices-tbody");
        $tbody.empty();

        if (!arr.length) {
            $tbody.append('<tr><td colspan="5" style="text-align:center;padding:20px;color:var(--md-sys-color-on-surface-variant);">No devices connected</td></tr>');
            $("#devices-count-chip").text("0 devices");
            return;
        }

        $("#devices-count-chip").text(arr.length + (arr.length === 1 ? " device" : " devices"));

        for (var i = 0; i < arr.length; i++) {
            var d = arr[i] || {};
            var type = escapeHtml(d.media || "");
            var typeBadge = type !== "—" ?
                '<span class="device-type-badge">' + type + '</span>' : "—";
            var $tr = $("<tr>");
            $("<td>").text(i + 1).appendTo($tr);
            $("<td>").text(d.name || "Unknown").appendTo($tr);
            $("<td>").text(d.ip   || "—").appendTo($tr);
            $("<td>").css("font-family", "monospace").text(d.mac || "—").appendTo($tr);
            $("<td>").html(typeBadge).appendTo($tr);
            $tbody.append($tr);
        }
    });
}

/* ── 1015: SIM info ──────────────────────────────────────────── */
function updateSim() {
    request({funcNo: 1015}, function(data) {
        if (data.flag !== "1") return;
        var r = data.results[0];

        /* status badge */
        var st = (r.sim_status || "").toLowerCase();
        var badge = $("#sim-status-badge");
        badge.removeClass("m3-chip-success m3-chip-error m3-chip-warning");
        if (st === "sim_ready" || st === "ready") {
            badge.addClass("m3-chip-success").text("Ready");
        } else if (st === "no_sim" || st === "nosim") {
            badge.addClass("m3-chip-error").text("No SIM");
        } else {
            badge.addClass("m3-chip-warning").text(r.sim_status || "Unknown");
        }

        if (r.imsi)  $("#sim-imsi").text(r.imsi);
        if (r.iccid) $("#sim-iccid").text(r.iccid);
    });
}

/* ── connection mode (init from session) ─────────────────────── */
function initConnMode() {
    var cm = $.session.get("conn_mode");
    if (cm === "1") {
        $("#connect").val("1");
    } else {
        $("#connect").val("0");
    }
}

/* ── apply button ────────────────────────────────────────────── */
$("#apply").bind("click", function() {
    var val = $("#connect").val();
    request({funcNo: 1004, conn_mode: val}, function(data) {
        if (data.flag === "1") {
            $.session.set("conn_mode", val);
            Alert(mifi_translate("pass"));
        } else {
            Alert(mifi_translate(data.error_info));
        }
    });
});

/* ── boot ────────────────────────────────────────────────────── */
$(function() {
    initConnMode();
    /* immediate first-load */
    updateSignal();
    updateNetwork();
    updateTraffic();
    updateDevices();
    updateSim();
    /* fast poll: signal + traffic every 5 s */
    setInterval(updateSignal,  5000);
    setInterval(updateTraffic, 5000);
    /* slower: network + devices + SIM every 15 s */
    setInterval(updateNetwork, 15000);
    setInterval(updateDevices, 15000);
    setInterval(updateSim,     15000);
});
