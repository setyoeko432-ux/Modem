# Model A UI Architecture

**Deployment model:** Frontend remains inside the APK under `assets/jetty2/`.  
**Target:** Android 4.4.4 WebView, bundled Jetty 8, approximately 398 MB visible RAM and two observed CPU entries.  
**Status:** Design only; no HTML/CSS/JS was changed.

## 1. Design principles

- Keep the stock portal route and `/ajax` protocol.
- Use lightweight HTML, CSS, jQuery-compatible ES5 JavaScript, and existing localization JSON.
- Do not use external fonts, CDNs, heavy frameworks, Web Crypto, Fetch, Promises, modules, or Service Workers.
- Do not show a control unless the backend operation is verified and authorized.
- Do not show fake live values. Render `Connected`, `Disconnected`, `Loading`, `Unavailable`, `Unknown`, and `Error` explicitly.
- Keep the original pages available in source for rollback, but do not rely on hidden URLs for security.
- Avoid broad DOM replacement and high-frequency polling.

## 2. Proposed asset layout

All paths are under `decoded/assets/jetty2/` in the authoritative baseline.

```text
index.html                         # login/session entry
main.html                          # authenticated shell/navigation
dashboard.html                     # new lightweight dashboard
network.html                       # network overview
lteDiagnostics.html                # verified signal/network metrics only
wifiOverview.html                  # AP status and clients
wifiSetting.html                   # existing page, hardened
wifiSecurity.html                  # existing page, write-only password
wwanConfig.html                    # existing APN page, redacted passwords
deviceInformation.html             # masked device information
deviceOperation.html               # maintenance page, default-deny actions
security.html                      # password/session/security status
capabilities.html                  # optional future read-only capability page
css/common.css
css/main.css
css/dashboard.css                 # small, local stylesheet
js/utils/ajax.js                   # session/CSRF/error-aware transport
js/index.js
js/dashboard.js
js/network.js
js/lteDiagnostics.js
js/wifiOverview.js
js/security.js
js/capabilities.js                 # only if 1030 is actually implemented
json/en.json
json/zh.json
json/ru.json
```

New files are proposals. Do not add them until the corresponding backend contract and tests exist.

## 3. Navigation and backend mapping

| UI area | Verified backend sources | Allowed controls | Explicit exclusions |
|---|---|---|---|
| Dashboard | `1001`, `1003`, `1029`, `3002` | Network status, signal level/dBm when available, traffic counters, client count, firmware/device display | No LTE band, RSRP/RSRQ/SINR/PCI/EARFCN claims; no full IMEI |
| Network overview | `1001`, `1004`, `1005` | Read status; authenticated data-mode/network-mode changes with confirmation | No band-lock control; no guessed network modes |
| LTE diagnostics | `1001`, `1029` | Operator, network mode, status, signal-level/dBm, timestamp/source | Advanced LTE metrics remain hidden/UNKNOWN |
| Wi-Fi overview | `1006`, `1011`, `1027`, `1028` | AP state, SSID, max stations, DHCP range, client IP/MAC list | No unverified STA mode or chipset/standards claims |
| Wi-Fi settings | `1007`, `1009`, `1010`, `1012`, `1052–1055` | SSID, max stations, security mode, write-only password, DNS, MAC filtering | Never display stored Wi-Fi password |
| APN management | `1016–1018` | Profile list with redacted password fields, profile save/select | No plaintext APN passwords; no unsupported auth modes |
| System information | `1029`, `3002`, read-only system capability sources | Masked identity, manufacturer, firmware, available dBm, Android/API | No identity write, no raw SIM identifiers by default |
| Security settings | `1020`, session status, redaction state | Change admin password, session expiration information | No password query, no default credential display |
| Connected devices | `1011`, `1028`, `1052` | IP/MAC/client table, MAC filter management | Escape all server-provided names/addresses before DOM insertion |
| Maintenance | `1013`, `1014`, `1021`, `1022`, `2000`, `2001`, `3000`, `3001` | None in normal build; optional reauthenticated maintenance build only | No normal navigation, no live destructive testing, no `2002` |
| Backup/recovery | No verified current API | Design only; do not expose until new safe backend exists | Do not invent backup endpoints or claim restore support |

## 4. Dashboard design

`dashboard.html` should contain compact cards:

1. Connection status: `1001`.
2. Network mode/operator: `1001`.
3. Signal level and dBm if available: `1001` and `1029`.
4. Download/upload counters: `1003`.
5. Connected clients: `1003`, `1011`, or `1028`.
6. Wi-Fi status/SSID: `1006`.
7. SIM state: `1015`, showing state only by default.
8. Firmware/device display: `3002` and `1029`.
9. Capability status: only if a future read-only endpoint is implemented.

Each card must have a state badge and last-updated time. Polling should be centralized and conservative, not one timer per card.

## 5. Network and LTE diagnostics

### Network overview

- Read-only data refresh uses `1001`.
- Mobile data changes use `1004` with CSRF, confirmation, and explicit disconnected/reconnecting state.
- Network preference changes use `1005`; present only the modes already supported by the controller's observed mapping.
- Do not show a band selector. `1030` is absent and no band interface was verified.

