# UI Remediation & Code Safety Verification Report

## 1. Executive Summary

This report documents the source-level code verification and remediation for unsafe DOM construction, legacy deprecated jQuery event bindings, and misleading restricted controls in `work/decoded_hardened/assets/jetty2/`.

---

## 2. Before / After Remediation Source Evidence

### 2.1 `assets/jetty2/js/D_HCP.js` (Device List Table)

**Before (Unsafe String Concatenation XSS Vulnerability)**:
```javascript
function showCurrentDev(deviceAttr){
	if(deviceAttr == "" || deviceAttr == undefined){
		return;
	}
	var html = "";
	for(var i = 0;i < deviceAttr.length;i++){
		html += '<tr><th>' + i+1 +'</th><th>' + deviceAttr[i].name + '</th><th>' + deviceAttr[i].ip
		      + '</th><th>' + deviceAttr[i].mac + '</th><th>' + deviceAttr[i].media + '</th></tr>';
	}
	$("#list").show();
	$("#table").append(html);
}
```

**After (Safe DOM Node Construction)**:
```javascript
function showCurrentDev(deviceAttr){
	if(!deviceAttr || !deviceAttr.length){
		return;
	}
	var $tbody = $("#table tbody");
	if ($tbody.length === 0) {
		$tbody = $("<tbody>").appendTo("#table");
	} else {
		$tbody.empty();
	}
	for(var i = 0; i < deviceAttr.length; i++){
		var dev = deviceAttr[i] || {};
		var $tr = $("<tr>");
		$("<td>").text(i + 1).appendTo($tr);
		$("<td>").text(dev.name || "-").appendTo($tr);
		$("<td>").text(dev.ip || "-").appendTo($tr);
		$("<td>").text(dev.mac || "-").appendTo($tr);
		$("<td>").text(dev.media || "-").appendTo($tr);
		$tr.appendTo($tbody);
	}
	$("#list").show();
}
```

---

### 2.2 `assets/jetty2/js/MacFilter.js` (MAC Table & Event Delegation)

**Before (Unsafe Concatenation & Deprecated `.die().live()`)**:
```javascript
function showMacList(deviceAttr) {
    ...
    temp = '<input id="' + 'Macinput' + deviceAttr[i].id + '"' + ' name="wifi.mac" maxlength="17" value="' + deviceAttr[i].macaddr + '">';
    html += '<tr><td>' + deviceAttr[i].id + '</td><td>' + temp + '</td><td>   <input type="button" id=' + buttonidName + ' class="button" value="'+mifi_translate('Set')+'"></input> </td></tr>';
    ...
    $("#table").append(html);
}

bindingEvents = function() {
    $("#set1").die().live("click", function() { ... });
    ...
}
```

**After (Safe DOM Building & Modern Delegation)**:
```javascript
function showMacList(deviceAttr) {
    if (!deviceAttr || !deviceAttr.length) return;
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
            .attr({ type: "text", id: "Macinput" + (item.id || itemIndex), name: "wifi.mac", maxlength: "17", class: "m3-input" })
            .val(item.macaddr || "")
            .appendTo($inputTd);
        $inputTd.appendTo($tr);

        var $btnTd = $("<td>");
        $("<input>")
            .attr({ type: "button", id: "set" + (item.id || itemIndex), class: "m3-btn m3-btn-tonal set-mac-btn" })
            .val(mifi_translate('Set') || 'Set')
            .appendTo($btnTd);
        $btnTd.appendTo($tr);
        $tr.appendTo($tbody);
    }
    $("#list").show();
}

function bindingEvents() {
    $(document).on("click", ".set-mac-btn", function() {
        var btnId = $(this).attr("id");
        var idNum = btnId.replace("set", "");
        var macVal = $("#Macinput" + idNum).val();
        setMacfilterMac(idNum, macVal);
    });
}
```

---

### 2.3 `assets/jetty2/js/deviceOperation.js` (Misleading Control Removal)

**Before (Fake Progress Banner & 80s Reload Timer on Denied Operation)**:
```javascript
$("#restart").bind('click', function(e) {
    document.getElementById("content2").style.display = "inline";
    var param = {funcNo:1013};
    request(param,function(data){ ... });
    setTimeout(function() {
        location.reload(true);
    }, 80000);
});
```

**After (Removed Fake Timers & Displayed Hardened Policy Card)**:
```javascript
$(function(){
	init();
});

function init() {
    // Maintenance operations (Reboot/Reset) are default-deny on backend (Guard policy PR #1)
}
```

---

## 3. Verification & Validation Outcomes

1. **XSS Payload Test**: Tested synthetic payload `<script>alert('xss')</script>` in device name string. Confirmed `.text()` renders literal text `<script>alert('xss')</script>` without executing script tag.
2. **Special Character MAC Test**: Tested MAC string `"';<svg/onload=alert(1)>`. Confirmed `.val()` sets string literally into text field input without HTML interpolation.
3. **Event Delegation Test**: Tested clicking set buttons (`#set1` through `#set10`) on MAC Filter page. Confirmed `setMacfilterMac` receives correct ID and value.
4. **Restricted Controls Audit**: Verified `deviceOperation.html` contains no `#restart` or `#factory` buttons or fake `setTimeout` reloads.
