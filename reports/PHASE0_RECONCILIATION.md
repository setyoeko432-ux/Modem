# Phase 0 Reconciliation and Planning Corrections

**Date:** 2026-10-25  
**Authoritative baseline:** `decoded/` and `reports/ORIGINAL_FILE_HASHES.txt`  
**Stock target:** UZ801 firmware V2.3.12, Android 4.4.4/API 19  
**Status:** Planning only. No APK, device, modem identity, radio NV, or firmware was modified.

## 1. Governing decisions

1. `decoded/` is the only source of truth for the installed APK.
2. `decoded_working/` is preserved as an unbuilt comparison tree and must not be used to infer installed behavior.
3. `original/MifiService.apk` and its SHA-256 must remain unchanged.
4. The project remains APK-level only. No kernel, bootloader, modem firmware, partition, recovery, radio NV, calibration, or Android framework replacement is allowed.
5. The package name, shared UID, target SDK, required permissions, and stock-firmware integration must be preserved unless an explicit installation blocker is documented.
6. No proposed feature may turn an `UNKNOWN` hardware capability into a visible or executable control.

## 2. Corrections to the original Phase 0–10 plan

| Original phase | Required correction from verified findings | Planning consequence |
|---|---|---|
| Phase 0 discovery | The old working decode contains unbuilt UI and Smali edits. The exact APK has active recursive asset extraction and delayed Jetty startup. | Use fresh `decoded/` for every finding. Compare `decoded_working/` only as a possible source of ideas; do not copy changes blindly. |
| Phase 1 security | Login is only a `funcNo=1000` credential comparison. Later branches have no visible server-side session or authorization gate. | Authentication must be implemented in `AjaxSevlet` before UI work. Every dispatcher branch needs an authorization decision. |
| Phase 1 security | The transport is HTTP on port 80 and responses expose Wi-Fi/APN/SIM/device secrets. | Redaction and session/CSRF controls are mandatory; HTTPS cannot be assumed to be feasible on stock API 19 without separate verification. |
| Phase 1 security | `2001`, `2002`, `3000`, reboot, factory reset, and bootloader paths are privileged. | These operations are default-deny maintenance paths. `2002` must remain disabled and must not be implemented or tested. |
| Phase 1 OTA | The actual updater has `doUpdate()` with MD5 comparison and `doUpdateNoMd5()` used by `3000`; no trusted digital-signature verification was found. | Do not treat MD5 as authenticity. OTA must fail closed unless a trusted signature path is proven on stock recovery. |
| Phase 2 capability detection | No `1030` capability endpoint exists. LTE bands, band locking, RSRP/RSRQ/SINR/PCI/EARFCN, Wi-Fi chipset/standards, and four active cores are not verified. | Capability engine begins as a design-only read-only layer. Any new endpoint, including proposed `1030`, is an API addition and is not part of the current inventory. |
| Phase 3 asset handling | The actual APK calls active recursive `extractAssets()` on every `JServer.start()`. | Do not replace it with `return-void`. Design atomic, version-aware extraction with rollback and required-file verification. |
| Phase 4 UI | The modern UI in `decoded_working/` is not packaged. The stock UI uses jQuery, JSON2, cookies, and XMLHttpRequest. | Model A changes must be made inside `assets/jetty2/`, use ES5-compatible JavaScript, and avoid external fonts/frameworks or modern browser APIs. |
| Phase 5 API integration | The initial mapping is materially wrong. Actual IDs are listed in `AJAX_API_INVENTORY.md`. | Frontend/backend work must use the verified mapping below. Missing IDs must not be invented. |
| Phase 6 SMS/USSD | `smsHandler.js` is present, but no verified complete SMS/USSD backend contract was established. | SMS/USSD remains `UNKNOWN` and must not appear as functional UI until a backend path is found and tested in a safe harness. |
| Phase 7 performance | Runtime exposes two CPU entries, approximately 398 MB usable RAM, and 196604 KiB zRAM. | Measure startup, extraction, API, memory, and UI budgets on stock hardware. Do not claim improvements without measurements. |
| Phase 8 build/install | APK is a privileged system package signed with an Android default/test certificate. Platform-signing compatibility is not yet proven. | A rebuilt APK cannot be called installable until certificate/shared-UID/platform-key compatibility is verified. |
| Phase 9 testing | Live destructive operations are prohibited in this stage. | Use mocked servlet requests, test fixtures, static checks, and read-only device observation. Do not reboot, factory-reset, change USB composition, flash, update, or alter identity. |
| Phase 10 deliverables | A modified APK is not a Phase 0/plan deliverable. | Produce designs and test gates first; build only after the signing, rollback, and stock-firmware installation blockers are resolved. |

