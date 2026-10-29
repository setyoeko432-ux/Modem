$(function() {
    init2();
    InitMacList();
    bindingEvents();
});

function InitMacList() {
    var param = { funcNo: 1052 };
    request(param, function(data) {
        var flag = data.flag;
        var error_info = data.error_info;

        if (flag == "1") {
            var result = data.results[0];
            var nType = result.type; // black list: 0, white list: 1, close: 3

            var $osel = $("#selectMactype");
            $osel.val(nType);

            showMacList(result.info_arr);
        } else {
            Alert(mifi_translate(error_info));
        }
    });
}

function showMacList(deviceAttr) {
    if (!deviceAttr || !deviceAttr.length) {
        return;
    }

    var $tbody = $("#table tbody");
    if ($tbody.length === 0) {
        $tbody = $("<tbody>").appendTo("#table");
    } else {
        $tbody.empty();
    }

    for (var i = 0; i < deviceAttr.length; i++) {
        var item = deviceAttr[i];
        var itemIndex = i + 1;

        var $tr = $("<tr>");
        $("<td>").text(item.id || itemIndex).appendTo($tr);

        var $inputTd = $("<td>");
        $("<input>")
            .attr({
                type: "text",
                id: "Macinput" + (item.id || itemIndex),
                name: "wifi.mac",
                maxlength: "17",
                class: "m3-input"
            })
            .val(item.macaddr || "")
            .appendTo($inputTd);
        $inputTd.appendTo($tr);

        var $btnTd = $("<td>");
        $("<input>")
            .attr({
                type: "button",
                id: "set" + (item.id || itemIndex),
                class: "m3-btn m3-btn-tonal set-mac-btn"
            })
            .val(mifi_translate('Set') || 'Set')
            .appendTo($btnTd);
        $btnTd.appendTo($tr);

        $tr.appendTo($tbody);
    }

    // Save All Action Row
    var $saveTr = $("<tr>");
    $("<td>").appendTo($saveTr);
    var $saveTd = $("<td>");
    $("<input>")
        .attr({
            type: "submit",
            id: "Submit1",
            class: "m3-btn m3-btn-primary",
            value: mifi_translate('Save All') || 'Save All',
            lang: "Save All"
        })
        .appendTo($saveTd);
    $saveTd.appendTo($saveTr);
    $("<td>").appendTo($saveTr);
    $saveTr.appendTo($tbody);

    $("#list").show();
}

function setMacfilterList() {
    var stat = $("#selectMactype").val();
    var param = { funcNo: 1053, type: stat };
    request(param, function(data) {
        if (data.flag == "1") {
            commitMacfilter();
        } else {
            Alert(mifi_translate(data.error_info));
        }
    });
}

function validate_mac(ch) {
    if (ch >= 65 && ch <= 90) return true;
    if (ch >= 97 && ch <= 122) return true;
    if (ch >= 48 && ch <= 58) return true;
    return false;
}

function setMacfilterMac(nId, nMac) {
    var i, c;

    if (nMac.length == 17) {
        if (nMac.charAt(2) != ':' || nMac.charAt(5) != ':' || nMac.charAt(8) != ':' || nMac.charAt(11) != ':' || nMac.charAt(14) != ':') {
            Alert(mifi_translate('invalidMac'));
            return;
        }
        for (i = 0; i < nMac.length; ++i) {
            c = nMac.charCodeAt(i);
            if (!validate_mac(c)) {
                Alert(mifi_translate('invalidMac'));
                return;
            }
        }
    } else if (nMac.length == 0) {
        // Empty allowed
    } else {
        Alert(mifi_translate('invalidMac'));
        return;
    }

    var param = { funcNo: 1054, id: nId, mac: nMac };
    request(param, function(data) {
        if (data.flag == "1") {
            Alert(mifi_translate('pass'));
        } else {
            Alert(mifi_translate(data.error_info));
        }
    });
}

function commitMacfilter() {
    var param = { funcNo: 1055 };
    request(param, function(data) {
        if (data.flag == "1") {
            Alert(mifi_translate('pass'));
        } else {
            Alert(mifi_translate(data.error_info));
        }
    });
}

// Event Delegation (Replaced legacy event handlers)
function bindingEvents() {
    $(document).on("click", ".set-mac-btn", function() {
        var btnId = $(this).attr("id"); // e.g. "set1"
        var idNum = btnId.replace("set", "");
        var macVal = $("#Macinput" + idNum).val();
        setMacfilterMac(idNum, macVal);
    });

    $(document).on("click", "#Submit1", function(e) {
        e.preventDefault();
        setMacfilterList();
    });
}

function showCurrentDev(deviceAttr) {
    if (!deviceAttr || !deviceAttr.length) {
        $("#list2").show();
        $("#noData").show();
        $("#table2").hide();
        return;
    }

    var $tbody = $("#table2 tbody");
    if ($tbody.length === 0) {
        $tbody = $("<tbody>").appendTo("#table2");
    } else {
        $tbody.empty();
    }

    for (var i = 0; i < deviceAttr.length; i++) {
        var dev = deviceAttr[i] || {};
        var $tr = $("<tr>");
        $("<td>").text(i + 1).appendTo($tr);
        $("<td>").text(dev.name || "-").appendTo($tr);
        $("<td>").text(dev.ip || "-").appendTo($tr);
        $("<td>").text(dev.mac || "-").appendTo($tr);
        $("<td>").text(dev.media || "-").appendTo($tr);
        $tr.appendTo($tbody);
    }

    $("#table2").show();
    $("#noData").hide();
    $("#list2").show();
}

function init2() {
    var param = { funcNo: 1011 };
    request(param, function(data) {
        if (data.flag == "1" && data.results && data.results[0]) {
            var result = data.results[0];
            if (result.device_arr) {
                showCurrentDev(result.device_arr);
            }
        }
    });
}
