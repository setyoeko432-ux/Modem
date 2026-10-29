# V10 Source-to-APK Traceability Report — Mifi Control Center

## 1. Source-to-Artifact Mapping Matrix

This document traces active source files from `work/decoded_hardened/assets/jetty2/` through the build pipeline to their exact entries inside `MifiService_v10_signed.apk`.

| Source File Path | Version / Hash | APK Internal Entry Path | Alignment Status | Build Inclusion Verification |
| :--- | :--- | :--- | :---: | :--- |
| `work/decoded_hardened/apktool.yml` | `versionCode: 10` | `AndroidManifest.xml` | OK | Confirmed `versionCode=10` in binary manifest |
| `assets/jetty2/css/m3-theme.css` | Length: 19,850 B | `assets/jetty2/css/m3-theme.css` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/js/m3-theme.js` | Length: 3,090 B | `assets/jetty2/js/m3-theme.js` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/json/id.json` | Length: 2,850 B | `assets/jetty2/json/id.json` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/js/utils/jsonHandler.js`| Patched `.not('html, body')` | `assets/jetty2/js/utils/jsonHandler.js` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/js/D_HCP.js` | Safe DOM `.text()` | `assets/jetty2/js/D_HCP.js` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/js/MacFilter.js` | Safe DOM `.text()` | `assets/jetty2/js/MacFilter.js` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/js/account.js` | Safe DOM `.text()` | `assets/jetty2/js/account.js` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/deviceOperation.html` | Security Policy Card | `assets/jetty2/deviceOperation.html` | OK (4-byte) | Verified in APK ZIP directory |
| `assets/jetty2/js/deviceOperation.js` | Removed fake 80s timer | `assets/jetty2/js/deviceOperation.js` | OK (4-byte) | Verified in APK ZIP directory |

---

## 2. Build Pipeline & Signature Cryptographic Evidence

- **APK File Location**: `work/MifiService_v10_signed.apk`
- **APK File Size**: `24,033,279` bytes
- **APK SHA-256 Checksum**: `0987783253736404325F53D7AD8556468765DA8E852556794B07E59DF788CB73`
- **Zipalign Command**: `zipalign -c -v 4 work/MifiService_v10_signed.apk`
- **Zipalign Verification Output**: `Verification successful`
- **Apksigner Command**: `apksigner verify --print-certs work/MifiService_v10_signed.apk`
- **Signer Certificate DN**: `EMAILADDRESS=android@android.com, CN=Android, OU=Android, O=Android, L=Mountain View, ST=California, C=US`
- **Signer Certificate SHA-256 Digest**: `c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8`