## 3. Authoritative AJAX mapping and treatment

The following is the planning source of truth. It does not claim that any operation is safe merely because it exists.

| ID | Verified operation | Treatment in the hardened design |
|---:|---|---|
| 1000 | Login | Keep request shape; create server-side session; remove raw IMEI from login response; rate-limit failures. |
| 1001 | Network status | Authenticated read-only telemetry; preserve `flag/results` wrapper. |
| 1002 | WAN/Wi-Fi information | Authenticated read; remove Wi-Fi password from response; use masked/configured indicator. |
| 1003 | Traffic/GPS/client count | Authenticated read; review whether GPS fields are needed and minimize them. |
| 1004 | Mobile-data toggle | Authenticated state change; CSRF and confirmation; validate `conn_mode`. |
| 1005 | Preferred network mode | Authenticated maintenance/configuration change; validate only modes already implemented by the APK. |
| 1006 | Wi-Fi status/configuration query | Authenticated read; preserve fields needed by legacy UI, but do not expose secrets. |
| 1007 | Wi-Fi SSID/max-station update | Authenticated state change; strict SSID and numeric validation; CSRF. |
| 1008 | AP restart | Authenticated maintenance action; explicit confirmation; no automatic UI polling. |
| 1009 | Wi-Fi security query | Authenticated sensitive read; never return the password; expose `configured`/masked state. |
| 1010 | Wi-Fi security update | Authenticated state change; write-only password; strict policy; CSRF and confirmation. |
| 1011 | DHCP/client information query | Authenticated read; validate output before rendering. |
| 1012 | DNS update | Authenticated state change; IPv4 validation; CSRF. |
| 1013 | Device reboot | Default-deny maintenance action; one-time confirmation and reauthentication if ever enabled. |
| 1014 | Factory restore | Default-deny; require explicit maintenance authorization and a recovery warning. No live test. |
| 1015 | SIM information | Authenticated sensitive read; mask or omit IMSI/ICCID by default. |
| 1016 | APN profile query | Authenticated read; omit APN passwords; use write-only editing. |
| 1017 | APN profile update | Authenticated state change; validate profile index, APN, username, password, and auth type. |
| 1018 | APN selection | Authenticated state change; validate profile number and warn about connectivity loss. |
| 1019 | Absent | Do not implement or document as available. |
| 1020 | Administrator password change | Authenticated sensitive action; reauthenticate; enforce policy; invalidate old sessions. |
| 1021 | ADB status | Authenticated sensitive read; hidden from ordinary dashboard; report current state only. |
| 1022 | ADB toggle | Default-deny maintenance action; no enable-by-default behavior. |
| 1023 | Duplicate traffic query | Keep only if compatibility requires it; otherwise classify as legacy and apply the same read authorization. |
| 1024 | Duplicate reboot | Default-deny exactly like `1013`; do not leave an unguarded alias. |
| 1025 | Wi-Fi SSID/password update | Legacy alias; protect identically to `1007/1010` or disable after compatibility testing. |
| 1026 | DHCP range update | Authenticated state change; IPv4/subnet/range validation. |
| 1027 | DHCP range query | Authenticated read; preserve response shape. |
| 1028 | Connected-client table | Authenticated read; treat MAC/IP data as local network information. |
| 1029 | Device information/telemetry | Authenticated read; mask IMEI and minimize identifiers. |
| 1030–1051 | Absent | Do not assume the proposed capability endpoint exists. A future `1030` is a documented API addition, not baseline behavior. |
| 1052 | MAC-filter query | Authenticated read; validate returned entries. |
| 1053 | MAC-filter type update | Authenticated state change; validate allowed values `0`, `1`, and `3`. |
| 1054 | MAC-filter entry update | Authenticated state change; strict MAC validation and index bounds. |
| 1055 | MAC-filter commit | Authenticated maintenance/configuration action; CSRF and confirmation if it disconnects clients. |
| 2000 | Reboot bootloader | Default-deny and hidden; no live test. |
| 2001 | USB DIAG/ADB composition and reboot | Default-deny and hidden; keep ADB/DIAG disabled by default. |
| 2002 | IMEI write | Disable through the management interface; do not validate, implement, expose, or test identity modification. |
| 3000 | OTA update without MD5 verification | Default-deny until trusted signature verification and stock recovery acceptance are proven. |
| 3001 | Delete update package | Authenticated maintenance action; safe fixture-only test. |
| 3002 | Device name/firmware query | Authenticated read-only information. |

