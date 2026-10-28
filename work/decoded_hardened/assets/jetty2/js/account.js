var RM_TEXT = {
    "INVALID_INPUT:password": "That is not the current password.",
    "INVALID_INPUT:refreshSeconds": "Refresh must be between 2 and 300 seconds.",
    "INVALID_INPUT:lang": "Unsupported language.",
    "INVALID_INPUT:prefs": "Nothing to save.",
    "STORAGE": "Could not save on the modem. Try again.",
    "NOT_FOUND": "That session is already gone."
};

function renderSessions(rows) {
    var body = $("#sessions tbody");
    body.empty();
    body.append("<tr><th>Address</th><th>Signed in</th><th>Idle</th><th></th></tr>");
    for (var i = 0; i < rows.length; i++) {
        var r = rows[i];
        var tr = $("<tr></tr>");
        tr.append($("<td></td>").text(r.address + (r.current == "1" ? " (this browser)" : "")));
        tr.append($("<td></td>").text(Math.round(r.ageSeconds / 60) + " min ago"));
        tr.append($("<td></td>").text(Math.round(r.idleSeconds / 60) + " min"));
        var cell = $("<td></td>");
        if (r.current != "1") {
            var btn = $('<input type="button" class="btn" value="Sign out" />');
            (function(id) {
                btn.bind("click", function() {
                    request({funcNo: 1063, id: id}, function(data) { loadSessions(); });
                });
            })(r.id);
            cell.append(btn);
        }
        tr.append(cell);
        body.append(tr);
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

$("#newCode").bind("click", function() {
    var pwd = $("#confirmPwd").val();
    if (pwd == "") { Alert("Enter your current password first."); return; }
    request({funcNo: 1067, password: pwd}, function(data) {
        $("#confirmPwd").val("");
        if (data.flag == "1" && data.results[0]) {
            $("#recoveryValue").text(data.results[0].recoveryCode);
            $("#recoveryBox").show();
            $("#recoveryStatus").text("A recovery code is set. Any older code no longer works.");
        } else {
            Alert(RM_TEXT[data.error_info] || data.error_info);
        }
    });
});

$("#savePrefs").bind("click", function() {
    var n = parseInt($("#pRefresh").val(), 10);
    if (isNaN(n) || n < 2 || n > 300) { Alert(RM_TEXT["INVALID_INPUT:refreshSeconds"]); return; }
    var prefs = {lang: $("#pLang").val(), theme: $("#pTheme").val(), refreshSeconds: n, speedUnit: $("#pUnit").val()};
    request({funcNo: 1065, prefs: prefs}, function(data) {
        Alert(data.flag == "1" ? "Saved." : (RM_TEXT[data.error_info] || data.error_info));
    });
});

$("#logout").bind("click", function() {
    request({funcNo: 1061}, function(data) { window.top.location = "index.html"; });
});

$(function() {
    $("body").show();
    loadSessions();
    loadPrefs();
});
