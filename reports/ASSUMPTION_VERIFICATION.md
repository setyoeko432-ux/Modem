# Assumption Verification and G0 Gate Results

**Project goal:** Turn a generic UZ801 modem into a more intuitive, modern-feeling product, APK-level only, stock firmware V2.3.12. Security hardening is a prerequisite, not the goal. Every design decision must serve “intuitive and modern” while staying safe.

**Scope of this record:** G0 L0 host rebuild and G0 L1 read-only device verification only. No security patch, frontend change, APK installation, reboot, recovery transition, factory reset, USB composition change, OTA, identity write, NV write, partition write, or firmware change was performed.

**Status:** `[L2 FAIL]` G0 L0/L1 and the single-unit Part 1 checks completed. The versionCode 2 candidate was accepted and exercised, but rollback verification differed from the saved baseline: the system package returned with `User 0 enabled=0` instead of baseline `enabled=1`, and the service was not running. Per the protocol, the workflow stopped and security patching remains locked.

## Evidence labels

- **VERIFIED:** Directly observed from a file, command output, or completed read-only operation.
- **HYPOTHESIS:** Not asserted as fact; includes the check required to settle it.
- **UNKNOWN:** Not checked because the G0 gate stopped the workflow, or because the available evidence is insufficient.

## G0 L0 — Host-only identical rebuild

### Toolchain and isolation

- **VERIFIED:** Apktool version is `3.0.3` (`java -jar C:/Users/USER/mifi_mod/apktool.jar --version`).
- **VERIFIED:** The authoritative `decoded/` directory was copied to `C:/Users/USER/AppData/Local/Temp/agent-tmp/g0-l0/decoded` before building. The build did not use `decoded_working/`.
- **VERIFIED:** The unsigned rebuild was created outside the workspace at `C:/Users/USER/AppData/Local/Temp/agent-tmp/g0-l0/MifiService_rebuilt_unsigned.apk`.
- **VERIFIED:** Build command completed successfully:

  ```text
  java -jar C:/Users/USER/mifi_mod/apktool.jar b -f -o C:/Users/USER/AppData/Local/Temp/agent-tmp/g0-l0/MifiService_rebuilt_unsigned.apk C:/Users/USER/AppData/Local/Temp/agent-tmp/g0-l0/decoded
  ```

- **VERIFIED:** `unzip -tq` reported no errors for both `original/MifiService.apk` and the unsigned rebuild.

### Entry comparison against `ORIGINAL_FILE_HASHES.txt`

- **VERIFIED:** `reports/ORIGINAL_FILE_HASHES.txt` describes 281 original file entries.
- **VERIFIED:** Original APK ZIP contained 281 file entries; unsigned rebuild contained 278.
- **VERIFIED:** 269 entry hashes were identical.
- **VERIFIED:** Five entries changed:
  - `AndroidManifest.xml`
  - `classes.dex`
  - `res/layout/activity_main.xml`
  - `res/menu/main.xml`
  - `resources.arsc`
- **VERIFIED:** The three original signature entries were absent from the unsigned rebuild:
  - `META-INF/CERT.RSA`
  - `META-INF/CERT.SF`
  - `META-INF/MANIFEST.MF`
- **VERIFIED:** Four original launcher paths were normalized by Apktool into `-v4` paths. The content hashes matched pairwise:
  - `res/drawable-hdpi/ic_launcher.png` → `res/drawable-hdpi-v4/ic_launcher.png`
  - `res/drawable-mdpi/ic_launcher.png` → `res/drawable-mdpi-v4/ic_launcher.png`
  - `res/drawable-xhdpi/ic_launcher.png` → `res/drawable-xhdpi-v4/ic_launcher.png`
  - `res/drawable-xxhdpi/ic_launcher.png` → `res/drawable-xxhdpi-v4/ic_launcher.png`
- **VERIFIED:** The changed manifest, DEX, compiled resources, and XML resource entries are normal unsigned Apktool rebuild differences, not proof of behavioral equivalence. A signed, installable no-functional-change rebuild still requires the spare-unit gate.
- **VERIFIED:** Rebuild SHA-256 differs from the original because it is unsigned and was reassembled:

  ```text
  original/MifiService.apk                 6b4c5f91c8ad37b99acfc73edaf5ec66046e6a3b0a9efee61a3f2cb2bff602b5
  MifiService.apk                          6b4c5f91c8ad37b99acfc73edaf5ec66046e6a3b0a9efee61a3f2cb2bff602b5
  rebuilt unsigned APK                    081bb81a8823b3aecb2189f4398d6fd9206929b4b089375ea624510f06ee4a89
  ```

