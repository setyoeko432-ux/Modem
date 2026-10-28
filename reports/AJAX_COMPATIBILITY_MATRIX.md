# AJAX and Frontend Compatibility Matrix

**Baseline:** `decoded/assets/jetty2/`, `decoded/smali/com/mifiservice/server/AjaxSevlet.smali`, and `AJAX_API_INVENTORY.md`.  
**Goal:** Add backend authorization without breaking the stock portal's JSON and page structure on Android 4.4.4.

## 1. Existing protocol

The installed frontend uses:

- URL: `http://192.168.100.1:80/ajax`
- Method: `POST`
- Normal content type: JSON string sent through jQuery `$.ajax`
- Request shape: `{ "funcNo": N, ... }`
- Upload shape: multipart POST to the same endpoint for the OTA page
- Response shape: usually `{ "flag": "1"|"0", "error_info": "...", "results": [...] }`
- Login: `js/index.js` sends `funcNo=1000`, then stores selected values in `jquerysession.js` and navigates to `main.html`.
- No server-side session check is visible in the baseline `AjaxSevlet`.

The hardened protocol should preserve the URL, method, `funcNo`, and response envelope.  It may add optional fields, but it must not require a modern browser API.

## 2. Compatibility strategy

### Preserve

- `/ajax` path and port 80 on the stock firmware.
- JSON request body for normal calls.
- Multipart form upload syntax at the transport layer, while adding authorization and fail-closed validation.
- String `flag` values and `error_info` for existing page callbacks.
- `results` as an array for existing pages that access `data.results[0]`.
- Existing controller semantics where the operation is retained.

### Change safely

- Add optional `schemaVersion`, `authenticated`, `csrfRequired`, and `redacted` fields.
- Remove secret fields from responses; old JavaScript already checks whether fields exist before populating many controls.
- Return HTTP 401/403 for authorization failures and retain a JSON `flag:0` body for old callbacks where practical.
- Add a `clientVersion` request field only as optional metadata; do not require it for legacy pages.
- Keep state-changing methods POST-only.

### Do not depend on

- `fetch`, Promises, async/await, Service Workers, Web Crypto, Web Storage as the sole credential store, SameSite cookie behavior, CSS frameworks, ES6 modules, or external CDN assets.

The existing UI already proves that jQuery, XMLHttpRequest, JSON2, ordinary cookies, and ES5-style JavaScript are available in the stock portal.  The compatibility test must still run the revised pages on the actual Android 4.4 WebView before any installation claim.

## 3. Session and login matrix

| Flow | Existing request | Proposed response/behavior | Legacy UI handling | Exact files |
|---|---|---|---|---|
| Login success | `1000`, `username`, `password` | Preserve `flag`, `results[0].conn_mode`, `net_mode`, `fwversion`; set HttpOnly session cookie; return optional CSRF bootstrap field; remove full IMEI | `index.js` ignores unknown fields and stores the existing mode/version values | `AjaxSevlet.smali`, `assets/jetty2/js/index.js`, `assets/jetty2/js/utils/ajax.js` |
| Login failure | Same | Generic `flag:0`; no username/password distinction; rate-limit after repeated failures | Existing `error_info` path remains usable | Same |
| Session expiry | Any protected request | HTTP 401/403 plus JSON `flag:0`, stable error code such as `SESSION_EXPIRED` | `ajax.js` clears UI session and returns to `index.html` | `ajax.js`, `cookiesHandler.js`, `index.js` |
| Logout | No baseline function | New local action that calls a future logout handler or expires the cookie and invalidates server session | If no new handler is accepted, page can close/expire local UI and rely on server expiry | `AjaxSevlet.smali`, `ajax.js`, `main.html` |
| Password change | `1020`, `oldpwd`, `newpwd` | Require current session, recent reauth, CSRF; invalidate or rotate sessions after success | Existing success/error callback remains | `AjaxSevlet.smali`, `modifyPwd.js` |

## 4. Endpoint compatibility matrix

| IDs | Baseline use | Hardened response/request rule | UI change required | Risk |
|---|---|---|---|---|
| `1001`, `1003` | Dashboard network and traffic | Authenticated read-only; preserve existing telemetry keys; add explicit `UNKNOWN`/`UNAVAILABLE` values rather than zero fabrication | Update dashboard to display state labels | Low/Medium |
| `1002` | WAN/Wi-Fi values and Wi-Fi password | Keep IP/SSID/DNS; remove `pwd`; add `wifiPasswordConfigured` | Do not render a password; link to write-only Wi-Fi security page | Medium |
| `1004`, `1005` | Data and preferred network mode | CSRF, allowlisted values, confirmation for connectivity changes | Existing controls can continue after error handling update | Medium/High |
| `1006`, `1007`, `1008` | Wi-Fi state and SSID/max stations | Authenticated; validate SSID and station bounds; `1008` confirmation/default-deny | New UI must show restart/disconnect warning | Medium |
| `1009`, `1010` | Wi-Fi security | Query returns mode and configured flag only; save accepts a new password only | Change to write-only password input | Medium |
| `1011`, `1027`, `1028` | DHCP and connected clients | Authenticated reads; validate returned IP/MAC strings before DOM insertion | Escape all rendered values to avoid DOM injection | Medium |
| `1012`, `1026` | DNS and DHCP range changes | IPv4 parser, subnet/range checks, CSRF | Add client-side hints but never rely on them | Medium |
| `1013`, `1014`, `1024` | Reboot/reset | Default-deny; if enabled, require reauth and one-time confirmation | Remove from ordinary navigation | High |
| `1015` | SIM information | Mask/omit IMSI and ICCID by default | Display SIM state only unless reauth-approved | Medium/High |
| `1016–1018` | APN list/edit/select | Omit APN passwords; preserve profile IDs and names; protect changes | Write-only password input and “existing password retained” option | High |
| `1020` | Admin password change | Reauth, CSRF, policy, session rotation | Keep page but add strength/error states | High |
| `1021`, `1022` | ADB status/toggle | Read status only for maintenance; toggle default-deny | Hide from normal menu | High |
| `1029` | IMEI/manufacturer/firmware/dBm | Mask IMEI, keep manufacturer/version/dBm when available | Show masked identity or omit it | High |
| `1052–1055` | MAC filter | Authenticated, CSRF, strict MAC/index validation | Escape client values and confirm commit | Medium |
| `2000`, `2001` | Bootloader/USB composition | Default-deny, no normal UI | Remove page links or show unavailable | Critical |
| `2002` | IMEI write | Disable and return unsupported | Remove form/action | Critical |
| `3000–3001` | OTA upload/update/delete | Default-deny until signature path and stock recovery are proven; fixture-only testing | Hide upgrade controls in normal build | Critical |
| `3002` | Device/version information | Authenticated read-only | Safe in system-information page | Low |

