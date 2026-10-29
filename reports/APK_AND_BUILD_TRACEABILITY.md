# APK and Build Traceability Report — Mifi Control Center

## 1. Artifact Verification & Checksum Comparison

This report compares the original APK, decompiled reference directories, and the primary active workspace.

| Artifact Path | Description | Version Code | File Size (Bytes) | SHA-256 Checksum | Ingestion / Usage Status |
| :--- | :--- | :---: | :---: | :--- | :--- |
| `original/MifiService.apk` | Stock Factory APK | `1` | 23,994,908 | `6B4C5F91C8AD37B99ACFC73EDAF5EC66046E6A3B0A9EFEE61A3F2CB2BFF602B5` | **Immutable Reference Baseline** |
| `decoded/` | Decompiled Original APK | `1` | ~65 MB | N/A (Directory) | **Immutable Decompiled Reference** |
| `decoded_working/` | Previous Build Workspace | `6` | ~65 MB | N/A (Directory) | Obsolete Working Workspace |
| `work/decoded_hardened/` | Hardened Primary Workspace | `10` | ~66 MB | N/A (Directory) | **Authoritative Active Workspace** |
| `work/MifiService_v10_signed.apk` | Live Packaged & Signed APK | `10` | 24,033,279 | `0987783253736404325F53D7AD8556468765DA8E852556794B07E59DF788CB73` | **Deployed to Device (192.168.100.1)** |

---

## 2. Build Pipeline & Packaging Process Traceability

```text
1. Source Workspace Editing
   └── work/decoded_hardened/assets/jetty2/*
   └── work/decoded_hardened/smali/com/mifiservice/security/*
   └── work/decoded_hardened/apktool.yml (versionCode: 10)

2. APK Building (apktool 3.0.3)
   └── java -jar C:\Users\USER\mifi_mod\apktool.jar b work/decoded_hardened -o work/MifiService_v10_unsigned.apk

3. Alignment (zipalign 36.0.0)
   └── zipalign -f -p 4 work/MifiService_v10_unsigned.apk work/MifiService_v10_aligned.apk

4. Signing (apksigner 36.0.0 with AOSP Platform Key)
   └── apksigner sign --key platform.pk8 --cert platform.x509.pem work/MifiService_v10_aligned.apk -> MifiService_v10_signed.apk
   └── Certificate Digest SHA-256: c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8

5. Device Deployment (adb)
   └── adb install -r work/MifiService_v10_signed.apk
   └── adb shell am startservice -n com.mifiservice.hello/com.mifiservice.service.MifiService
```

---

## 3. Findings Inclusion Across Artifacts

- **Original APK (`MifiService.apk`)**: Contains legacy `jetty2` UI assets with raw string concatenation, inline styles, no Material Design 3 theme, no Indonesian localization, and original unhardened Java security classes.
- **Active Workspace (`work/decoded_hardened/`)**: Contains M3 design system (`m3-theme.css`, `m3-theme.js`), sanitized DOM node builders in `D_HCP.js`/`MacFilter.js`/`account.js`, Indonesian localization (`json/id.json`), patched `jsonHandler.js`, and hardened security classes (`Guard.smali`, `SessionManager.smali`).
- **Live Packaged APK (`MifiService_v10_signed.apk`)**: Packaging verified 100% congruent with active workspace `work/decoded_hardened/`.
