# Backend-First Security Remediation Design

**Scope:** APK-level hardening for stock UZ801 V2.3.12 firmware.  
**Baseline:** `decoded/`, `AJAX_API_INVENTORY.md`, and `SECURITY_AUDIT.md`.  
**Status:** Design only; no Smali, asset, device, or firmware changes were made.

## 1. Security objectives

1. No AJAX operation is authorized solely because a browser reached `/ajax`.
2. Login creates a server-side session; client-side jQuery session storage is only a UI convenience.
3. Every dispatcher branch has an explicit policy: public login, authenticated read, authenticated configuration change, or maintenance/default-deny.
4. Sensitive values are never returned or logged in plaintext unless a separately approved, reauthenticated maintenance flow requires a masked value; the default is omission.
5. ADB, DIAG, reboot, bootloader, factory reset, OTA, and identity modification remain disabled or default-deny.
6. Invalid JSON and invalid parameters fail closed without invoking controllers or shell/AT paths.
7. The stock firmware package identity, shared UID, permissions, Jetty 8 environment, and Android API 19 compatibility remain intact.

## 2. Proposed security components

The current APK has no dedicated security package.  The preferred design is to add small, Java-6/7-compatible classes and assemble them into Smali rather than growing one unreviewable dispatcher method.

| Proposed file | Responsibility | Existing behavior | Proposed behavior | Risk | Verification | Rollback |
|---|---|---|---|---|---|---|
| `decoded/smali/com/mifiservice/server/AjaxSevlet.smali` | Request parsing and dispatch | Reads full body, logs it, branches on `funcNo`, and only compares credentials in `1000` | Parse bounded body, call request guard before every non-public branch, redact logs, apply policy and schema, then invoke controller | High; touches all APIs | Mock request/response matrix; Smali assembly; response fixtures | Restore original dispatcher from `original/MifiService.apk` |
| New `decoded/smali/com/mifiservice/security/SessionManager.smali` | Session lifecycle | No server-side session use found | Create, validate, expire, rotate, and invalidate sessions | Medium; memory/resource behavior | Host-side session tests; expiration and concurrency tests | Remove class and guard calls |
| New `decoded/smali/com/mifiservice/security/RequestGuard.smali` | Auth/CSRF/authorization | No centralized guard | Enforce session, CSRF, function policy, and maintenance mode | High; policy mistakes can lock out UI | Policy table tests; legacy UI fixtures | Revert guard integration |
| New `decoded/smali/com/mifiservice/security/InputValidator.smali` | Per-function schema | Direct `JSONObject.get*()` calls | Type, length, range, IP, MAC, SSID, APN, and password validation before controllers | Medium | Positive/negative fixture tests | Revert validator calls |
| `decoded/smali/com/mifiservice/utils/CryptUtil.smali` | Existing crypto helper review | Existing helper is present but its use for sessions is unverified | Reuse only after algorithm/provider review; otherwise use `java.security.SecureRandom` directly | Medium | Provider/entropy tests on API 19 | Keep helper unchanged and use approved fallback |
| `decoded/assets/jetty2/js/index.js` | Login UI | Sends `1000` and stores values client-side | Handle session cookie, CSRF bootstrap, redacted login response, and generic errors | Medium | Static JS tests and old-WebView fixture | Restore original page |
| `decoded/assets/jetty2/js/utils/ajax.js` | AJAX transport | Sends raw JSON POST | Attach CSRF header/field, handle 401/403, never log bodies, preserve timeout behavior | Medium | Request fixture inspection | Restore original helper |
| `decoded/assets/jetty2/js/utils/cookiesHandler.js` | Cookie UI helper | Client-side language/session cookies | Do not store authorization tokens in script-readable custom storage; let browser manage HttpOnly auth cookie | Low/Medium | Browser fixture | Restore original helper |
| Sensitive page JS files | Password/identifier display | Populate `pwd`, IMSI, ICCID, IMEI | Handle omitted/masked fields and use write-only inputs | Medium | JSON fixtures with redacted fields | Route to original pages |

## 3. Session architecture

### 3.1 Preferred mechanism: Jetty `HttpSession`

`JServer` constructs `ServletContextHandler` with flag `1`.  Before implementation, confirm in the bundled Jetty source that this flag enables sessions and identify the active session manager.  If confirmed, use the existing Jetty session mechanism rather than inventing a second cookie protocol.

Design:

