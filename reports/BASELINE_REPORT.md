# UZ801 MifiService Phase 0 Baseline

**Date:** 2026-10-25  
**Scope:** Non-destructive discovery of the supplied `MifiService.apk` and the connected UZ801 device.  
**Status:** Phase 0 discovery complete; no APK or device files were modified.

## 1. Inputs and provenance

- Workspace APK: `MifiService.apk`
- Preserved APK: `original/MifiService.apk`
- Authoritative fresh decompile of the exact APK: `decoded/`
- Preserved pre-existing working decompile for comparison only: `decoded_working/`
- Connected package path: `/system/priv-app/MifiService.apk`
- Package: `com.mifiservice.hello`
- Device was detected by ADB as authorized (`adb devices` status: `device`).
- The workspace APK and `C:\Users\USER\mifi_mod\MifiService.apk` have the same SHA-256.
- The authoritative decode declares `apktool.yml` version `3.0.3` and `apkFileName: MifiService.apk`.
- Java was not on `PATH`, but the Android Studio JBR was available.  A fresh apktool decode was run with that JBR into `decoded/`; the pre-existing `decoded_working/` tree was kept separately for comparison.

## 2. APK identity

| Property | Verified value |
|---|---|
| APK size | 23,994,908 bytes |
| APK SHA-256 | `6b4c5f91c8ad37b99acfc73edaf5ec66046e6a3b0a9efee61a3f2cb2bff602b5` |
| ZIP entries | 281 |
| Uncompressed ZIP content | 27,039,375 bytes |
| DEX files | `classes.dex` only |
| Resources | `resources.arsc` present |
| Signature files | `META-INF/CERT.RSA`, `CERT.SF`, `MANIFEST.MF` |
| Certificate subject | Android default certificate (`CN=Android`, `O=Android`) |
| Certificate SHA-1 | `27:19:6E:38:6B:87:5E:76:AD:F7:00:E7:EA:84:E4:C6:EE:E3:3D:FA` |
| Certificate SHA-256 | `C8:A2:E9:BC:CF:59:7C:2F:B6:DC:66:BE:E2:93:FC:13:F2:FC:47:EC:77:BC:6B:2B:0D:52:C1:1F:51:19:2A:B8` |
| Certificate serial | `B3998086D056CFFA` |
| Certificate validity | 2008-04-15 through 2035-09-01 |

The signing certificate is an AOSP-style default Android test certificate.  This is a verified property of the APK certificate, not an assumption based only on the device build fingerprint.

## 3. Android package baseline

Decoded manifest: `decoded/AndroidManifest.xml`  
Decoded metadata: `decoded/apktool.yml`

| Property | Value |
|---|---|
| Package | `com.mifiservice.hello` |
| Shared UID | `android.uid.system` |
| Runtime UID on device | `1000` (`android.uid.system`) |
| Version code | `1` |
| Version name | `1.0` |
| Minimum SDK | `15` |
| Target SDK | `19` |
| Installed path | `/system/priv-app/MifiService.apk` |
| Application flags | `SYSTEM`, `HAS_CODE`, `PRIVILEGED`, `ALLOW_BACKUP`, `ALLOW_CLEAR_USER_DATA` |

### Declared permissions

Unique permissions declared in the manifest include:

- `android.permission.INTERNET`
- `android.permission.READ_EXTERNAL_STORAGE`
- `android.permission.WRITE_EXTERNAL_STORAGE`
- `android.permission.ACCESS_NETWORK_STATE`
- `android.permission.READ_PHONE_STATE`
- `android.permission.ACCESS_WIFI_STATE`
- `android.permission.CHANGE_WIFI_STATE`
- `android.permission.RECEIVE_BOOT_COMPLETED`
- `android.permission.CHANGE_NETWORK_STATE`
- `android.permission.MODIFY_PHONE_STATE`
- `android.permission.WRITE_SECURE_SETTINGS`
- `android.permission.WAKE_LOCK`
- `android.permission.VIBRATE`
- `android.permission.DISABLE_KEYGUARD`
- `android.permission.DEVICE_POWER`
- `android.permission.WRITE_SETTINGS`
- `android.permission.ACCESS_FINE_LOCATION`
- `android.permission.ACCESS_COARSE_LOCATION`
- `android.permission.OVERRIDE_WIFI_CONFIG`
- `android.permission.WRITE_OWNER_DATA`
- `com.android.launcher.permission.INSTALL_SHORTCUT`
- `android.permission.MASTER_CLEAR`
- `android.permission.HARDWARE_TEST`
- `android.permission.WRITE_MEDIA_STORAGE`
- `android.permission.MOUNT_UNMOUNT_FILESYSTEMS`

Several permissions are duplicated in the original manifest, including phone, Wi-Fi, and external-storage permissions.

### Components

- Activity: `com.mifiservice.hello.MainActivity`
- Service: `com.mifiservice.service.MifiService`
- Receiver: `com.mifiservice.receiver.BootCompletedReceiver`
- Receiver: `com.mifiservice.receiver.ShutdownReceiver`
- Receiver: `com.mifiservice.service.MifiService$RefreshAlarmReceiver`

`BootCompletedReceiver` starts `MifiService` on `BOOT_COMPLETED` (`decoded/smali/com/mifiservice/receiver/BootCompletedReceiver.smali:23-56`).

