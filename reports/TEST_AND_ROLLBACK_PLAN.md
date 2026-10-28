# Non-Destructive Test and Rollback Plan

**Scope:** Host-side, fixture-based, static, and read-only validation only.  
**Prohibited in this stage:** reboot, factory reset, bootloader transition, USB composition change, OTA, flashing, IMEI/radio/NV writes, live sensitive AJAX calls, or device installation.

## 1. Test environments

| Environment | Purpose | Device mutation allowed |
|---|---|---|
| Host workspace | Parse Smali, validate reports, inspect assets, run fixture tests | No |
| Mock servlet harness | Exercise authorization/validation/response contracts | No |
| Static Jetty/WebView fixture | Load `assets/jetty2` and simulate AJAX responses | No |
| Connected UZ801 read-only ADB | Confirm properties, package path, listener, memory, and files | Read-only only |
| Stock-firmware runtime later | Final smoke tests after signing/install gates | Only with explicit separate authorization; not part of this plan |

## 2. Static integrity tests

### 2.1 APK and baseline

- Verify `MifiService.apk` and `original/MifiService.apk` SHA-256 remain `6b4c5f...f602b5` before every planning run.
- Run `unzip -tq original/MifiService.apk`.
- Verify all 281 entry hashes in `reports/ORIGINAL_FILE_HASHES.txt`.
- Verify authoritative `decoded/assets/jetty2` matches all 105 packaged asset entries byte-for-byte.
- Confirm `decoded_working/` is not used by build/test scripts.

### 2.2 Manifest and signature

- Parse package name, shared UID, target SDK, permissions, components, and version.
- Extract certificate subject and fingerprints.
- Compare rebuilt APK certificate to the original before any installation claim.
- Fail the build gate if package identity or shared UID assumptions change.

### 2.3 Dispatcher inventory

- Parse `AjaxSevlet.smali` for the exact allowlisted dispatcher IDs.
- Fail if a branch is added without a policy entry and test fixture.
- Fail if absent IDs (`1019`, `1030–1051`, `2003–2006`) are documented as implemented.
- Scan for `Runtime.exec`, `PowerManager.reboot`, `AT+WRIMEI`, USB composition strings, and OTA calls; each occurrence must have an explicit policy and test classification.

### 2.4 Secret and logging scans

Static checks should reject:

- full request-body logging,
- response keys that return Wi-Fi/APN passwords,
- full IMEI/IMSI/ICCID in ordinary UI paths,
- hardcoded new credentials or tokens,
- new HTTP update endpoints,
- new IMEI/identity write calls,
- `2002` invocation from any frontend file.

Do not log matched secret values in the test output.

## 3. Dispatcher authorization harness

Build a host-side test harness around the servlet contract using mock `HttpServletRequest`, `HttpServletResponse`, session, cookie, input stream, and writer objects. The harness must not connect to the modem.

For every known ID, test:

1. No session.
2. Invalid session.
3. Expired session.
4. Valid session but missing CSRF for state-changing requests.
5. Valid session with invalid JSON.
6. Valid session with wrong parameter types.
7. Valid session with overlong/invalid values.
8. Valid session with valid fixture values.
9. Maintenance IDs under default-deny policy.
10. `2002` always denied.

The mock controller layer must record whether a controller method would have been called. Authorization and validation failures must show zero controller calls.

## 4. Session tests

| Test | Expected result |
|---|---|
| Successful `1000` | Session cookie issued; no bearer token in JSON/body/log |
| Wrong password | Generic failure; rate-limit counter increments |
| Repeated failures | Delay/deny according to policy; no permanent lockout without recovery path |
| Protected request with no cookie | 401/403 and stable JSON error |
| Protected request with expired session | 401/403; no controller call |
| Session invalidation | Old cookie rejected |
| Password change | Old sessions invalidated or rotated; old CSRF rejected |
| Concurrent sessions over cap | Oldest expired/evicted according to policy |
| Service restart in fixture | Session behavior matches documented volatile/persistent decision |

## 5. CSRF tests

- Missing CSRF token on `1004`, `1005`, `1007`, `1010`, `1012`, `1013`, `1014`, `1017`, `1018`, `1020`, `1022`, `1026`, `1053–1055`, `2000`, `2001`, `3000`, and `3001` must fail.
- Wrong-session token must fail.
- Replayed one-time maintenance confirmation must fail.
- Read-only requests must not require a state-changing CSRF token, but still require a valid session unless explicitly public.
- CSRF errors must not reveal whether a secret or configuration exists.

## 6. Sensitive-data leakage tests

