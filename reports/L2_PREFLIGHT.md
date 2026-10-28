# Single-Unit L2 Preflight

**Project goal:** Turn a generic UZ801 modem into a more intuitive, modern-feeling product, APK-level only, stock firmware V2.3.12. Security hardening is a prerequisite, not the goal. Every design decision must serve “intuitive and modern” while staying safe.

**Protocol:** One-unit reversible-install gate. This document supersedes the earlier spare-unit requirement for this gate only. It does not authorize installation.

**Current decision:** `L2 FAIL — rollback verification mismatch; security patching remains locked`.

## Safety status

- **VERIFIED:** The preflight phase performed no device write. The approved L2 test later performed only the signed APK install and the conditional uninstall described below.
- **VERIFIED:** No `pm clear`, reboot, recovery transition, factory reset, USB composition change, ADB setting change, mount change, partition write, OTA, identity write, NV write, or prohibited AJAX operation was executed.
- **VERIFIED:** ADB remains enabled and untouched.
- **STOP CONDITION:** Do not proceed to Part 3 until the user sends an explicit approval containing the exact words `GO L2`.
- **STOP CONDITION:** If stable USB power is not confirmed immediately before installation, do not proceed.

## Checklist

| Item | Status | Evidence / remaining condition |
|---|---|---|
| Durable partition backups | **PASS** | Seven requested partitions were pulled twice under `C:\Users\USER\mifi_backups\2026-10-26-l2\pull1` and `pull2`; all hashes matched. |
| On-device block hashes | **PASS** | `busybox sha256sum` matched all seven host pull hashes. |
| App/config backups | **PASS** | `mificonfig.json`, readable app data files, installed APK, `packages.xml`, and `packages.list` were pulled read-only; the app's `lib` symlink target was absent and is recorded as such. |
| Backup protection | **PASS** | Backup root was placed outside workspace and `%TEMP%`, then made read-only. It contains secrets; do not share it. |
| Rebuild equivalence | **PASS** | 1,924 Smali files, manifest, public resource IDs, permissions, normalized badging, and all 105 `assets/jetty2` entries matched the original. |
| Candidate source delta | **PASS** | Temporary candidate changes only `versionCode: 1` to `versionCode: 2`; no change was made in `decoded/`. |
| Candidate signing | **PASS** | v1 JAR signing verified; candidate certificate SHA-1/SHA-256 equals the installed APK/framework platform certificate. |
| Candidate package identity | **PASS** | Package, shared UID, target SDK, min SDK, permissions, component names, and versionName are unchanged. |
| Baseline package snapshot | **PASS** | Private snapshot includes `dumpsys package`, package path, flags, userId, permissions, and service process. |
| Baseline process/listener snapshot | **PASS** | Private snapshot includes `ps`, `/proc/net/tcp*`, `/proc/net/udp*`, socket inode owners, and interfaces. |
| Baseline property/log snapshot | **PASS** | Private snapshot includes `getprop`, kernel version, mount table, battery/power-supply state, and a 100-line logcat tail. |
| Stock C-01 response shape | **PASS** | Unauthenticated `1001` and `1003` returned HTTP 200 with non-empty `{flag,error_info,results}` JSON. No other ID was requested. |
| Rollback commands written | **PASS** | Commands are listed below; no rollback mutation was executed during preflight. |
| Rollback read-only dry-run | **PASS** | `pm path`, `pm list packages`, and `dumpsys package` completed without mutation. |
| Stable USB power | **PASS — USER CONFIRMED** | The user confirmed stable wall-adapter power for the whole test. No spontaneous restart was observed. |
| Explicit authorization | **PASS** | The user sent `GO L2`. |

## Power evidence

- **VERIFIED:** `dumpsys battery` reported `USB powered: true`, `present: true`, `level: 1`, and voltage around 3.55 V.
- **VERIFIED:** `/sys/class/power_supply` exposes `battery`, `bms`, and `usb` nodes; the battery node reports capacity 1 and the sampled state reports `Discharging`.
- **UNKNOWN:** Whether the unit has a healthy physical battery capable of carrying the test if USB power is interrupted.
- **REQUIRED:** Keep the unit on stable wall/USB power for the entire L2 attempt and rollback. Do not rely on the modem's cellular connection or hotspot as the recovery channel.

## Candidate artifact

- **VERIFIED temporary path:** `C:\Users\USER\AppData\Local\Temp\agent-tmp\l2-candidate-signed.apk`
- **VERIFIED candidate SHA-256:** `4e08c15f8167eed8f6fb91c58b0b95e4a9214a967f51a826a0b8bfaad1dd50ee`
- **VERIFIED candidate properties:** versionCode 2, versionName 1.0, package `com.mifiservice.hello`, v1 signature only.
- **UNKNOWN:** Whether this package can be accepted by the package manager as a replacement for the privileged system package. That is the L2 feasibility check and has not been attempted.