## G0 L1 — Read-only device verification

### Connected device and package

- **VERIFIED:** `adb devices -l` returned one connected UZ801 device and no second spare device.
- **VERIFIED:** `adb get-state` returned `device`.
- **VERIFIED:** `adb shell id` returned `uid=0(root) gid=0(root) context=u:r:shell:s0`. No `adb root` command was executed.
- **VERIFIED:** Installed package path is `/system/priv-app/MifiService.apk` (`adb shell pm path com.mifiservice.hello`).
- **VERIFIED:** `dumpsys package` reported package `com.mifiservice.hello`, `userId=1000`, shared user `android.uid.system/1000`, `PRIVILEGED`, `versionCode=1`, and `targetSdk=19`.
- **VERIFIED:** The pulled installed APK SHA-256 matches both `original/MifiService.apk` and the workspace copy `MifiService.apk`.

### Signing certificate comparison

- **VERIFIED:** `/system/framework/framework-res.apk` was pulled read-only.
- **VERIFIED:** The APK and `framework-res.apk` both contain `META-INF/CERT.RSA`.
- **VERIFIED:** The APK and `framework-res.apk` certificates have identical subject, issuer, serial, SHA-1 fingerprint, and SHA-256 fingerprint. This is evidence that the installed APK certificate matches the platform framework certificate on this unit.
- **UNKNOWN:** This does not by itself prove that `adb install -r` can replace a privileged system APK. The active settling check is the single-unit L2 reversible install; the earlier spare-unit wording is historical and superseded.

### Manifest process risk

- **VERIFIED:** `decoded/AndroidManifest.xml:34-53` declares the application, `MainActivity`, `MifiService`, and receivers; no `android:process` attribute is present.
- **VERIFIED:** A content search for `android:process` in the decoded manifest returned no matches.
- **UNKNOWN:** Runtime process placement after a rebuilt APK starts was not tested. The settling check is a harmless L2 install followed by read-only service/process inspection on the spare unit.

### Kernel, mounts, and partition backup

- **VERIFIED:** `/proc/version` reported Linux kernel `3.10.28`, GCC `4.7`, SMP/PREEMPT build.
- **VERIFIED:** The relevant mount state was observed as:
  - `/system` mounted read-only from `by-name/system`.
  - `/data` mounted read-write.
  - `/persist` mounted read-write.
  - `/firmware` mounted read-only from the modem partition.
- **VERIFIED:** The by-name inventory exposed `persist`, `modem`, `modemst1`, `modemst2`, and `fsg`.
- **VERIFIED:** Copy-only pulls completed to the private temporary directory `C:/Users/USER/AppData/Local/Temp/agent-tmp/g0-l1/`:
  - `persist.img`: 33,554,432 bytes.
  - `modem.img`: 67,108,864 bytes.
  - `modemst1.img`: 1,572,864 bytes.
  - `modemst2.img`: 1,572,864 bytes.
  - `fsg.img`: 1,572,864 bytes.
- **VERIFIED:** These operations used `adb pull` only. No device block, partition, mount, modem, NV, or filesystem write was issued.
- **VERIFIED:** The partition images are private temporary backups and were not copied into the workspace or reports.

### ADB recovery state

- **VERIFIED:** `settings get global adb_enabled` returned `1`.
- **VERIFIED:** `persist.sys.usb.config` returned `rndis,serial_smd,diag,adb`.
- **VERIFIED:** These values were observed only; they were not changed. ADB remains available as the recovery path.

## Preliminary static observation relevant to the earlier WebView assumption

- **VERIFIED:** `decoded/res/layout/activity_main.xml:2-5` contains a `RelativeLayout` and `TextView`, not an Android `WebView`.
- **VERIFIED:** `decoded/smali/com/mifiservice/hello/MainActivity.smali:55-69` calls `setContentView()` and contains no `WebView` reference.
- **HYPOTHESIS:** The portal is served to an external phone/laptop browser rather than rendered by the APK's launcher Activity. The check that settles this is a controlled, read-only connection observation of the portal's client/user-agent and the service's network path; it was not run because G0 stopped before G1.
- **UNKNOWN:** The frontend's actual browser compatibility target has not been changed in the implementation because no UI work is authorized before G0 passes.

