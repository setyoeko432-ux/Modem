# UI Hardcoding & Anti-Pattern Audit Report

## 1. Reconciled Hardcoding Matrix (HC-01 through HC-10)

This audit reconciles every hardcoding finding against the active workspace source (`work/decoded_hardened/assets/jetty2/`).

| Finding ID | File Path | Current Line Range | Category / Description | Status | Source Evidence & Verification |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **HC-01** | `assets/jetty2/main.html` | L25-L60 | Inline styles & fixed widths in header | `IMPLEMENTED_VERIFIED` | Migrated to M3 Top App Bar CSS classes in `css/m3-theme.css`. Checked responsive layout at 320px–2560px. |
| **HC-02** | `assets/jetty2/index.html` | L20-L50 | Absolute positioning (`top:200px; left:30%`) | `IMPLEMENTED_VERIFIED` | Replaced with M3 centered flexbox surface card (`.m3-login-body`, `.m3-login-card`). |
| **HC-03** | `assets/jetty2/js/main.js` | L145-L170 | Direct class manipulations (`rssi0`-`rssi5`) | `IMPLEMENTED_VERIFIED` | Signal meter classes mapped to M3 RSSI signal bar indicator styles in `main.html` & `m3-theme.css`. |
| **HC-04** | `assets/jetty2/js/status.js` | L95-L100 | String concatenation in client count DOM | `IMPLEMENTED_VERIFIED` | Replaced `.html()` with safe text node updates (`.text()`). |
| **HC-05** | `assets/jetty2/js/D_HCP.js` | L30-L50 | Raw HTML string concatenation in device table | `IMPLEMENTED_VERIFIED` | Refactored `showCurrentDev` to use `$("<td>").text(...)` DOM creation. Verified XSS safety against `<script>`. |
| **HC-06** | `assets/jetty2/js/MacFilter.js`| L30-L150 | Unsafe string concatenation & `.die().live()` | `IMPLEMENTED_VERIFIED` | Replaced string table builder with DOM nodes (`$("<td>").text(...)`). Replaced `.die().live()` with `$(document).on()`. |
| **HC-07** | `assets/jetty2/js/account.js` | L10-L40 | Raw HTML string table rows in session list | `IMPLEMENTED_VERIFIED` | Refactored `renderSessions()` to use `$("<td>").text(...)` DOM node construction. |
| **HC-08** | `assets/jetty2/js/utils/ajax.js`| L60-L70 | Hardcoded URL path `/ajax` | `IMPLEMENTED_VERIFIED` | Preserved `/ajax` route contract (required backend Jetty route). |
| **HC-09** | `assets/jetty2/js/utils/ajax.js`| L65-L67 | Hardcoded header `X-Mifi-Req` | `IMPLEMENTED_VERIFIED` | Preserved `X-Mifi-Req: 1` header contract (required Guard CSRF security policy). |
| **HC-10** | `assets/jetty2/deviceOperation.html` | L15-L50 | Misleading reboot/reset controls (`1013`/`1014`)| `IMPLEMENTED_VERIFIED` | Removed misleading restart/reset buttons & fake 80s timer. Replaced with Security Policy Notice explaining 403 default-deny. |

---

## 2. Unsafe DOM Construction Remediation Summary

1. **`D_HCP.js` (`showCurrentDev`)**:
   - *Before*: `html += '<tr><th>' + deviceAttr[i].name + '</th>...'; $("#table").append(html);`
   - *After*: `var $tr = $("<tr>"); $("<td>").text(dev.name || "-").appendTo($tr); ... $tr.appendTo($tbody);`
2. **`MacFilter.js` (`showMacList` & `showCurrentDev`)**:
   - *Before*: `temp = '<input value="' + deviceAttr[i].macaddr + '">'; html += '<tr><td>' + temp + '</td></tr>';`
   - *After*: `$("<input>").val(item.macaddr || "").appendTo($inputTd);`
   - *Event Delegation*: Replaced `$("#set1").die().live("click", ...)` with `$(document).on("click", ".set-mac-btn", ...)`.
3. **`account.js` (`renderSessions`)**:
   - *Before*: `body.append("<tr><th>Address</th>...</tr>"); tr.append($("<td></td>").text(r.address));`
   - *After*: Safe `<thead>` and `<tbody>` DOM construction with `.text(addrText)` for session address, age, and idle time.
4. **`jsonHandler.js` (`mifi_get_text`)**:
   - *Before*: `$('[lang]').each(function() { $(this).html(mifi_translate($(this).attr('lang'))); })`
   - *After*: `$('[lang]').not('html, body').each(...)` preventing document body wipe when `lang` is set on `<html>` or `<body>`.

---

## 3. Removal of Misleading Restricted Operation Controls

In `deviceOperation.html` and `deviceOperation.js`:
- Removed buttons `#restart` (`funcNo: 1013`) and `#factory` (`funcNo: 1014`).
- Removed fake 80-second `setTimeout` page reload loop.
- Replaced with **Security Hardened Policy Notice** card explaining that remote device restart and factory reset operations are default-disabled on the server (`403 FORBIDDEN`) per Guard PR #1 security policy.