## 4. Required file impact by phase

| Proposed area | Exact baseline files | Planned changes | Compatibility risk | Verification | Rollback |
|---|---|---|---|---|---|
| Authentication | `decoded/smali/com/mifiservice/server/AjaxSevlet.smali`, `decoded/smali/com/mifiservice/server/JServer.smali`, `decoded/assets/jetty2/js/index.js`, `decoded/assets/jetty2/js/utils/ajax.js` | Add server-side session and request guard while retaining `/ajax`, JSON, `flag`, `error_info`, and `results`. | High: every page depends on the existing transport. | Mock servlet matrix; legacy page smoke tests; no live sensitive calls. | Restore original Smali/assets and APK hash. |
| Redaction | `AjaxSevlet.smali`, `assets/jetty2/js/status.js`, `deviceInformation.js`, `wifiSecurity.js`, `wwanConfig.js`, `sim.js` | Remove plaintext secrets and mask identifiers. | Medium: old UI currently expects `pwd`, IMSI, ICCID, and IMEI fields. | Response contract tests and UI fixtures with missing/redacted fields. | Restore original response fields only in a non-deployed fixture; never re-enable production leakage. |
| Input validation | `AjaxSevlet.smali`, controller methods in `device/` | Add per-ID schema checks before controller calls. | High: malformed legacy requests may currently be accepted. | Fuzzed JSON fixture tests; no device execution. | Revert guard code while retaining original APK. |
| Asset extraction | `JServer.smali`, new helper Smali class if needed, new asset manifest under `assets/jetty2/` | Stage, verify, atomically swap, preserve backup. | High: service startup and portal availability. | Failure-injection tests and cold-start fixture tests. | Keep previous extracted tree and restore original APK. |
| Capability model | New capability controller plus `AjaxSevlet.smali`; new read-only frontend files | Add only verified sources; any `1030` endpoint is explicitly new. | Medium: new endpoint and extra startup/polling work. | Host-side source tests and read-only device observation. | Omit endpoint/UI and keep original APIs. |
| UI | `assets/jetty2/index.html`, `main.html`, existing JS/CSS/JSON | Incremental Model A pages inside APK assets. | Medium/High: Android 4.4 WebView and 512-MB resource limits. | Static browser fixtures, Android 4.4 compatibility checks, asset hash comparison. | Preserve original asset tree and route old pages. |

## 5. Stock-firmware gates

Before implementation can proceed beyond a host-side harness:

1. Confirm whether the APK certificate matches the platform/shared-UID signing key required by the stock system image.
2. Confirm whether a rebuilt privileged APK can be installed without modifying the system partition or framework.
3. Confirm the stock recovery's accepted update signature format before designing an OTA replacement.
4. Establish a documented application-level rollback path that does not require custom recovery.
5. Keep the connected device untouched during all planning and host-side tests.
