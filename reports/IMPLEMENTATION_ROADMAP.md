# Implementation Roadmap

**Objective:** Produce a hardened, lightweight `MifiService.apk` compatible with stock UZ801 V2.3.12 firmware, Android 4.4.4/API 19, the original package identity, and the existing Jetty portal.  
**Current status:** Planning only. No implementation or device mutation has occurred.

## 1. Phase gates

| Stage | Scope | Required output | Go/no-go gate |
|---|---|---|---|
| P0 | Discovery and reconciliation | Phase 0 reports and exact decode | Complete; baseline hash verified |
| P1 | Host harness and build setup | Repeatable decode/build/test commands | Stop if Smali assembly or signing inputs are missing |
| P2 | Security foundation | Session, authorization, CSRF, validation, redaction, logging design implemented in a branch | All mock dispatcher/security tests pass |
| P3 | Dangerous-operation policy | Default-deny reboot/restore/ADB/DIAG/OTA; identity path disabled | Static scans and policy matrix pass; no live operations |
| P4 | Asset provisioning | Atomic version-aware extraction | Failure-injection and cold-start fixtures pass |
| P5 | Read-only capability layer | Verified sources/states only | No unknown capability is exposed as supported |
| P6 | Model A UI | Hardened pages inside `assets/jetty2` | Android 4.4-compatible fixture tests pass |
| P7 | Build and artifact verification | Rebuilt APK, hashes, manifest/certificate report | Certificate/platform/shared-UID compatibility known |
| P8 | Authorized stock-device validation | Safe read-only smoke checks first | Requires separate authorization and recovery plan; not automatic |

## 2. P1 — Host harness and build setup

### Files and tools

- `original/MifiService.apk`
- `decoded/`
- `decoded_working/` kept outside the authoritative build path
- `reports/ORIGINAL_FILE_HASHES.txt`
- `C:\Program Files\Android\Android Studio\jbr\bin\java.exe`
- `C:\Users\USER\mifi_mod\apktool.jar` version 3.0.3

### Existing behavior

The APK can be decoded with Apktool 3.0.3. The workspace has no project-level automated test harness yet.

### Proposed behavior

Create host-side scripts/tests that:

- verify baseline hashes,
- parse dispatcher IDs,
- scan sensitive operations,
- compare asset manifests,
- run mock servlet/session/validation fixtures,
- assemble/decode a test APK without installing it.

### Risk

Low for the APK; medium for accidentally using `decoded_working/` or overwriting original artifacts.

### Verification and rollback

Run the static checks in `TEST_AND_ROLLBACK_PLAN.md`. Delete only new harness files if they are incorrect; keep the original APK and reports.

## 3. P2 — Security foundation

### Exact files

- `decoded/smali/com/mifiservice/server/AjaxSevlet.smali`
- New `decoded/smali/com/mifiservice/security/SessionManager.smali`
- New `decoded/smali/com/mifiservice/security/RequestGuard.smali`
- New `decoded/smali/com/mifiservice/security/InputValidator.smali`
- Review `decoded/smali/com/mifiservice/utils/CryptUtil.smali`
- `decoded/assets/jetty2/js/index.js`
- `decoded/assets/jetty2/js/utils/ajax.js`
- `decoded/assets/jetty2/js/utils/cookiesHandler.js`

### Existing behavior

`1000` compares credentials, then later AJAX branches proceed without visible server-side authorization. Full request bodies are logged.

### Proposed behavior

- Establish server-side session at `1000`.
- Guard every dispatcher branch.
- Add expiration, invalidation, CSRF, rate limiting, and policy table.
- Redact body logs.
- Preserve JSON envelope and legacy-safe error handling.

### Risk

High: authentication mistakes can lock out the portal or leave operations exposed.

### Verification

Mock request/response harness, policy coverage, session expiry, CSRF, and no-controller-call assertions.

### Rollback

Revert the security classes and dispatcher integration; never replace the original APK artifact. Keep the changes in a reversible patch.

## 4. P3 — Sensitive data and dangerous-operation controls

### Exact files

- `AjaxSevlet.smali`
- `WanDataController.smali`
- `DeviceController.smali`
- `Updater.smali`
- `assets/jetty2/js/status.js`
- `assets/jetty2/js/deviceInformation.js`
- `assets/jetty2/js/wifiSecurity.js`
- `assets/jetty2/js/wwanConfig.js`
- `assets/jetty2/js/ms.js`
- `assets/jetty2/js/usbdebug.js`
- `assets/jetty2/js/upgrade.js`
- `assets/jetty2/js/deviceOperation.js`
- `assets/jetty2/js/reboot-bootloader.js`

### Existing behavior

The APK exposes passwords/identifiers and privileged operations through the verified dispatcher IDs.

### Proposed behavior

- Remove secret fields from read responses.
- Mask identifiers.
- Make password fields write-only.
- Disable `2002` through the management path.
- Default-deny `1013`, `1014`, `1024`, `2000`, `2001`, `3000`, and maintenance aliases.
- Keep ADB/DIAG disabled by default.
- Keep OTA disabled until signature and recovery compatibility are proven.

