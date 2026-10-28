# Security Hardening Progress Checklist - UZ801 MifiService.apk

## Section 0 Diagnosis (Read-Only Baseline Audit)
1. Service State: `com.mifiservice.hello` alive, Jetty listening on port 80 (`:::80`), GET / (200 OK) and POST 1001 (401 SESSION_REQUIRED) respond in <10ms.
2. TIMED_OUT Cause: Stock `ajax.js` hardcoded `http://192.168.100.1:80/ajax`; requests fail with timeout when accessing portal via non-192.168.100.1 host IP.
3. Console Error 1 (`index.js:41` null `.style` access): Confirmed present in ORIGINAL `decoded/assets/jetty2/js/index.js` due to missing `body6`/`body7` DOM elements.
4. Console Error 2 (`ajax.js:79` `timeOutFunc` undefined): Confirmed present in ORIGINAL `decoded/assets/jetty2/js/utils/ajax.js` due to bare global reference in timeout handler.
5. Redesign Strategy: Full rebuild of auth backend, session management, frontend ajax helper, and pages with host E2E testing.

---

- [x] **T1: Reconnaissance & Environment Audit**
  - Confirmed `decoded/` is untouched and original APK hash matches.
  - Located workspace `C:/Users/USER/omnirush.ai/`.
  - Created `work/PROGRESS.md`.

- [x] **T2: Java Security Classes & Smali Patching**
  - Compiled `Guard`, `Redactor`, `SessionManager`, `Validator` to DEX/smali.
  - Fixed `Validator.java` case 1020: `oldpwd` uses `requireSafeString(object, "oldpwd", 1, 64, false, "oldpwd")` without 8-char min length restriction.
  - Integrated guard call sites, response choke point, and logging removals in `AjaxSevlet.smali`.

- [x] **T3: Frontend UX & Relative Path Patches**
  - Updated `assets/jetty2/js/utils/ajax.js` to use relative path `url: "/ajax"` instead of hardcoded `192.168.100.1` IP, preventing `net::ERR_CONNECTION_TIMED_OUT` when browsing via Wi-Fi STA mode or other IPs.
  - Fixed undeclared `timeOutFunc` check in `ajax.js`.
  - Fixed `null` element `.style` property access error on missing `body6`/`body7` elements in `index.js`.
  - Updated `assets/jetty2/modifyPwd.html` and `js/modifyPwd.js` with new password hints and redirect handling.

- [x] **T4: Host Security Tests & Static Scans**
  - Ran 29 host unit tests in `SecurityTests` -> Passed.
  - Ran `verify_patch.py` static policy scan -> Passed.

- [x] **T5: Build Hardened Signed APK (versionCode 7)**
  - Set `versionCode 7` in `work/decoded_hardened/apktool.yml`.
  - Built with apktool, zipalign 4-byte, signed with AOSP platform key (`platform.pk8`/`platform.x509.pem`).
  - Verified signature matches target platform cert (`c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8`).
  - Candidate Signed APK: `C:/Users/USER/omnirush.ai/work/MifiService_v7_signed.apk`.

- [x] **T6: Pre-install Baseline Audit**
  - Baseline captured: `/system/priv-app/MifiService.apk`, `userId=1000`, `flags=[ SYSTEM HAS_CODE PRIVILEGED ]`.

- [x] **T7: Deployment & Installation (Attempt 3 of 3)**
  - Installed `MifiService_v7_signed.apk` (versionCode 7) with `adb -s 0123456789ABCDEF install -r`.
  - Executed `am startservice` once.

- [x] **T8: On-Device Security & Frontend Verification**
  - Pulled extracted `/data/data/com.mifiservice.hello/files/jetty2/js/index.js` and `ajax.js` from device.
  - Verified SHA-256 hashes match local `work/decoded_hardened` assets 100% (`FC251347C5F3206347135E8C0C0E935C02C7BEEA64B076128FA4E50B31AC0126` and `6DAF139F7746AAE72C35DBC0639DDACF24A6321B9739512C9299870F7C440FB2`).
  - Service process running (PID `6664`), port 80 listening.

- [x] **T9 & T10: Decision, Logging, and Report**
  - Decision: **PASS**.
  - Logged findings in `reports/SECURITY_PATCH_LOG.md`.
