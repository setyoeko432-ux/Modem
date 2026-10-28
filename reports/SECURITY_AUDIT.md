# Preliminary Security Audit

**Phase:** 0 discovery / static baseline  
**Date:** 2026-10-25  
**Status:** Findings are verified from the supplied APK and read-only device inspection.  Runtime exploitability and regression verification remain for Phase 1.

## Severity model

- **Critical:** unauthenticated or weakly protected control can expose credentials, alter device state, or install/reboot privileged firmware.
- **High:** privileged or sensitive behavior with a realistic security impact.
- **Medium:** defense-in-depth, information disclosure, or reliability issue.
- **Unknown:** requires runtime or firmware evidence before classification.

## Findings

### C-01 — No server-side authorization gate for post-login AJAX operations

**Severity:** Critical  
**Evidence:**

- `AjaxSevlet.doPost()` parses `funcNo` and checks credentials only inside the `1000` branch (`AjaxSevlet.smali:864-1182`).
- Later branches begin at `1001` (`AjaxSevlet.smali:1188`) without an `HttpSession`, cookie, CSRF, origin, or authorization check.
- `js/utils/ajax.js` sends ordinary JSON POST requests directly to `/ajax`.
- No `HttpSession`, `Cookie`, CSRF, `Origin`, `Referer`, or `Authorization` handling was found in `AjaxSevlet.smali`.

**Impact:** A client able to reach the management address may be able to call privileged read and write operations without completing the login flow.

**Required remediation:** Add a server-side authenticated session boundary in the servlet, cryptographically random session IDs, expiry, invalidation, CSRF protection for state-changing calls, and an explicit per-function authorization policy.  Do not rely on frontend cookies or hidden pages.

**Verification status:** Static finding verified; runtime unauthenticated-request test not yet run.

### C-02 — Sensitive credentials and identifiers returned in plaintext JSON

**Severity:** Critical  
**Evidence:**

- `1002` returns the Wi-Fi `pwd` field (`AjaxSevlet.smali:1557-1580`).
- `1009` returns Wi-Fi encryption and password values (`AjaxSevlet.smali:2639-2764`).
- `1016` returns APN `user` and `pwd` fields (`AjaxSevlet.smali:3792-3844`).
- `1015` returns IMSI and ICCID (`AjaxSevlet.smali:3525-3579`).
- `1029` returns the IMEI (`AjaxSevlet.smali:5323-5339`).
- The transport is plain HTTP to `192.168.100.1:80` (`assets/jetty2/js/utils/ajax.js:1-7`).

**Impact:** Network observers or any caller that reaches the servlet can obtain Wi-Fi, APN, SIM, and device identity data.

**Required remediation:** Remove password fields from query responses, return masked/boolean indicators, require reauthentication for sensitive views, minimize identifiers, and evaluate an authenticated transport suitable for this firmware.  Do not log or expose raw secrets.

**Verification status:** Static finding verified.

### C-03 — Privileged destructive operations are exposed as AJAX branches

**Severity:** Critical  
**Evidence:**

- `1013` calls `DeviceController.rebootDevice()` (`AjaxSevlet.smali:3366-3424`).
- `1014` calls `DeviceController.restoreDevice()` (`AjaxSevlet.smali:3425-3483`).
- `2000` calls `PowerManager.reboot("bootloader")` (`AjaxSevlet.smali:5984-6042`).
- `2001` changes USB composition to `rndis,serial_smd,diag,adb`, runs `sync`, and reboots (`AjaxSevlet.smali:6043-6150`).
- `2002` accepts an IMEI string and calls `setImei()` (`AjaxSevlet.smali:6151-6274`).
- `3000` invokes `Updater.doUpdateNoMd5()` (`AjaxSevlet.smali:6275-6328`).

**Impact:** Reboot, factory reset, bootloader, diagnostic, identity, and firmware-update control are system-level operations.

**Required remediation:** Keep maintenance operations disabled by default, require authenticated admin authorization and explicit confirmation, add audit logging without secrets, and remove device-identity mutation from the product scope.  Keep ADB/DIAG disabled by default.

**Verification status:** Static finding verified.

### C-04 — IMEI mutation path has no verified backend validation

**Severity:** Critical  
**Evidence:**

- Frontend validation is commented out in `js/deviceInformation.js:62-76`.
- Backend reads an arbitrary JSON string (`AjaxSevlet.smali:6185-6202`).
- `WanDataController.setImei()` concatenates `AT+WRIMEI=` with the supplied value (`WanDataController.smali:2587-2620`).

**Impact:** Device identity and radio calibration behavior may be altered through a network-facing privileged path.

**Required remediation:** Do not implement or expose remote IMEI modification.  Remove the UI and dispatcher path in a future authorized hardening change, or make it unreachable behind a build-time-disabled maintenance policy.

**Verification status:** Static finding verified; no identity-modifying command was executed.

### C-05 — OTA path includes an explicit no-MD5 update operation

**Severity:** Critical  
**Evidence:**

- Multipart upload accepts a file and stores it as `/data/update.zip` (`AjaxSevlet.smali:259-532`).
- `3000` calls `Updater.doUpdateNoMd5()` (`AjaxSevlet.smali:6275-6315`).
- `Updater.doUpdateNoMd5()` reboots to recovery if `/data/update.zip` exists (`Updater.smali:609-641`).
- The download endpoint is hardcoded as plain HTTP at `120.77.62.229:8080` and includes the IMEI in the query (`Updater.smali:219-248`).

