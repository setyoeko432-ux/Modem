$(function(){
    setInterval(update, 5000);
    update();
    setInterval(update2, 5000);
    update2();
    init();

    // Speedometer & Signal Telemetry
    setInterval(updateTrafficAndSpeed, 2000);
    setInterval(updateSignalInfo, 5000);
    updateTrafficAndSpeed();
    updateSignalInfo();
});

var prevDownKB = 0;
var prevUpKB = 0;
var lastTime = 0;

function init(){
    var conn_mode = $.session.get("conn_mode");
    if(conn_mode == "1"){
        $("#manual").attr("selected","selected");
        $("#auto").removeAttr("selected");
    } else {
        $("#auto").attr("selected","selected");
        $("#manual").removeAttr("selected");
    }
}

function update2(){
    var param = {funcNo: 1002};
    request(param, function(data){
        if(data.flag == "1"){
            var result = data.results[0];
            if(result.IP) $("#mifi_ip").html(result.IP);
            if(result.mask) $("#g3_mask").html(result.mask);
            if(result.dns1) $("#g3_dns").html(result.dns1);
            if(result.dns2) $("#g3_dns2").html(result.dns2);
            if(result.ssid) $("#ssid").html(result.ssid);
            if(result.wlan_ip) $("#wlan_ip").html(result.wlan_ip);
            if(result.pwd) $("#password").html(result.pwd);
        }
    });
}

function update(){
    var param = {funcNo: 1003};
    request(param, function(data){
        if(data.flag == "1"){
            var result = data.results[0];
            $("#mifi_tx_data").html(parseInt(result.up_bytes) + " KB");
            $("#mifi_rx_data").html(parseInt(result.down_bytes) + " KB");
            $("#client_num").html(result.client_num + " / " + result.maxSta);
        }
    });
}

function updateTrafficAndSpeed(){
    var param = {funcNo: 1003};
    var currentTime = new Date().getTime();

    request(param, function(data){
        if(data.flag == "1"){
            var result = data.results[0];
            var currentDownKB = parseInt(result.down_bytes) || 0;
            var currentUpKB = parseInt(result.up_bytes) || 0;

            if(lastTime > 0){
                var timeDiff = (currentTime - lastTime) / 1000;
                if(timeDiff > 0){
                    var speedDown = (currentDownKB - prevDownKB) / timeDiff;
                    var speedUp = (currentUpKB - prevUpKB) / timeDiff;

                    if(speedDown < 0) speedDown = 0;
                    if(speedUp < 0) speedUp = 0;

                    $("#dl_speed").html(formatSpeed(speedDown));
                    $("#ul_speed").html(formatSpeed(speedUp));
                }
            }

            prevDownKB = currentDownKB;
            prevUpKB = currentUpKB;
            lastTime = currentTime;
        }
    });
}

function updateSignalInfo(){
    var param = { funcNo: 1029 };
    request(param, function(data){
        if(data.flag == "1"){
            var result = data.results[0];
            var dbmRaw = parseInt(result.dbm) || 0;

            if(dbmRaw != 0){
                var dbmVal = dbmRaw < 0 ? dbmRaw : -dbmRaw;
                $("#dbm_val").html(dbmVal + '<span class="speed-unit"> dBm</span>');

                var badge = $("#signal_badge");
                if(dbmVal >= -85){
                    badge.attr("class", "badge-quality badge-excellent").text("Sangat Bagus (Redaman Rendah)");
                } else if(dbmVal >= -95){
                    badge.attr("class", "badge-quality badge-good").text("Bagus (Redaman Sedang)");
                } else if(dbmVal >= -105){
                    badge.attr("class", "badge-quality badge-fair").text("Cukup (Redaman Tinggi)");
                } else {
                    badge.attr("class", "badge-quality badge-poor").text("Sinyal Lemah / Redaman Tinggi");
                }
            } else {
                $("#dbm_val").html('-<span class="speed-unit"> dBm</span>');
                $("#signal_badge").attr("class", "badge-quality badge-fair").text("Membaca Sinyal...");
            }
        }
    });
}

function formatSpeed(speedKB){
    if(speedKB >= 1024){
        return (speedKB / 1024).toFixed(2) + '<span class="speed-unit"> MB/s</span>';
    } else {
        return speedKB.toFixed(1) + '<span class="speed-unit"> KB/s</span>';
    }
}

$("#connect").bind('change', function (e) {
    if($("#manual").attr("selected") == "selected"){
        $("#manual").attr("selected","selected");
        $("#auto").removeAttr("selected");
    } else {
        $("#auto").attr("selected","selected");
        $("#manual").removeAttr("selected");
    }
});

$("#apply").bind('click', function (e) {
    var connmode;
    if($("#auto").attr("selected") == "selected"){
        connmode = $("#auto").val();
    } else if($("#manual").attr("selected") == "selected"){
        connmode = $("#manual").val();
    }
    var param = {funcNo: 1004, conn_mode: connmode};
    request(param, function(data){
        if(data.flag == "1"){
            $.session.set("conn_mode", connmode);
            Alert("Perintah berhasil dijalankan!");
        } else {
            Alert("Gagal menjalankan perintah!");
        }
    });
});

$("#btn_reconnect").bind('click', function(){
    var param = {funcNo: 1004, conn_mode: "0"};
    request(param, function(data){
        if(data.flag == "1"){
            Alert("Koneksi berhasil diperbarui!");
        } else {
            Alert("Gagal memperbarui koneksi!");
        }
    });
});