## 5. Sensitive response compatibility

The old pages commonly use conditional assignments such as `if(result.pwd)`.  This permits a staged redaction migration:

1. Backend first stops returning the secret field and returns a boolean/masked state.
2. Frontend is updated to understand the new field.
3. The response envelope and all non-sensitive fields remain unchanged.
4. Old pages may show an empty password field, but the new page must explicitly explain that an empty field means “retain existing password” rather than “set blank.”

Specific compatibility rules:

- `1000`: retain `conn_mode`, `net_mode`, and `fwversion`; remove full IMEI.
- `1002`: retain `IP`, `mask`, `dns1`, `dns2`, `ssid`, and `wlan_ip`; replace `pwd` with `wifiPasswordConfigured`.
- `1009`: retain `encryp_type`; replace `pwd` with `passwordConfigured`.
- `1016`: retain `profile_num` and non-secret APN fields; replace each `pwd` with `passwordConfigured`.
- `1015`: retain `sim_status`; mask or omit IMSI/ICCID.
- `1029`: retain manufacturer, firmware, and available dBm; replace full IMEI with `imeiMasked` or `imeiPresent`.

## 6. Jetty session storage options

| Option | Compatibility | Decision |
|---|---|---|
| Bundled Jetty `HttpSession` | `ServletContextHandler(1)` appears intended to enable sessions, but the exact flag/session manager must be verified in bundled Jetty sources | Preferred if session ID entropy, timeout, and cookie behavior are confirmed |
| Small in-memory session manager | Works with API 19 and avoids persistent bearer tokens; sessions disappear on service restart | Fallback if Jetty manager is unsuitable; cap size and expire aggressively |
| SharedPreferences/file token | Survives restart but creates a durable bearer secret and complicates invalidation | Do not use for authorization tokens |
| Client-only cookie/local storage | Existing UI uses client-side state, but it is not authorization | Never use as the authorization boundary |

## 7. Old and new UI handling

Use the same `/ajax` endpoint while migrating pages incrementally:

- Keep `index.html` as the login entry point until the new session flow passes compatibility tests.
- Add a small UI version marker in a cookie or optional `clientVersion` field; do not use it as an authorization decision.
- New pages can live beside old pages in `assets/jetty2/`.
- Navigation should point only to hardened pages; unlinked legacy pages must still receive backend authorization.
- If a new page is incomplete, leave the old page available only for read-only operations that have already been redacted and guarded.
- Do not rely on hidden filenames for security.

## 8. File-level compatibility change register

| File | Existing behavior | Proposed behavior | Risk | Verification | Rollback |
|---|---|---|---|---|---|
| `decoded/smali/com/mifiservice/server/AjaxSevlet.smali` | Direct JSON parse and branch | Guard, validate, redact, preserve envelope | High | Mock servlet tests and Smali build | Restore original file from authoritative decode |
| `decoded/assets/jetty2/js/utils/ajax.js` | Raw JSON POST | Add CSRF header, 401/403 handling, no body logging | Medium | Static JS test and WebView fixture | Restore original helper |
| `decoded/assets/jetty2/js/index.js` | Client-side login state | Handle server session and redacted result | Medium | Login fixture and expiry fixture | Restore original page |
| `decoded/assets/jetty2/js/status.js` | Displays raw telemetry/password-derived values | Handle missing/masked values and explicit states | Medium | JSON fixture rendering | Restore original page |
| `decoded/assets/jetty2/js/wifiSecurity.js` | Fills password from query response | Write-only password and configured indicator | Medium | Query/save fixture | Restore original page only in source, not as hardened release |
| `decoded/assets/jetty2/js/wwanConfig.js` | Fills APN passwords from query response | Write-only APN secrets and retain-existing semantics | High | APN fixture tests | Restore original page only in source |
| `decoded/assets/jetty2/js/deviceInformation.js` | Displays and submits IMEI | Mask/omit identity; remove write action | Critical | Static scan and UI fixture | Keep page removed/disabled |

## 9. Compatibility gates

Before claiming that the new backend preserves the stock portal:

1. All safe read-only fixture requests retain the existing JSON envelope.
2. Legacy callbacks do not throw when secret fields are absent.
3. Expired sessions return a deterministic response and redirect cleanly.
4. CSRF rejection does not invoke any controller.
5. Android 4.4 WebView can perform login, cookie storage, XMLHttpRequest, and JSON parsing without external resources.
6. No page can invoke a privileged operation merely by knowing a hidden URL or `funcNo`.