## G0 L2 — Spare-unit reversible-install gate

- **UNKNOWN:** The required higher-versionCode, no-functional-change `adb install -r` test was not attempted because the user approval token `GO L2` has not been provided.
- **UNKNOWN:** Service start and portal loading after a rebuilt install have not been tested.
- **UNKNOWN:** `adb uninstall` rollback to the system version has not been tested; it is reserved for the approved single-unit L2 attempt.
- **BLOCKED:** The connected unit is not used for L2 because the ground rules require a spare unit and preserve the development unit's ADB recovery state.

## Gate decision

- **VERIFIED:** L0 host rebuild completed and was compared against the original entry inventory.
- **VERIFIED:** L1 read-only package, certificate, manifest, mount, kernel, and copy-only backup checks completed.
- **BLOCKED:** G0 is not passed because L2 requires a spare unit and no spare unit is available in the current session.
- **STOPPED:** No Java security classes, Smali integration, frontend edits, asset-extraction changes, signing changes, APK installation, or functional tests were started.

## Historical next input — superseded

- **VERIFIED:** The earlier planning document required a separately identified spare UZ801 unit. The user later authorized a single-unit protocol that supersedes that requirement for L2 only.
- **SUPERSEDED:** The spare-unit connection instructions above are retained as historical context and are not the active gate.
- **ACTIVE NEXT INPUT:** Confirm stable USB power, review `reports/L2_PREFLIGHT.md`, and send an explicit message containing `GO L2` if the user wants the single-unit reversible install attempted.
- **STOP CONDITION:** If the single-unit install is rejected, the service/portal fails, the ADB connection drops, or rollback differs from baseline, stop under the protocol; do not start security patches.

## Part 1 — Single-unit protocol verification

**Project goal:** Turn a generic UZ801 modem into a more intuitive, modern-feeling product, APK-level only, stock firmware V2.3.12. Security hardening is a prerequisite, not the goal. Every design decision must serve “intuitive and modern” while staying safe.

**Scope:** Read-only preparation for the user-approved single-unit L2 protocol. No device write, package install, uninstall, reboot, recovery transition, factory reset, USB composition change, ADB setting change, partition write, OTA, identity write, NV write, or prohibited AJAX call was performed.

### Part 1.1 — Durable double backups