### Risk

High/Critical: changes touch reboot, recovery, USB, OTA, and identity paths.

### Verification

Static scans and fixture tests only. No live sensitive AJAX calls.

### Rollback

Remove the dangerous-operation guard changes; restore original source only in a controlled branch. Do not use a risky feature as the rollback mechanism.

## 5. P4 — Atomic asset provisioning

### Exact files

- `decoded/smali/com/mifiservice/server/JServer.smali`
- New `decoded/smali/com/mifiservice/server/AssetProvisioner.smali` if needed
- New manifest under `decoded/assets/jetty2/`
- All existing `decoded/assets/jetty2/*` preserved

### Existing behavior

`extractAssets()` copies every asset directly into `getFilesDir()/jetty2` on every start and can leave partial output.

### Proposed behavior

Version marker, staging directory, per-file completion, required-file validation, atomic swap, backup, rollback, and fail-closed startup.

### Risk

High: startup and static resource availability.

### Verification

Asset failure-injection tests, first-start/restart fixtures, required-file checks, and measured extraction cost.

### Rollback

Restore the prior valid tree or the original APK asset behavior. Do not disable extraction without a validated replacement.

## 6. P5 — Read-only capability layer

### Exact files

- New `decoded/smali/com/mifiservice/device/CapabilityController.smali`
- New `CapabilityResult.smali`
- `AjaxSevlet.smali` only if a new endpoint is approved
- New `assets/jetty2/capabilities.html` and `capabilities.js` only after backend exists

### Existing behavior

Telemetry is spread across `WanDataController`, `DeviceController`, `WifiApController`, and existing AJAX IDs. No `1030` exists.

### Proposed behavior

Centralize read-only values with explicit state/source metadata and conservative caching. Use verified Android APIs, procfs/sysfs, and existing controller methods only.

### Risk

Medium: extra I/O and memory; high if unknown hardware is presented as supported.

### Verification

Fixture values for every state; read-only device observation; no AT/RIL side effects.

### Rollback

Remove the optional endpoint/page and leave existing telemetry APIs unchanged.

## 7. P6 — Model A UI migration

### Exact files

- `decoded/assets/jetty2/index.html`
- `decoded/assets/jetty2/main.html`
- Existing safe page JS/CSS/JSON
- New lightweight pages listed in `UI_ARCHITECTURE.md`

### Existing behavior

Stock pages use jQuery, JSON2, ordinary cookies, and direct AJAX calls. Hidden maintenance pages remain in the asset tree.

### Proposed behavior

Incrementally replace the shell/dashboard while preserving routes, response envelope, ES5 compatibility, local assets, and explicit unavailable states.

### Risk

Medium/High: UI regressions can hide recovery or connectivity state.

### Verification

Static asset inventory, fixture-rendered pages, legacy WebView checks, redaction checks, and performance budget.

### Rollback

Keep original pages and asset hashes. Restore navigation and page files without changing backend security policy.

## 8. P7 — Build, signing, and stock compatibility gate

### Required investigations

1. Compare original APK certificate with the platform/shared-UID signing certificate accepted by the stock system image.
2. Determine whether a rebuilt APK with the same package/shared UID can replace the system APK.
3. Confirm whether the original test certificate is sufficient for this device or merely an APK-level signature.
4. Confirm Android 4.4 resource/Smali assembly compatibility.
5. Verify the rebuilt APK's manifest, package, permissions, certificate, asset hashes, and DEX integrity.

### Stop conditions

- Unknown platform signing key.
- No safe way to install/rollback on stock firmware.
- Rebuilt APK would require changing framework, partition, recovery, or bootloader.
- OTA authenticity cannot be established.

No install or device replacement is part of this planning stage.

## 9. P8 — Authorized validation order

If and only if the signing and rollback gates are resolved in a separate approval:

1. Verify package identity and certificate before installation.
2. Install only through a documented stock-compatible mechanism.
3. Check boot/service start without invoking sensitive AJAX operations.
4. Check port 80 and static portal availability.
5. Test login/session/CSRF with non-sensitive fixtures.
6. Test safe read-only telemetry.
7. Test asset rollback using a controlled fixture, not a live partial write.
8. Stop immediately on boot, portal, network, or recovery instability.

No reboot, factory reset, USB composition change, OTA, or identity operation is authorized by this roadmap.

## 10. Cross-cutting acceptance criteria

- Original APK hash remains preserved.
- No unsupported feature appears in the UI.
- All state-changing APIs require authorization and CSRF.
- No sensitive response or log leakage.
- `2002` remains unreachable through management.
- `3000` remains disabled unless trusted signatures and stock recovery are proven.
- Asset extraction is atomic and recoverable.
- Android 4.4/API 19 compatibility is demonstrated by tests, not assumption.
- Rebuilt APK installability is not claimed until signing/shared-UID evidence is complete.
