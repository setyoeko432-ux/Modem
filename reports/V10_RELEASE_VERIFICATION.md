# V10 Release Verification & Handoff Summary — Mifi Control Center

## 1. Release Status & Package Metadata

**MifiService v10** (`MifiService_v10_signed.apk`) is fully verified, packaged, signed, and deployed to the live modem device (`192.168.100.1`).

- **Version Code**: `10`
- **Version Name**: `1.0`
- **Package Name**: `com.mifiservice.hello`
- **APK Path**: `work/MifiService_v10_signed.apk`
- **APK SHA-256 Checksum**: `0987783253736404325F53D7AD8556468765DA8E852556794B07E59DF788CB73`
- **Signer SHA-256 Digest**: `c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8` (AOSP Platform Key)
- **Device Path**: `/data/app/com.mifiservice.hello-2.apk`
- **Git Commit**: `b3f3b54` and `110c7dd` on branch `main`

---

## 2. Summary of Verified Fixes & Enhancements

1. **XSS DOM Sanitization**: `D_HCP.js`, `MacFilter.js`, and `account.js` use safe jQuery `.text()` node builders instead of raw string concatenations.
2. **Translation Engine Fix**: `jsonHandler.js` excludes `html` and `body` tags (`$('[lang]').not('html, body')`), preventing translation loops from clearing the document body.
3. **Restricted Controls Removal**: Removed misleading restart/reset buttons and fake 80-second reload timers from `deviceOperation.html`/`js`. Displayed Security Policy Notice card explaining server 403 default-deny.
4. **Indonesian Localization**: Added `assets/jetty2/json/id.json` with complete Indonesian translations and updated language selectors.
5. **Modern Event Delegation**: Upgraded deprecated jQuery `.die().live()` methods in `MacFilter.js` to `$(document).on("click", ...)`.
6. **Material Design 3 Theme**: Implemented `m3-theme.css` and `m3-theme.js` supporting Light, Dark, and System theme switching with local storage persistence.

---

## 3. Rollback Instructions

If a rollback to the pre-v8 stock installation is required:

```cmd
adb install -r work/backup_before_v8.apk
adb shell am startservice -n com.mifiservice.hello/com.mifiservice.service.MifiService
```

- **Backup APK Path**: `work/backup_before_v8.apk`
- **Backup APK SHA-256**: `0C1FC48EE3C96A6AA669469DF133A8B8F0181FCF850B9A6963CED2D1F06E93B4`