## 4. Code and asset inventory

- Total decoded Smali files: 1,924
- Application-package Smali files under `com/mifiservice`: 56
- Main application dispatcher: `decoded/smali/com/mifiservice/server/AjaxSevlet.smali` (6,550 lines)
- Web-server wrapper: `decoded/smali/com/mifiservice/server/JServer.smali`
- Service: `decoded/smali/com/mifiservice/service/MifiService.smali`
- Main controller groups:
  - `device/DeviceController.smali`
  - `device/WanDataController.smali`
  - `device/WanApnController.smali`
  - `device/WifiApController.smali`
  - `config/MifiConfiguration.smali`
  - `ota/Updater.smali`
  - `utils/ShellUtils.smali`

Most bundled Smali is third-party code:

| Package family | Smali files |
|---|---:|
| `org/eclipse` | 637 |
| `com/google` | 553 |
| `org/apache` | 426 |
| `com/alibaba` | 171 |
| `javax/servlet` | 74 |
| `com/mifiservice` | 56 |
| Other bundled packages | 7 |

The APK contains both `assets/jetty/` (93 files) and `assets/jetty2/` (105 files).  The active `JServer` code uses `jetty2`.

`assets/jetty2/` contains:

| Type | Count |
|---|---:|
| HTML | 20 |
| JavaScript | 28 |
| CSS | 4 |
| JSON | 17 |
| PNG | 17 |
| GIF | 8 |
| JPG | 6 |
| PDF | 2 |
| `.lst` | 3 |
| **Total** | **105** |

The complete per-entry SHA-256 inventory is in `reports/ORIGINAL_FILE_HASHES.txt`.

## 5. Web server and frontend baseline

Verified from `decoded/smali/com/mifiservice/server/JServer.smali`:

- `MifiService` constructs `JServer` with port `80` (`MifiService.smali:71-77`).
- `JServer.start()` registers `AjaxSevlet` at `/ajax` (`JServer.smali:595-613`).
- Static content is served by Jetty `ResourceHandler` from `getFilesDir()/jetty2` (`JServer.smali:624-720`).
- The server is started through `org.eclipse.jetty.server.Server`.
- The active `extractAssets(AssetManager,String)` method recursively lists the APK asset directory, creates the files directory, and copies each asset into it (`JServer.smali:36-480`).
- `JServer.start()` invokes asset extraction before configuring the `ResourceHandler` (`JServer.smali:608-687`).
- `MifiService.onCreate()` initializes the controllers first and retains the later `isStarted()` guard before starting Jetty (`MifiService.smali:533-843`).  The early-start/no-op-extractor changes in `decoded_working/` are not present in the exact APK.

The pre-existing `decoded_working/` tree contains six frontend files and Smali changes that do not match the packaged APK.  It is preserved as a comparison artifact, not treated as baseline evidence.  All Phase 0 reports use the fresh `decoded/` decompile and the APK archive itself.

Frontend observations:

- `assets/jetty2/index.html` presents a login form.
- `assets/jetty2/js/index.js` sends `funcNo:1000` with username and password.
- `assets/jetty2/js/utils/ajax.js` sends JSON by HTTP POST to `http://192.168.100.1:80/ajax`.
- The frontend stores login-derived values in a client-side jQuery session object; no server-side session mechanism was found in `AjaxSevlet`.
- Several hidden or directly addressable pages remain in the asset directory, including `ms.html`, `usbdebug.html`, and `reboot-bootloader.html`.

## 6. Connected-device verification

Read-only ADB observations:

| Property | Observed value |
|---|---|
| Model | `UZ801` |
| Product | `msm8916_32_512` |
| Manufacturer | `Qualcomm Technology` |
| Board | `msm8916` |
| Hardware | `qcom` |
| Android release | `4.4.4` |
| API level | `19` |
| Build display | `V2.3.12` |
| CPU entries online | `0-1` (two entries) |
| Linux CPU report | ARMv7, Qualcomm MSM8916 |
| `/proc/meminfo` MemTotal | `397824 kB` |
| zRAM swap | `196604 KiB` |
| zRAM disk size | `201326592` bytes |
| Raw `mmcblk0` blocks | `3784704` 1-KiB blocks |
| Jetty listener | TCP `:::80` listening |
| ADB setting at inspection | `adb_enabled=1` |
| USB composition at inspection | `rndis,serial_smd,diag,adb` |

The installed package dump confirms `userId=1000`, `sharedUser=android.uid.system/1000`, `targetSdk=19`, and code path `/system/priv-app/MifiService.apk`.

## 7. Baseline conclusions

1. The supplied APK, fresh `decoded/` project, and installed device package are aligned by package identity and APK hash.
2. The runtime device confirms Android 4.4.4/API 19 and MSM8916, but the observed Linux CPU topology exposes two online CPU entries, not the four-core assumption in the initial reference notes.
3. The initial reference mapping of AJAX functions is not reliable.  The actual dispatcher inventory is documented in `AJAX_API_INVENTORY.md`.
4. A separate pre-existing working tree (`decoded_working/`) contains unbuilt UI and Smali changes; those changes must not be mistaken for packaged behavior.
5. The highest-risk work is security hardening of `/ajax`, removal of plaintext secret exposure, authorization of privileged operations, and safe OTA handling.  These should precede UI expansion.