- **VERIFIED:** Backup root is outside the workspace and outside `%TEMP%`: `C:\Users\USER\mifi_backups\2026-10-26-l2\`.
- **VERIFIED:** The backup root was made read-only after collection with `chmod -R a-w`.
- **VERIFIED:** The directory contains device secrets and key material. Do not share or upload it. The workspace report records hashes and metadata only.
- **VERIFIED:** Each requested block device was pulled twice through `/dev/block/platform/7824900.sdhci/by-name/`:
  - `persist`
  - `modem`
  - `modemst1`
  - `modemst2`
  - `fsg`
  - `recovery`
  - `boot`
- **VERIFIED:** The two host-side SHA-256 pulls matched for every requested partition. No partition differed during the observation window.
- **VERIFIED:** On-device `busybox sha256sum` was available and matched the host pull hashes for all seven block devices.
- **VERIFIED:** Copy-only backups also include `/data/mificonfig.json`, `/data/data/com.mifiservice.hello/` readable files, the installed APK, `/data/system/packages.xml`, and `/data/system/packages.list`.
- **VERIFIED:** The app-data directory contains `cache`, `files`, and a `lib` symlink. The recursive pull reported the `lib` target as absent; `cache` and `files` were pulled separately, and no device-side change was made.
- **VERIFIED:** The complete file-level manifest is maintained outside the workspace at `C:\Users\USER\mifi_backups\2026-10-26-l2\BACKUP_MANIFEST.txt` and contains only names, sizes, and SHA-256 values.
- **UNKNOWN:** Matching double pulls prove stability during this short interval only. They do not prove that `persist` or modem state partitions are immutable while the modem is active.

### Part 1.2 — Exposure, listeners, and ADB

- **VERIFIED:** Read-only properties returned:

  ```text
  ro.secure=0
  ro.adb.secure=<unset/empty>
  ro.debuggable=1
  service.adb.tcp.port=<unset/empty>
  persist.adb.tcp.port=7628
  ```

- **VERIFIED:** `adbd` is PID `325`, `/sbin/adbd`, UID 0, GID 0, with all displayed capability masks enabled in `/proc/325/status`.
- **VERIFIED:** `/proc/net/tcp` contains an IPv4 wildcard listener `0.0.0.0:7628`, inode `8766`, owned by PID `325` (`adbd`).
- **VERIFIED:** `/proc/net/tcp6` contains `[::]:80`, inode `11645`, owned by PID `1274` (`com.mifiservice.hello`).
- **VERIFIED:** DNS listeners exist on loopback and `192.168.100.1:53`; DHCP UDP port 67 is wildcard-bound.
- **VERIFIED:** `wlan0` and `rndis0` are both members of bridge `br0`; `br0` owns `192.168.100.1/24`. `rndis0` is `UP,LOWER_UP` but has no separate IPv4 address.
- **VERIFIED:** IPv4 INPUT policy is `ACCEPT`; the read-only iptables listing showed no general incoming drop rule for the management or ADB listeners.
- **HYPOTHESIS:** The portal listener on port 80 and TCP ADB listener on port 7628 are reachable from both the Wi-Fi and RNDIS sides through `br0`. The settling check is an external client connection from each interface; it was not performed because no second network client was available and no device change is needed for L2 preparation.
- **VERIFIED finding H-06 — root ADB exposure:** An accepted ADB connection currently provides UID 0, and TCP ADB is wildcard-bound on port 7628. Severity: **HIGH**, potentially **CRITICAL** if an unauthorized host can connect.
- **HYPOTHESIS:** Because `ro.adb.secure` is unset/empty, a newly attached host may not require on-device RSA approval. The exact check would require connecting a fresh, non-authorized host; that exposure test was not performed.
- **VERIFIED:** The current device state was observed only. `adb_enabled` and `persist.sys.usb.config` were not changed.

### Part 1.3 — Platform key identity

- **VERIFIED:** The installed APK certificate and `/system/framework/framework-res.apk` certificate match each other by subject, issuer, serial, SHA-1, and SHA-256.
- **VERIFIED:** The certificate also matches the public AOSP `platform.x509.pem` from the `android-4.4.4_r2` `build/target/product/security/` directory:
  - SHA-1: `27:19:6E:38:6B:87:5E:76:AD:F7:00:E7:EA:84:E4:C6:EE:E3:3D:FA`
  - Serial: `B3998086D056CFFA`
  - Public certificate SHA-256: `9837de028f460c35cc8d3fa45f14eecce30f6fbfe4b93d399aef1acb80c20d14`
- **VERIFIED:** The matching AOSP platform signing material was obtained outside the workspace for the host-only candidate:
  - Source: AOSP `android-4.4.4_r2`, `build/target/product/security/platform.x509.pem` and `platform.pk8`.
  - `platform.x509.pem` SHA-256: `9837de028f460c35cc8d3fa45f14eecce30f6fbfe4b93d399aef1acb80c20d14`.
  - `platform.pk8` SHA-256: `1ad8ef556870edb70f69a9d3c112544c07de5162ba440d84d33f8bb0c5962875`.
- **VERIFIED finding M-03 escalation:** The firmware trusts the publicly distributed AOSP platform certificate for the system shared UID, and the corresponding AOSP private test key is publicly obtainable. The signer is therefore not device-unique. Severity is upgraded from High to **Critical supply-chain/shared-UID risk**.
- **HYPOTHESIS:** An APK signed by this certificate can be installed through the package-manager path on this exact unit. The settling check is the single-unit L2 `adb install -r` gate; no install has been attempted.

### Part 1.4 — Recovery trust analysis

- **VERIFIED:** The pulled `recovery.img` is an Android boot image with a gzip-compressed cpio ramdisk. It was unpacked on the host only; the image was not modified or written back.
- **VERIFIED:** The recovery ramdisk contains `res/keys` with one 2048-bit RSA key entry and public exponent 3.
- **VERIFIED:** The recovery `res/keys` modulus matches the AOSP `android-4.4.4_r2` `testkey.x509.pem` modulus and exponent. It does **not** match the AOSP platform, media, or shared certificates.
- **VERIFIED:** AOSP test-key metadata:
  - `testkey.x509.pem` SHA-256: `a4384ba815b9499a5ce349b4e33c1755278873fe2eac150a068823f526e6dbde`.
  - `testkey.pk8` SHA-256: `495675d32e89a149d5abe191f4e9c0e218b9068714e9b53a7c91e164a0741a23`.
- **VERIFIED finding C-05 escalation:** The baseline upload path writes `/data/update.zip`, `3000` invokes the no-MD5 recovery path, and recovery trusts the publicly distributed AOSP test key. This supports a **Critical** firmware-installation primitive: a correctly formatted package signed with the publicly known test key could be accepted by the recovery verifier.
- **HYPOTHESIS:** A package signed by the trusted test key would complete every stock-recovery format and device-target check. The settling check would require constructing and placing an update package, which is prohibited and was not performed.
- **VERIFIED:** No update package was built, signed, uploaded, placed at `/data/update.zip`, or sent to recovery.

### Part 1.5 — Rebuild equivalence and L2 candidate

- **VERIFIED:** The unsigned rebuild was re-decoded into a temporary directory outside the workspace. All 1,924 Smali files were byte-identical to `decoded/smali` after the rebuild/redecode cycle.
- **VERIFIED:** The decoded manifest and `res/values/public.xml` were identical between the authoritative decode and the temporary candidate source tree.
- **VERIFIED:** `aapt dump permissions` was identical between the original APK and the candidate.
- **VERIFIED:** Normalized `aapt dump badging` was identical except for the intended versionCode and Apktool's expected launcher drawable `-v4` path normalization.
- **VERIFIED:** Package identity and platform integration remain unchanged in the candidate source: package `com.mifiservice.hello`, shared UID `android.uid.system`, min SDK 15, target SDK 19, permissions, component names, and versionName `1.0`.
- **VERIFIED:** All 105 `assets/jetty2` entries are byte-identical between the original APK and the signed candidate.
- **VERIFIED:** The L2 candidate was made only in a temporary copy. The only source change was `versionCode: 1` → `versionCode: 2` in the temporary `apktool.yml`.
- **VERIFIED:** Candidate build, zipalign, and v1 JAR signing completed outside the workspace. Candidate SHA-256 is `4e08c15f8167eed8f6fb91c58b0b95e4a9214a967f51a826a0b8bfaad1dd50ee`.
- **VERIFIED:** `apksigner verify` reported v1 verification true, v2/v3/v4 false as intentionally requested, one RSA signer, and the exact installed certificate SHA-1/SHA-256.
- **VERIFIED:** Candidate badging reports `versionCode='2'`, package `com.mifiservice.hello`, and versionName `1.0`.
- **VERIFIED:** Expected rebuild differences remain: unsigned APK signature entries are absent, `classes.dex` and compiled resources are reassembled, and launcher resource paths may be normalized. No functional difference was observed in the host equivalence checks.

### Part 1.6 — G1 source-level checks

#### Jetty sessions

- **VERIFIED:** `ServletContextHandler.SESSIONS` is constant `0x1` (`decoded/smali/org/eclipse/jetty/servlet/ServletContextHandler.smali:21-25`).
- **VERIFIED:** `JServer` constructs `ServletContextHandler(1)` (`decoded/smali/com/mifiservice/server/JServer.smali:590-592`).
- **VERIFIED:** The flag causes `getSessionHandler()` to instantiate a `SessionHandler` (`ServletContextHandler.smali:868-900`), and `SessionHandler()` instantiates `HashSessionManager` (`SessionHandler.smali:53-66`).
- **VERIFIED:** If no server-wide manager exists, `AbstractSessionManager.doStart()` instantiates `HashSessionIdManager` (`AbstractSessionManager.smali:808-849`).
- **VERIFIED:** The ID manager initializes `SecureRandom`; only if that fails does it fall back to `java.util.Random` and set `_weakRandom` (`AbstractSessionIdManager.smali:139-184`). Normal IDs are composed from two `long` values (`AbstractSessionIdManager.smali:497-523`), but the fallback is a security concern.
- **VERIFIED:** Baseline Jetty defaults are not acceptable without explicit configuration: cookie name `JSESSIONID`, URL and cookie tracking enabled, `_httpOnly=false`, `_secureCookies=false`, and default max idle is `-1` (`AbstractSessionManager.smali:152-216`).
- **DECISION:** Do not rely on the stock Jetty defaults. Use a bounded, expiring in-memory Java `SessionManager` with explicit `SecureRandom` IDs and the required non-default HttpOnly cookie. Jetty `HttpSession` remains a possible implementation only if all required flags are explicitly configured and tested.

#### Multipart control flow

- **VERIFIED:** `AjaxSevlet.doPost()` calls `ServletFileUpload.isMultipartContent(req)` before parsing JSON or reading `funcNo` (`AjaxSevlet.smali:242-279`).
- **VERIFIED:** The multipart path creates the upload factory, parses the request, deletes any existing `/data/update.zip`, and writes the uploaded item before the normal dispatcher is reached (`AjaxSevlet.smali:298-532`).
- **VERIFIED:** The JSON dispatcher does not begin until the non-multipart path at `AjaxSevlet.smali:800-878`.
- **REQUIRED CONSEQUENCE:** The future guard call must be inserted at the single earliest `doPost` call site before `isMultipartContent`; guarding only after `funcNo` parsing cannot protect uploads.

#### Request data reaching shell or AT paths

- **VERIFIED:** `1005` reaches `WanDataController.setPreferedNetworkType(I)`; that method maps the integer to fixed internal values before constructing `settings put global preferred_network_mode` and `AT^SYSCONFIG=` strings (`WanDataController.smali:2649-2767`). The mapping still requires strict allowlist validation before the controller call.
- **VERIFIED:** `1012` reaches `WifiApController.setWlanDns(index, dns)`, which concatenates the DNS value into a `getprop net.rmnet0.dns <index> <dns>` shell command (`WifiApController.smali:2559-2602`). This is a direct request-data-to-shell path.
- **VERIFIED:** `1017` reaches `WanApnController.addAPN2(...)`, which writes request fields into the APN content provider (`WanApnController.smali:884-1045`). `1018` later reads the selected APN and passes the stored APN string into `setApnByAt`, which concatenates it into `modem_at set APN "..."` (`WanApnController.smali:2200-2290`, `452-493`). This is an indirect request-data-to-shell/AT path.
- **VERIFIED:** `2002` passes the request IMEI into `WanDataController.setImei`, which concatenates it into `AT+WRIMEI=` and sends it through `sendAtBySmd` (`AjaxSevlet.smali:6202`; `WanDataController.smali:2587-2616`). This path remains permanently disabled and was not called.
- **VERIFIED:** `sendAtBySmd` concatenates its argument into `modem_at ` and logs the raw argument on error (`WanDataController.smali:2449-2484`, `2535-2560`).
- **VERIFIED:** `2001` has fixed `setprop`/`sync` command strings in the dispatcher (`AjaxSevlet.smali:6091-6102`); it remains prohibited and was not called.
- **VERIFIED:** `ShellUtils` exposes generic shell execution but no external caller was found outside `ShellUtils.smali` itself. This is a latent privileged helper, not evidence of a current AJAX caller.
- **VERIFIED:** `WanApnController.addAPN2` logs a `ContentValues` object after update failure (`WanApnController.smali:1049-1072`), which may contain APN credentials. This must be included in the later logging-redaction patch.

#### Admin password storage and PBKDF2

- **VERIFIED:** `MifiConfiguration` stores `loginPassword` as a plain `String` field and uses `/data/mificonfig.json` (`MifiConfiguration.smali:17`, `63`).
- **VERIFIED:** `loadFromFile()` reads the JSON `loginPassword` string directly (`MifiConfiguration.smali:455-491`).
- **VERIFIED:** `saveToFile()` writes the same field directly back into JSON (`MifiConfiguration.smali:1701-1724`).
- **VERIFIED:** Current readers are the login branch and password-change branch in `AjaxSevlet.smali:931-939` and `4202-4210`; the password-change branch writes the new value and calls `saveToFile()` (`AjaxSevlet.smali:4239-4252`).
- **VERIFIED:** No PBKDF2 implementation or provider use exists in the decoded APK.
- **VERIFIED:** Android Developers API reference for `javax.crypto.SecretKeyFactory` lists `PBKDF2WithHmacSHA1` as available on Android API 10 and later, which includes API 19. This is an API-availability reference, not evidence that the stock APK currently uses it.
- **DECISION:** Password hashing is deferred from this gate. Changing the JSON field from plaintext to a hash would require a backward-compatible migration and updates to every reader/writer; no such migration is being attempted before L2.

#### Traffic counters and polling

- **VERIFIED:** `1003` calls `WanDataController.getMobileTxBytes()` and `getMobileRxBytes()` (`AjaxSevlet.smali:1665-1708`). Those methods read `TrafficStats` directly (`WanDataController.smali:1732-1785`).
- **VERIFIED:** The inspected service code does not update the persisted `WANtrafficTotalCount` field as part of `1003`; the response uses live `TrafficStats` values.
- **HYPOTHESIS:** A service restart should not reset the underlying kernel traffic counters; exact reboot persistence is UNKNOWN and would require a prohibited reboot test.
- **DECISION:** Valid authenticated dashboard polling will refresh inactivity only on a bounded cadence in the future, while the absolute session lifetime remains hard-capped. The current stock APK has no server-side session, so it cannot be said to implement polling-based session activity today.

### Part 1.7 — Stock unauthenticated baseline proof of C-01

- **VERIFIED:** ADB host forwarding `tcp:18080 -> tcp:80` was used only for read-only requests and was removed afterward.
- **VERIFIED:** An unauthenticated POST with `funcNo=1001` returned HTTP 200, a non-empty JSON body, and the envelope keys `{flag,error_info,results}`. The result array contained the keys `netmode`, `netstatus`, `oper`, and `rssi`.
- **VERIFIED:** An unauthenticated POST with `funcNo=1003` returned HTTP 200, a non-empty JSON body, and the envelope keys `{flag,error_info,results}`. The result array contained the keys `client_num`, `down_bytes`, `maxSta`, and `up_bytes`.
- **VERIFIED:** No other AJAX function ID was requested during this proof.
- **VERIFIED finding C-01:** The static finding is confirmed at runtime on the stock APK: unauthenticated read-only dispatcher data is returned.

## Revised severity table

| Finding | Revised status | Evidence-based reason |
|---|---|---|
| M-03 | **CRITICAL — escalated** | Installed/platform certificate matches publicly distributed AOSP platform key; matching private test key was obtained for host signing. Exact install acceptance remains the L2 hypothesis. |
| C-05 | **CRITICAL — escalated/confirmed exposure chain** | Upload writes `/data/update.zip`; `3000` invokes no-MD5 recovery; recovery trusts the publicly distributed AOSP test key. Exact recovery package completion remains untested and prohibited. |
| H-06 new ADB/root exposure | **HIGH, potentially CRITICAL** | `adbd` is UID 0, `ro.secure=0`, `ro.debuggable=1`, `ro.adb.secure` unset, and TCP 7628 is wildcard-bound. Fresh-host authorization behavior remains UNKNOWN. |
| H-07 new management exposure | **HIGH** | Port 80 listener is wildcard IPv6, INPUT policy is ACCEPT, and Wi-Fi/RNDIS share `br0`; external interface reachability is a HYPOTHESIS pending an external client check. |

## Part 1 gate status (before GO L2)

- **VERIFIED:** All requested read-only Part 1 checks were completed except external fresh-host ADB authorization and external Wi-Fi/RNDIS client reachability, which remain explicitly labelled HYPOTHESIS/UNKNOWN.
- **VERIFIED:** No device write or prohibited operation occurred.
- **BLOCKED:** L2 has not started. No `adb install`, no `adb uninstall`, and no package-manager mutation has been performed.
- **BLOCKED:** The remaining blocker is the explicit user approval token `GO L2`, plus stable USB power confirmation. The detailed checklist is in `reports/L2_PREFLIGHT.md`.

## L2 result — single-unit protocol

**Decision:** `FAIL — rollback verification mismatch`. No security patching was started.

### Authorization and connection

- **VERIFIED:** The user sent the explicit approval phrase `GO L2` and confirmed stable wall-adapter power for the entire test.
- **VERIFIED:** `adb connect 192.168.100.1:7628` returned:

  ```text
  connected to 192.168.100.1:7628
  ```

- **VERIFIED:** `adb devices -l` then showed both the USB transport `0123456789ABCDEF` and the network transport `192.168.100.1:7628`. All device test commands used the USB serial `0123456789ABCDEF` so the recovery path remained explicit.
- **VERIFIED:** ADB remained connected throughout the test. No spontaneous reboot was observed: `/proc/uptime` increased from `441.99` seconds pre-install to `515.49` post-install and `606.79` after rollback; `sys.boot_completed` remained `1`, and `ro.boot.bootreason` remained empty.

### Install

- **VERIFIED:** The exact candidate was the host-only versionCode 2 APK with SHA-256 `4e08c15f8167eed8f6fb91c58b0b95e4a9214a967f51a826a0b8bfaad1dd50ee`.
- **VERIFIED:** Exact `adb install -r` result was success:

  ```text
  C:/Users/USER/AppData/Local/Temp/agent-tmp/l2-candidate-signed.apk: 1 file pushed, 0 skipped. 3.0 MB/s (23993169 bytes in 7.668s)
  Performing Push Install
          pkg: /data/local/tmp/l2-candidate-signed.apk

  Success
  ```

- **VERIFIED:** After installation, `pm path` reported `/data/app/com.mifiservice.hello-1.apk`.
- **VERIFIED:** The installed package reported `versionCode=2`, `targetSdk=19`, `userId=1000`, shared UID `android.uid.system/1000`, and `SYSTEM`/`PRIVILEGED` flags.
- **VERIFIED:** The granted permission set contained 80 entries and matched the saved baseline set.
- **VERIFIED:** The updated package's `User 0` state was `enabled=0`; baseline had `enabled=1`. This mismatch was recorded and not repaired with `pm enable` because the protocol requires stopping on rollback divergence.

### Service and portal

- **VERIFIED:** The service process was not present immediately after install. The post-install logcat tail contained no `FATAL EXCEPTION` or `Fatal signal` match.
- **VERIFIED:** Per the allowed protocol, the service was started once with `am startservice -n com.mifiservice.hello/com.mifiservice.service.MifiService`.
- **VERIFIED:** The service process then appeared as `com.mifiservice.hello`; logcat showed `JServer start resourceBase=/data/data/com.mifiservice.hello/files/jetty2`.
- **VERIFIED:** Through the existing ADB forward, `GET /` returned HTTP 200, `text/html`, 4,855 bytes, and a login marker.
- **VERIFIED:** Through the existing ADB forward, `POST funcNo=1001` returned HTTP 200 with the same response shape as the stock baseline: `{flag,error_info,results}` and result keys `netmode`, `netstatus`, `oper`, `rssi`.
- **VERIFIED:** No other post-install AJAX ID was called.

### Conditional rollback

- **VERIFIED:** `pm path` showed `/data/app/com.mifiservice.hello-1.apk`, so the user's amendment allowed uninstall.
- **VERIFIED:** `adb uninstall com.mifiservice.hello` returned `Success`.
- **VERIFIED:** After uninstall, `pm path` returned `/system/priv-app/MifiService.apk` and `versionCode=1`.
- **VERIFIED:** After uninstall, package flags and the 80-entry permission set matched the saved baseline.
- **VERIFIED:** SHA-256 of `/data/mificonfig.json` remained `0a0880df6c7ae1b0bd869f43015f3f4e97ab199679529ef250c621500abf2762`.
- **VERIFIED:** After uninstall, `User 0` reported `enabled=0`, while the baseline reported `enabled=1`.
- **VERIFIED:** After uninstall, no `com.mifiservice.hello` process was present in `ps`.
- **STOPPED:** Because rollback differed from baseline and the service was not running, no `pm enable`, reboot, second uninstall, or further portal test was attempted. The protocol requires stopping rather than repairing the state.

### Post-test logcat and observed warnings

- **VERIFIED:** Full post-test `logcat -d` output was saved privately at `C:\Users\USER\mifi_backups\2026-10-26-l2-preinstall\post_test_logcat.txt`.
- **VERIFIED:** No `FATAL EXCEPTION` or `Fatal signal` text was found in that file.
- **VERIFIED:** The logcat contains package replacement/removal messages including `Couldn't delete native library directory /data/app-lib/com.mifiservice.hello`, `Adding duplicate shared id: 1000 name=com.mifiservice.hello`, and service-restart scheduling around package removal. These are recorded as evidence, not normalized away.
- **VERIFIED:** No device reboot, partition write, USB composition change, ADB setting change, prohibited AJAX call, or recovery operation was performed.

### Feasibility verdict and next step

- **VERIFIED:** Package-manager acceptance of the matching-certificate versionCode 2 candidate succeeded on this unit.
- **FAIL:** The complete single-unit L2 gate fails because the rollback state did not match baseline (`enabled=0` vs `enabled=1`, and service absent).
- **LOCKED:** Do not begin Phases 1–6 security patching.
- **REQUIRED NEXT STEP:** Review the rollback mismatch and decide how to resolve it under a separately approved protocol. No further device mutation is authorized by this result.