- Login request `funcNo=1000` validates the supplied credentials.
- On success, call `request.getSession(true)` and rotate the session identifier if the bundled Jetty version supports rotation; otherwise invalidate any prior session and create a new one.
- Set a bounded inactivity timeout, initially 15 minutes, subject to UI usability testing.
- Store only:
  - authenticated principal (`admin`),
  - authentication time,
  - last activity time handled by the session manager,
  - CSRF token,
  - optional reauthentication timestamp,
  - optional maintenance authorization flag with short expiry.
- Never store plaintext password, APN password, Wi-Fi password, IMSI, ICCID, or IMEI in the session.
- On password change (`1020`), invalidate all known sessions if the session manager permits; otherwise rotate the current session and reject old CSRF tokens.
- On logout or expiration, invalidate the session and clear the browser-visible UI state.

If the bundled session manager does not provide acceptable random identifiers or cookie controls, use a small `SessionManager` with `SecureRandom` and a bounded in-memory map.  Do not persist bearer tokens in `/data/mificonfig.json`.

### 3.2 Cookie rules for Android 4.4

- Cookie name: a non-default name such as `MIFI_SESSION`.
- `HttpOnly`: enabled.
- `Secure`: enabled only when a verified HTTPS listener is actually used; setting it on the current HTTP-only portal would prevent login.
- `SameSite`: do not depend on it; Android 4.4 WebView predates reliable SameSite handling.
- Path: `/`.
- Domain: omit; use the management host that served the page.
- Do not place the session token in `localStorage`, jQuery session storage, URL parameters, or JSON responses.

### 3.3 Expiration and abuse controls

- Absolute session lifetime: design target 8 hours, subject to power/memory testing.
- Inactivity lifetime: design target 15 minutes.
- Maximum concurrent sessions: bounded, for example 4; evict oldest expired sessions only.
- Login rate limit: per source IP and a small global bucket. Start with 5 failed attempts per 5 minutes, then an increasing delay. Do not permanently lock out the only administrator without a recovery path.
- Use a monotonic time source where available; otherwise guard against clock rollback by treating negative elapsed times as expired/reinitialize.
- Return generic login failure text. Do not reveal whether the username or password was wrong.

## 4. CSRF design

Because the current portal is same-origin HTTP and Android 4.4 cannot be assumed to support modern cookie protections, use a server-generated synchronizer token:

1. On successful login, store a random CSRF token in the server-side session.
2. Return a non-secret bootstrap value only if the existing page needs it, or expose it through a same-origin authenticated `GET` response that contains no sensitive data.
3. `ajax.js` sends the token in an `X-Mifi-CSRF` header using jQuery's `beforeSend`, or as a JSON field if the legacy WebView/header path proves unreliable.
4. For every state-changing ID, compare the supplied token with the session token using a constant-time comparison where feasible.
5. Rotate the token after login, logout, password change, and maintenance authorization.
6. Reject state-changing requests with missing/invalid tokens, even if the session cookie is valid.


## 5. Authorization policy

The policy is intentionally conservative:

| Class | IDs | Default decision |
|---|---|---|
| Public | `1000` | Only credential validation and session creation |
| Authenticated read | `1001`, `1003`, `1027`, `1028`, `1030` if later added, `3002` | Require valid session; minimize returned data |
| Sensitive read | `1002`, `1009`, `1015`, `1016`, `1021`, `1029`, `1052` | Valid session; omit secrets; optional recent reauthentication for identifiers |
| Configuration change | `1004–1012`, `1017`, `1018`, `1020`, `1026`, `1053–1055` | Session + CSRF + schema validation; confirmation where connectivity may drop |
| Reboot/restore | `1013`, `1014`, `1024` | Default-deny; reauthentication + one-time confirmation if ever enabled |
| Maintenance | `1008`, `2000`, `2001`, `3000`, `3001` | Default-deny; hidden and unavailable in normal UI |
| Identity modification | `2002` | Permanently disabled through management interface; return a generic unsupported response |
| Absent | `1019`, `1030–1051` except actual `1052–1055`, `2003–2006` | No handler; do not invent behavior |

The proposed `1030` row is a future design slot only. It is not present in the baseline and must not be advertised until implemented and tested.

## 6. Sensitive response redaction

| Existing response | Proposed response |
|---|---|
| `1002.pwd` | Remove. Return `wifiPasswordConfigured: true/false` and optionally a masked display string such as `********`. |
| `1009.pwd` | Remove. Return encryption mode and `passwordConfigured`; input becomes write-only. |
| `1016.info_arr[*].pwd` | Remove. Return `passwordConfigured` per profile; do not overwrite stored secrets when an empty field is submitted. |
| `1015.imsi`, `1015.iccid` | Omit by default or return masked suffixes only after recent reauthentication. |
| `1029.imei` | Return a masked identifier or a boolean; do not expose the full value to ordinary dashboard pages. |
| `1000.results[0].imei` | Remove full IMEI. Preserve `conn_mode`, `net_mode`, and `fwversion` for legacy UI compatibility. |