## Baseline snapshot summary

- **VERIFIED:** Installed path: `/system/priv-app/MifiService.apk`.
- **VERIFIED:** Package: `com.mifiservice.hello`.
- **VERIFIED:** `userId=1000`, shared user `android.uid.system/1000`, flags include `SYSTEM`, `HAS_CODE`, `PRIVILEGED`.
- **VERIFIED:** Baseline versionCode is 1 and target SDK is 19.
- **VERIFIED:** The stock service process was present in the process snapshot.
- **VERIFIED:** Port 80 was owned by PID 1274 (`com.mifiservice.hello`); TCP ADB port 7628 was owned by PID 325 (`adbd`).
- **VERIFIED:** Baseline unauthenticated `1001` result keys: `netmode`, `netstatus`, `oper`, `rssi`.
- **VERIFIED:** Baseline unauthenticated `1003` result keys: `client_num`, `down_bytes`, `maxSta`, `up_bytes`.
- **VERIFIED:** No response values were copied into this report.

## Rollback commands

These are the only intended package rollback commands for Part 3. They are written here for review; they were not run during preflight.

```text
adb uninstall com.mifiservice.hello
adb shell pm path com.mifiservice.hello
adb shell pm list packages com.mifiservice.hello
adb shell dumpsys package com.mifiservice.hello
adb shell ps
adb shell cat /proc/net/tcp
adb shell cat /proc/net/tcp6
adb forward tcp:18080 tcp:80
```

After rollback, the protocol requires verification of:

1. `pm path` returns `/system/priv-app/MifiService.apk`.
2. VersionCode is 1.
3. Baseline flags, shared UID, userId, and permissions match the saved snapshot.
4. The service process is running.
5. The portal answers through ADB forwarding.
6. Shape-only `1001` and `1003` responses match the saved stock baseline.
7. SHA-256 of `/data/mificonfig.json` equals the backup hash.

If `adb uninstall` fails during Part 3, allow exactly one retry. If rollback still fails, stop and ask the user. Do not run `pm clear`; do not reboot without a separate explicit approval in chat.

## User warning before approval

If the user approves L2, the portal on port 80 will be unavailable briefly while the package is tested. Keep the USB/ADB connection attached, keep stable USB power, and do not rely on modem internet, Wi-Fi hotspot, or the portal itself for recovery. The test will always attempt rollback, whether the install succeeds or fails, subject to the stated stop conditions.

## Required approval

The next device-writing action is blocked until the user sends an explicit message containing:

```text
GO L2
```

No other wording is treated as authorization.

## Actual L2 execution result

### User amendments applied

- **VERIFIED:** `adb uninstall` was executed only after post-install `pm path` showed `/data/app/com.mifiservice.hello-1.apk`.
- **VERIFIED:** The install succeeded, so the conditional uninstall was allowed and returned `Success`.
- **VERIFIED:** A full post-test `logcat -d` was saved privately at `C:\Users\USER\mifi_backups\2026-10-26-l2-preinstall\post_test_logcat.txt`.
- **VERIFIED:** ADB remained connected and the unit did not restart on its own.

### Results

- **VERIFIED:** `adb connect 192.168.100.1:7628` returned `connected to 192.168.100.1:7628`.
- **VERIFIED:** The versionCode 2 candidate installed successfully with `adb install -r`.
- **VERIFIED:** Post-install `pm path` was under `/data/app`; versionCode was 2; UID, shared UID, flags, and permission set were preserved.
- **VERIFIED:** The service required one permitted manual `am startservice` invocation after install. It then ran and served the portal.
- **VERIFIED:** `GET /` returned the login page and `POST funcNo=1001` preserved the stock response shape.
- **VERIFIED:** Conditional `adb uninstall` succeeded and restored the system APK path, versionCode 1, flags, permissions, and the `mificonfig.json` hash.
- **FAIL:** Rollback verification did not match baseline: `User 0 enabled=0` after rollback versus baseline `enabled=1`, and the service process was absent after rollback.
- **STOPPED:** No `pm enable`, reboot, second uninstall, or additional device mutation was attempted after detecting the mismatch.

### Verdict

`L2 FAIL — rollback verification mismatch.` The matching-signed APK is accepted by the package manager, but the single-unit protocol does not pass until the system package's enabled state and service state can be restored to the saved baseline under a separately approved procedure. Phases 1–6 remain locked.