### LTE diagnostics

Show only:

- operator,
- registration/network status,
- current network mode,
- cached signal-level bar,
- dBm string when the controller returns a non-sentinel value,
- firmware display,
- masked device identity if a reauthenticated view is approved.

Do not transform a signal bar or dBm value into RSRP, RSRQ, or SINR. Unknown metrics should be omitted or labelled `UNKNOWN`.

## 6. Wi-Fi management

- `wifiOverview.html` reads AP state and clients; it does not reveal the password.
- `wifiSetting.html` edits SSID and maximum stations through `1007`.
- `wifiSecurity.html` reads only encryption/configured state through `1009` and writes a new password through `1010`.
- `D_HCP.html`/new DHCP view reads `1011`/`1027` and writes validated DNS/ranges through `1012`/`1026`.
- MAC filtering uses `1052–1055`, with server-side validation as the security boundary.
- Any operation that restarts the AP must show a confirmation and preserve the pending UI state after reconnect.

## 7. APN management

`wwanConfig.html` should preserve profile IDs, name, APN, username, and auth type, but never fill a stored password from the server.

Suggested write-only behavior:

- Empty password means “retain existing password” only when an explicit checkbox/flag is set.
- A non-empty password replaces the existing secret.
- The server must distinguish missing, empty, and replace values.
- Selecting a profile warns that the data connection may reset.

## 8. Security and maintenance UI

`security.html` should expose:

- password-change form using `1020`,
- session timeout status,
- whether diagnostic interfaces are currently enabled (read-only `1021` if policy allows),
- a clear warning if the current device is in a diagnostic/ADB composition.

`deviceOperation.html`, `ms.html`, `usbdebug.html`, `reboot-bootloader.html`, and `upgrade.html` must not be reachable from normal navigation in the hardened default build. Backend denial remains mandatory even if a user types the URL manually.

## 9. Configuration backup/recovery design boundary

The baseline does not provide a verified safe backup/restore API. Do not add a UI that suggests it exists.

If later approved, the design must:

- allowlist only non-secret configuration keys,
- encrypt or protect exported secrets rather than writing plaintext JSON,
- authenticate and CSRF-protect import,
- validate schema and version,
- stage and atomically commit configuration,
- provide a rollback file before applying changes,
- never include IMEI, radio NV, calibration, or identity data.

Potential files would include a new backend controller/dispatcher branch and `security.js`/`backup.js`; exact IDs must be assigned only after an API review.

## 10. Android 4.4/WebView implementation rules

- Use `var`, function callbacks, ordinary `XMLHttpRequest`/jQuery AJAX, and JSON2 already bundled.
- Use cookie-based session handling; do not require localStorage or Web Crypto.
- Avoid CSS features not already used by the stock portal unless verified on the device.
- Keep images local and reuse existing assets where possible.
- Escape text before inserting server-provided values into HTML.
- Keep pages small enough for the observed memory budget; do not bundle a framework.
- Do not load Google Fonts or external resources. The modern font import in `decoded_working/` is not packaged and is unsuitable for an offline modem portal.

## 11. File-level change register

| File | Existing behavior | Proposed behavior | Risk | Verification | Rollback |
|---|---|---|---|---|---|
| `assets/jetty2/index.html` | Stock login page | Keep route; update only for session/CSRF/error handling | Medium | Login fixture and old WebView | Restore original asset |
| `assets/jetty2/main.html` | Stock shell/navigation | Point only to hardened/read-only pages | Medium | Link audit and static inventory | Restore original shell |
| `assets/jetty2/js/utils/ajax.js` | Raw JSON POST | CSRF header, 401/403 handling, safe errors | Medium | Request fixtures | Restore original helper |
| `assets/jetty2/status.html`, `status.js` | Status/traffic page | Dashboard-compatible state rendering and redaction | Medium | JSON fixtures | Restore original pages |
| `assets/jetty2/wifiSecurity.js` | Reads password into form | Write-only password | Medium | Secret-leak fixture | Restore original page in source only |
| `assets/jetty2/wwanConfig.js` | Reads APN password | Write-only APN secret and retain-existing semantics | High | APN fixtures | Restore original page in source only |
| `assets/jetty2/deviceInformation.js` | Displays/submits IMEI | Mask display; remove write action | Critical | Static scan confirms no `2002` call | Keep page disabled |
| `assets/jetty2/ms.html`, `usbdebug.html`, `upgrade.html`, `reboot-bootloader.html` | Addressable maintenance pages | Remove from navigation and make backend unavailable by default | Critical | Unlinked-page and authorization tests | Do not restore in hardened build |

## 12. UI acceptance gates

The UI is ready for implementation only when:

1. Every card has a verified backend source and state mapping.
2. No page displays password, IMSI, ICCID, or full IMEI by default.
3. No button calls a default-deny function.
4. The asset tree remains self-contained and offline-capable.
5. The revised pages run with Android 4.4-compatible JavaScript and no external resources.