The response envelope remains `{flag, error_info, results}` so existing pages can handle missing sensitive fields without a protocol rewrite.

## 7. Input-validation design

Validation must run before controller lookup or side effects.  The validator should reject malformed input with `flag:0` and a generic error code, not a Java stack trace.

| Input | Validation |
|---|---|
| `funcNo` | Integer, allowlisted, bounded; reject unknown IDs before dispatch |
| `conn_mode`, `net_mode`, `mode`, `type`, `auth`, `encryp_type` | Integer or bounded string mapped to known values only |
| SSID | UTF-8 length 1–32 or the existing UI's supported range; reject control characters and ambiguous encoding |
| Wi-Fi password | Write-only, bounded length, explicit allowed character policy compatible with existing firmware |
| IP/DNS/DHCP range | Strict IPv4 parser; verify low/high ordering and same subnet where required |
| MAC | Exact colon-separated six-byte format; normalize case before storage |
| APN/name/user | Bounded length; reject control characters and path/shell delimiters |
| `oldpwd`/`newpwd` | Bounded length and policy; never echo values or log them |
| Upload | Strict size cap, expected content type, temporary path, signature verification before recovery |
| `imei` | Do not validate for use; disable `2002` instead of creating a safer identity-write path |

Validation must not use shell string concatenation. Existing fixed controller commands should be isolated from user data, and any command-building path must be removed or converted to an allowlisted argument form.

## 8. Logging design

Change `AjaxSevlet` request logging from full-body debug logging to structured, redacted events:

- request ID,
- function number,
- coarse source address or a non-reversible hash if needed,
- allow/deny result,
- validation result,
- duration bucket,
- controller result code.

Never log passwords, session IDs, CSRF tokens, APN secrets, Wi-Fi keys, IMSI, ICCID, IMEI, upload URLs, or update package contents.  Avoid logging raw exception messages if they can include request values.

## 9. Safe handling of dangerous operations

### Reboot and factory restore (`1013`, `1014`, `1024`)

- Remove from normal navigation.
- Require recent reauthentication, session, CSRF, and a one-time confirmation nonce.
- Return an acknowledgement before invoking the operation; never report success after a reboot call that may not return.
- Write a redacted audit event before the operation.
- Do not exercise these paths on the connected device during development.

### ADB/DIAG (`1021`, `1022`, `2001`)

- Read status only for authorized maintenance views.
- Default `1022` and `2001` to denied unless a build-time maintenance policy is explicitly enabled.
- Never enable ADB/DIAG during boot or as a side effect of ordinary login.
- Require a clear warning that the USB composition will change and may disconnect the administrator.
- Keep the current device untouched; its observed `rndis,serial_smd,diag,adb` state is a baseline observation, not a desired default.

### Identity modification (`2002`)

Disable the handler at the management boundary and remove the page action. Do not add validation, test values, or an alternative identity-writing path. This is outside the stock-firmware enhancement scope.

## 10. OTA authenticity and fail-closed decision

The verified updater has an MD5 comparison path in `doUpdate()` and a no-MD5 path in `doUpdateNoMd5()`. No trusted digital signature verification, pinned public key, certificate chain, or signature-enforced application gate was found. Therefore:

- MD5 is treated only as an accidental-integrity check, never as authenticity.
- `3000` must be disabled by default.
- The upload must be stored outside the recovery path until authenticity is established.
- A future design may use a detached signature or signed envelope verified by `java.security.Signature` with an embedded public key, but the available API 19 provider and stock recovery acceptance must be verified first.
- If the required signature algorithm/provider is unavailable, or if stock recovery will not accept the verified package format, the safe behavior is to reject the update and leave the existing firmware untouched.
- Do not silently fall back to MD5, HTTP download, or `doUpdateNoMd5()`.
- The existing hardcoded HTTP updater endpoint and IMEI-in-URL behavior must not be reused in a hardened path.

## 11. Security implementation gates

Implementation may start only after:

1. Jetty session flag `1` and the bundled session manager are verified.
2. A host-side mock request/response harness exists for every dispatcher class.
3. The stock package-signing/platform-signing relationship is understood.
4. A safe fixture-based OTA verification path is available.
5. A rollback procedure is documented without requiring custom recovery or live destructive testing.