Fixture responses must assert that:

- `1000` does not contain full IMEI.
- `1002` does not contain `pwd`.
- `1009` does not contain the Wi-Fi password.
- `1015` masks or omits IMSI/ICCID.
- `1016` does not contain APN passwords.
- `1029` masks or omits full IMEI.
- Logs contain request ID/function/result only, never password, session, CSRF, IMSI, ICCID, or IMEI.

Use sentinel test strings in fixtures and scan the full response/log buffer for them.

## 7. Input-validation tests

For each state-changing operation, use positive and negative fixtures:

- wrong JSON type,
- missing required field,
- unknown field,
- empty string,
- overlong string,
- control characters,
- malformed IPv4,
- out-of-range IPv4 octet,
- reversed DHCP range,
- malformed MAC,
- invalid profile/index,
- invalid mode/encryption/auth value,
- upload larger than the configured limit,
- unexpected upload content type.

The expected result is a bounded JSON error with no shell/AT/controller invocation.

## 8. OTA verification design tests

Do not call stock recovery and do not place a test package on `/data/update.zip` on the device. Use host fixtures:

1. Valid package with valid signature and trusted public key.
2. Valid package with altered payload.
3. Valid package signed by an untrusted key.
4. Unsigned package.
5. Malformed signature.
6. Wrong algorithm/provider.
7. Missing package.
8. Package with an unexpected manifest/device target.

Expected behavior:

- Only the valid trusted fixture reaches the “ready for recovery” boundary in the harness.
- All other fixtures fail closed.
- MD5-only and no-MD5 paths never pass the authenticity test.
- If API 19 provider support or stock recovery acceptance cannot be proven, every fixture is rejected and OTA remains disabled.

## 9. Asset extraction tests

Use a fake asset tree or host-side provisioner harness to simulate:

- first startup with no destination,
- matching version marker,
- marker mismatch,
- missing required file,
- corrupted file,
- one-file read failure,
- disk-full/write failure,
- interrupted staging,
- failure during directory swap,
- valid backup restoration,
- invalid backup,
- repeated successful restart.

Assertions:

- The final directory is never the partially copied staging directory.
- A valid old tree remains available after a failed update.
- A missing valid tree prevents Jetty from serving partial content.
- Required files are present before the resource handler is started.

## 10. Android 4.4 frontend tests

Use the stock asset bundle and revised fixture responses to test:

- login and cookie handling,
- XMLHttpRequest/jQuery AJAX,
- custom CSRF header or JSON field,
- HTTP 401/403 handling,
- omitted/redacted password/identifier fields,
- ES5 callbacks and JSON2 parsing,
- navigation with no external resources,
- escaped IP/MAC/device names in tables,
- reconnect UI after an AP restart fixture.

Do not use Fetch, Promises, Web Crypto, modules, Service Workers, or SameSite-dependent behavior in the test target.

## 11. Performance tests

Record baseline and proposed values without claiming improvement until measured:

- APK size,
- decoded asset size,
- first extraction duration,
- restart-with-marker duration,
- dashboard fixture load time,
- mocked API response time,
- peak heap during extraction,
- idle and polling CPU usage,
- number of requests per minute,
- number of AT/RIL calls per minute.

The target environment is approximately 398 MB visible RAM with 196604 KiB zRAM and two observed processor entries. Polling must be conservative.

## 12. Rollback plan

### Host rollback

- Keep `original/MifiService.apk` immutable.
- Use `reports/ORIGINAL_FILE_HASHES.txt` to detect accidental changes.
- Keep every proposed change in a patch or separate working tree.
- Delete or restore only files created by the planning/build process; never overwrite the original artifact.

### Asset rollback

- Keep the previous extracted `jetty2` tree until the new tree passes validation.
- Restore the backup tree on staging/swap failure.
- If no valid tree remains, fail closed rather than serving partial files.

### APK rollback

- Do not claim a device rollback path until certificate/shared-UID/platform-key compatibility is known.
- Do not install or replace the system APK in this planning stage.
- A stock-firmware recovery procedure must be documented separately and must not require custom recovery, kernel, modem firmware, or partition changes.

## 13. Explicitly prohibited tests

- `adb reboot`, recovery, bootloader, or factory reset.
- `funcNo=1013`, `1014`, `1024`, `2000`, `2001`, `2002`, or `3000` against the live device.
- Writing IMEI, radio NV, calibration, or modem identity.
- Enabling ADB/DIAG through the web interface.
- Flashing any APK, update package, modem firmware, or partition.
- Carrier quota/tethering bypass experiments.