**Impact:** A weakly protected upload/update path can become a firmware installation primitive.

**Required remediation:** Require authenticated maintenance authorization, enforce a signed update format with certificate pinning or an embedded trust anchor, verify the package before recovery, reject unexpected content, remove the no-MD5/no-signature path, and avoid sending device identifiers to an unencrypted endpoint.

**Verification status:** Static finding verified; no update was uploaded or executed.

### H-01 — Full request bodies are written to Android logs

**Severity:** High  
**Evidence:** `AjaxSevlet` logs the complete request string at `AjaxSevlet.smali:838-862`, and the login body includes `username` and `password`.

**Required remediation:** Remove body logging or redact fields before logging.  Never log passwords, APN secrets, Wi-Fi keys, IMSI, ICCID, or IMEI.

### H-02 — System UID and privileged permissions magnify every servlet defect

**Severity:** High  
**Evidence:** Manifest declares `android:sharedUserId="android.uid.system"`; installed package dump reports `userId=1000`, `PRIVILEGED`, and system-level granted permissions.

**Required remediation:** Keep the privileged surface minimal, separate read-only telemetry from maintenance operations, and enforce authorization at every operation boundary.

### H-03 — Current runtime has ADB and DIAG enabled

**Severity:** High  
**Evidence:** Read-only ADB inspection returned `adb_enabled=1` and `persist.sys.usb.config=rndis,serial_smd,diag,adb`.

**Required remediation:** Treat this as current device state, not proof of a clean factory default.  Before testing a hardened build, define a recovery procedure and ensure diagnostic interfaces are disabled unless explicitly authorized.

### H-04 — Backend input validation is incomplete

**Severity:** High  
**Evidence:** Dispatcher uses direct `JSONObject.get()`, `getString()`, and `getInt()` calls throughout the branches, with no centralized schema, length, IP, MAC, APN, or password policy (`AjaxSevlet.smali` multiple branches including `1839`, `1963`, `3301`, `3975-4039`, `5716`, and `6185-6202`).

**Required remediation:** Add bounded schema validation before dispatch, reject unknown fields where appropriate, validate types and ranges, and avoid constructing shell/AT commands from untrusted values.

### H-05 — Asset extraction blindly overwrites the runtime web directory

**Severity:** High reliability/security boundary  
**Evidence:** `JServer.extractAssets()` recursively creates/opens files and copies every entry from the APK into the application files directory (`JServer.smali:36-480`).  `JServer.start()` invokes it before serving `getFilesDir()/jetty2` (`JServer.smali:608-687`).

**Impact:** Every service start can overwrite runtime web changes.  The copy path is not version-aware or atomic, so an interruption can leave a partial asset tree and make the portal unavailable.  This also complicates recovery and update rollback.

**Required remediation:** Replace the blind copy with a version-aware, integrity-checked, atomic staging/swap mechanism.  Preserve a rollback copy and never serve a partially extracted tree.

### M-01 — Plain HTTP administration transport

**Severity:** Medium/High depending on network isolation  
**Evidence:** Frontend hardcodes `http://192.168.100.1:80/ajax`.

**Required remediation:** Preserve Android 4.4 compatibility while evaluating a practical authenticated transport.  At minimum, enforce the management interface boundary, session protection, origin/CSRF controls, and do not expose secrets through the protocol.

### M-02 — Default credential literals exist in configuration initialization

**Severity:** High if unchanged on a deployed unit  
**Evidence:** `MifiConfiguration` initializes an administrator password and Wi-Fi password in its constructor (`MifiConfiguration.smali:96-137`).  Literal values are intentionally omitted from this report.

**Required remediation:** Force a first-run credential change or generate a per-device secret; never ship a shared default credential.  Do not return stored credentials through query endpoints.

### M-03 — Test-key signing and userdebug/test-keys build

**Severity:** High supply-chain concern  
**Evidence:** APK certificate is the Android default test certificate; device fingerprint ends with `userdebug/test-keys`.

**Required remediation:** Define a production signing key and a verified update chain before claiming update compatibility.  Preserve the original APK as a rollback artifact.

## Verified non-findings / scope boundaries

- No remote shell endpoint was added or found as a dedicated AJAX function.  `ShellUtils` exists as an internal helper, and several controllers execute fixed commands, so command-surface review remains necessary.
- No `funcNo=1030` hardware-capability endpoint exists in the inspected APK.
- No supported LTE band-lock implementation was verified.
- No IMEI change, factory reset, reboot, flashing, or OTA operation was executed during discovery.

## Phase 1 remediation order

1. Freeze a rollback copy and create a device recovery procedure.
2. Add servlet authentication/session/CSRF policy before UI changes.
3. Remove plaintext secret responses and request-body logging.
4. Gate or remove reboot, bootloader, USB/DIAG, OTA, and identity operations.
5. Replace unsafe OTA trust with signed-package verification.
6. Restore safe, atomic asset provisioning.
7. Add strict backend validation and focused tests.
8. Only then implement capability-aware UI and read-only telemetry.
