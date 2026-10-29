var RM_TEXT = {
    "INVALID_INPUT:password": "That is not the current password.",
    "INVALID_INPUT:refreshSeconds": "Refresh must be between 2 and 300 seconds.",
    "INVALID_INPUT:lang": "Unsupported language.",
    "INVALID_INPUT:prefs": "Nothing to save.",
    "STORAGE": "Could not save on the modem. Try again.",
    "NOT_FOUND": "That session is already gone."
};

function renderSessions(rows) {
    var $thead = $("#sessions thead");
    if ($thead.length === 0) {
        $thead = $("<thead>").prependTo("#sessions");
    }
    $thead.empty();
    var $headerTr = $("<tr>");
    $("<th>").text("Address").appendTo($headerTr);
    $("<th>").text("Signed in").appendTo($headerTr);
    $("<th>").text("Idle").appendTo($headerTr);
    $("<th>").text("Action").appendTo($headerTr);
    $headerTr.appendTo($thead);

    var $tbody = $("#sessions tbody");
    if ($tbody.length === 0) {
        $tbody = $("<tbody>").appendTo("#sessions");
    }
    $tbody.empty();

    if (!rows || !rows.length) {
        var $emptyTr = $("<tr>");
        $("<td colspan='4'>").text("No active sessions").appendTo($emptyTr);
        $emptyTr.appendTo($tbody);
        return;
    }

    for (var i = 0; i < rows.length; i++) {
        var r = rows[i];
        var $tr = $("<tr>");
        var addrText = (r.address || "Unknown") + (r.current == "1" ? " (this browser)" : "");
        $("<td>").text(addrText).appendTo($tr);
        $("<td>").text(Math.round((r.ageSeconds || 0) / 60) + " min ago").appendTo($tr);
        $("<td>").text(Math.round((r.idleSeconds || 0) / 60) + " min").appendTo($tr);

        var $cell = $("<td>");
        if (r.current != "1") {
            var $btn = $("<input>")
                .attr({ type: "button", class: "m3-btn m3-btn-outlined", value: "Revoke" });
            (function(id) {
                $btn.on("click", function() {
                    request({funcNo: 1063, id: id}, function(data) { loadSessions(); });
                });
            })(r.id);
            $cell.append($btn);
        } else {
            $("<span>").addClass("m3-chip m3-chip-success").text("Active").appendTo($cell);
        }
        $tr.append($cell);
        $tbody.append($tr);
    }
}

function loadSessions() {
    request({funcNo: 1062}, function(data) {
        if (data.flag == "1") { renderSessions(data.results); }
    });
}

function loadPrefs() {
    request({funcNo: 1064}, function(data) {
        if (data.flag != "1" || !data.results[0]) { return; }
        var p = data.results[0].prefs || {};
        if (p.lang) { $("#pLang").val(p.lang); }
        if (p.theme) { $("#pTheme").val(p.theme); }
        if (p.refreshSeconds) { $("#pRefresh").val(p.refreshSeconds); }
        if (p.speedUnit) { $("#pUnit").val(p.speedUnit); }
        $("#recoveryStatus").text(data.results[0].recoveryConfigured == "1"
            ? "A recovery code is set." : "No recovery code yet. Create one so a forgotten password is not a lock-out.");
    });
}

function savePrefs() {
    var p = {
        lang: $("#pLang").val(),
        theme: $("#pTheme").val(),
        refreshSeconds: parseInt($("#pRefresh").val(), 10) || 5,
        speedUnit: $("#pUnit").val()
    };
    request({funcNo: 1065, prefs: p}, function(data) {
        if (data.flag == "1") {
            Alert("Preferences saved.");
            if (p.theme === "dark" || p.theme === "light") {
                if (window.M3Theme) { window.M3Theme.setTheme(p.theme); }
            }
        } else {
            Alert(RM_TEXT[data.error_info] || data.error_info || "Could not save.");
        }
    });
}

function newCode() {
    var pwd = $("#confirmPwd").val();
    if (pwd == "") { Alert("Enter your current password first."); return; }
    request({funcNo: 1067, pwd: pwd}, function(data) {
        if (data.flag == "1" && data.results && data.results[0] && data.results[0].code) {
            $("#recoveryValue").text(data.results[0].code);
            $("#recoveryBox").show();
            $("#confirmPwd").val("");
            loadPrefs();
        } else {
            Alert(RM_TEXT[data.error_info] || data.error_info || "Could not create recovery code.");
        }
    });
}

$(function() {
    loadSessions();
    loadPrefs();
    $("#logout").on("click", function() {
        request({funcNo: 1061}, function() { window.location = "index.html"; });
    });
    $("#savePrefs").on("click", savePrefs);
    $("#newCode").on("click", newCode);
    $("body").show();
});
