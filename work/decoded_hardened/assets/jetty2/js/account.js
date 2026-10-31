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
        if (p.lang)           { $("#pLang").val(p.lang); }
        if (p.refreshSeconds) { $("#pRefresh").val(p.refreshSeconds); }
        if (p.speedUnit)      { $("#pUnit").val(p.speedUnit); }
        applyPrefsToAppearance(p);
        $("#recoveryStatus")
            .removeClass("m3-chip-success m3-chip-warning")
            .addClass(data.results[0].recoveryConfigured == "1" ? "m3-chip-success" : "m3-chip-warning")
            .text(data.results[0].recoveryConfigured == "1"
                ? "A recovery code is set."
                : "No recovery code — create one to avoid a lock-out.");
    });
}

function savePrefs() {
    var p = {
        lang:           $("#pLang").val(),
        refreshSeconds: parseInt($("#pRefresh").val(), 10) || 5,
        speedUnit:      $("#pUnit").val()
    };
    request({funcNo: 1065, prefs: p}, function(data) {
        if (data.flag == "1") {
            Alert("Preferences saved.");
        } else {
            Alert(RM_TEXT[data.error_info] || data.error_info || "Could not save.");
        }
    });
}

function newCode() {
    var pwd = $("#confirmPwd").val();
    if (pwd == "") { Alert("Enter your current password first."); return; }
    request({funcNo: 1067, password: pwd}, function(data) {
        if (data.flag == "1" && data.results && data.results[0] && data.results[0].recoveryCode) {
            $("#recoveryValue").text(data.results[0].recoveryCode);
            $("#recoveryBox").show();
            $("#confirmPwd").val("");
            loadPrefs();
        } else {
            Alert(RM_TEXT[data.error_info] || data.error_info || "Could not create recovery code.");
        }
    });
}

/* ── Appearance: theme chips ────────────────────────────────── */
var _currentTheme = "auto";
var _currentSeed  = "#006A60";

function initAppearanceUI() {
    /* theme chips */
    $(".theme-chip").on("click", function() {
        $(".theme-chip").removeClass("selected");
        $(this).addClass("selected");
        _currentTheme = $(this).data("theme");
        /* preview immediately */
        if (window.M3Theme) {
            window.M3Theme.setTheme(_currentTheme === "auto" ? "system" : _currentTheme);
        }
    });

    /* preset swatches */
    $(document).on("click", ".swatch", function() {
        $(".swatch").removeClass("selected");
        $(this).addClass("selected");
        _currentSeed = $(this).data("color");
        /* style the custom input to reflect chosen */
        $("#custom-color").val(_currentSeed);
    });

    /* custom color picker */
    $("#custom-swatch-wrap").on("click", function() {
        $("#custom-color").trigger("click");
    });
    $("#custom-color").on("input change", function() {
        var col = $(this).val();
        _currentSeed = col;
        /* deselect preset swatches */
        $(".swatch").removeClass("selected");
    });
}

function applyPrefsToAppearance(p) {
    if (!p) return;
    if (p.theme) {
        _currentTheme = p.theme;
        $(".theme-chip").removeClass("selected");
        $(".theme-chip[data-theme='" + p.theme + "']").addClass("selected");
    }
    if (p.seedColor) {
        _currentSeed = p.seedColor;
        /* try to highlight a preset swatch */
        var matched = false;
        $(".swatch").each(function() {
            if ($(this).data("color").toLowerCase() === p.seedColor.toLowerCase()) {
                $(".swatch").removeClass("selected");
                $(this).addClass("selected");
                matched = true;
            }
        });
        if (!matched) {
            $(".swatch").removeClass("selected");
            $("#custom-color").val(p.seedColor);
        }
    }
}

function saveAppearance() {
    var p = { theme: _currentTheme, seedColor: _currentSeed };
    request({funcNo: 1065, prefs: p}, function(data) {
        if (data.flag == "1") {
            Alert("Appearance saved.");
            if (window.M3Theme) {
                window.M3Theme.setTheme(_currentTheme === "auto" ? "system" : _currentTheme);
            }
        } else {
            Alert(RM_TEXT[data.error_info] || data.error_info || "Could not save.");
        }
    });
}

$(function() {
    loadSessions();
    loadPrefs();
    initAppearanceUI();
    $("#logout").on("click", function() {
        request({funcNo: 1061}, function() { window.location = "index.html"; });
    });
    $("#savePrefs").on("click", savePrefs);
    $("#saveAppearance").on("click", saveAppearance);
    $("#newCode").on("click", newCode);
    $("body").show();
});
