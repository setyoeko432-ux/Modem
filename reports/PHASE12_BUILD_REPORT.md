# UZ801 Modem - Phase 1 & 2 Build & Verification Report

## Environment (Host Tooling)

- **JDK / javac**: OpenJDK 25.0.2 (`C:\Program Files\Android\Android Studio\jbr\bin`)
- **apktool**: 3.0.3 (`C:\Users\USER\mifi_mod\apktool.jar`)
- **d8**: 36.0.0 (`C:\Users\USER\AppData\Local\Android\Sdk\build-tools\36.0.0\d8.bat`)
- **zipalign**: 36.0.0 (`C:\Users\USER\AppData\Local\Android\Sdk\build-tools\36.0.0\zipalign.exe`)
- **apksigner**: 36.0.0 (`C:\Users\USER\AppData\Local\Android\Sdk\build-tools\36.0.0\apksigner.bat`)
- **adb**: Android Debug Bridge version 1.0.41, Version 36.0.0-13206524 (`C:\platform-tools\adb.exe`)
- **android.jar**: Android SDK Platform API 34 (`C:\Users\USER\AppData\Local\Android\Sdk\platforms\android-34\android.jar`)
- **Python**: 3.12 (Playwright package not installed; Java test runner executed)

---

## Source (Git State & Unit Verification)

- **Repo URL**: `https://github.com/setyoeko432-ux/Modem`
- **Branch**: `main`
- **Exact Built HEAD**: `c835ad583a6ec0b22681863aaeaebd82c89d6bca` (`c835ad5`)
- **Host Unit Test Results** (Java Test Harness in `work/`):
  - `SecurityTests`: 96/96 checks passed [HOST]
  - `GuardFlowTests`: 20/20 checks passed [HOST]
  - `AuthFlowTests`: 73/73 checks passed [HOST]
  - **Total**: 189/189 checks passed
  - *Playwright E2E suites*: NOT TESTED (Playwright missing on host)

---

## Build Pipeline & Artifact Details

1. **Compilation**: `work/security-src/com/mifiservice/security/*.java` compiled targeting Java 8 (`-source 8 -target 8`) against `android-34/android.jar` and `work/security-stubs`.
2. **Stub Isolation Verification**: Confirmed compiled classes output contained strictly `com/mifiservice/security/*.class` (stubs were classpath-only and excluded).
3. **Dexing & Disassembly**:
   - `d8 --min-api 19` generated `classes.dex`.
   - Disassembled using `apktool d` (3.0.3) into 15 `.smali` files.
   - Updated `work/decoded_hardened/smali/com/mifiservice/security/`.
4. **Smali Sanity Check [HOST]**:
   - Verified `Guard.smali` default-denies `1013`, `1024`, `3001` (not in `isAllowed` sparse-switch).
   - Confirmed no references to test-stub-only fields (`instance`, `saves`).
   - Confirmed proper invocations of `MifiConfiguration.getInstance()`, field `loginPassword`, and `saveToFile()`.
5. **Manifest / Config**: Version code bumped to `8` in `work/decoded_hardened/apktool.yml`.
6. **Packaging, Aligning & Signing**:
   - `apktool b` -> `MifiService_v8_unsigned.apk`
   - `zipalign -p 4` -> `MifiService_v8_aligned.apk`
   - Signed with AOSP platform key (`platform.pk8` + `platform.x509.pem`).
7. **Signer & Artifact Verification**:
   - **Signer SHA-256 Fingerprint**: `c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8` [HOST]
   - **Signed APK SHA-256**: `2D789C81F5C1EBD9F03D7384F04CF86475332814E4B711F86A63659E5E1C0F48` [HOST]
   - **Contents Verification**: `classes.dex` contains `AuthApi`, `RememberMe`, `Recovery`, `Prefs`; `assets/jetty2` contains `account.html`, `js/account.js`, `index.html`, `js/index.js`; SHA-256 of `assets/jetty2/js/utils/ajax.js` matches repository copy (`95CC7298383D2E7C1ABE78FE60EFA260B34F69D3F415AF2AA8B3D6F035608F30`).

---

## Installation Summary [DEVICE]

- **Pre-install Package Path Check**: `package:/data/app/com.mifiservice.hello-1.apk` (confirmed under `/data/app`, rollback by uninstall is supported) [DEVICE]
- **Installed APK Backup**: Pulled to `work/backup_before_v8.apk` (SHA-256: `0C1FC48EE3C96A6AA669469DF133A8B8F0181FCF850B9A6963CED2D1F06E93B4`) [DEVICE]
- **Installation Attempt Count**: 1 attempt
- **Installation Outcome**: `Success` (`adb install -r work/MifiService_v8_signed.apk`) [DEVICE]
- **Service Initialization**: Service started manually via `adb shell am startservice -n com.mifiservice.hello/com.mifiservice.service.MifiService` [DEVICE]
- **Portal Status**: `http://192.168.100.1/index.html` responded with HTTP 200 after 15 s delay [DEVICE]

---

## Checks Table

| Check ID | Description | Status | Result / Detail | Environment |
| :--- | :--- | :--- | :--- | :--- |
| **a** | POST `/ajax` `{"funcNo":1001}` with `X-Mifi-Req: 1` & no cookie | PASS | HTTP 401 | DEVICE |
| **b** | POST `/ajax` `{"funcNo":1001}` without `X-Mifi-Req` header | PASS | HTTP 403 | DEVICE |
| **c** | Browser login lands on `main.html`; cookie `mifi_sid` HttpOnly + SameSite=Strict | NOT TESTED | Requires interactive user browser session | NOT TESTED |
| **d** | Menu displays "Account & Sessions", page loads, active session listed | NOT TESTED | Requires interactive user browser session | NOT TESTED |
| **e** | Preferences persistence (`lang=id`, `refresh=9`) in `/data/mifi_auth.json` | NOT TESTED | Requires interactive user browser session | NOT TESTED |
| **f** | "Keep me signed in" RememberMe cookie resumption | NOT TESTED | Modem wall clock date: `Thu Oct 29 10:29:03 WITA 2026` | DEVICE / NOT TESTED |
| **g** | Account throttling on 6 failed logins ("Try again in N s") | NOT TESTED | Manual check to avoid account lockouts | NOT TESTED |
| **h** | Logout invalidation (`whoami` funcNo 1060 returns 401 with old cookie) | NOT TESTED | Requires interactive user browser session | NOT TESTED |
| **i** | Reboot button default-deny (funcNo 1013 returns 403) | PASS / NOT TESTED | Default-deny confirmed in `Guard.smali` [HOST]; button unpressed on device per Hard Rule 3 | HOST / NOT TESTED |
| **j** | Recovery code creation in "Account & Sessions" | NOT TESTED | User-only secret creation per Hard Rule 4 | NOT TESTED |

---

## Deviations from Prompt

1. **Playwright E2E Tests**: Playwright is not installed in the local Python environment. The Java unit test suite (`SecurityTests`, `GuardFlowTests`, `AuthFlowTests`) was executed instead and passed all 189 assertions.
2. **APK Commit Policy**: `work/MifiService_v8_signed.apk` was created and installed on the modem, but excluded from git commit per user explicit choice during Step 3 approval.

---

## Open Risks & Scope Boundary

- **Reboot Persistence**: NOT TESTED. Device reboot was not performed per Hard Rule 3.
- **Recovery Flow (funcNo 1066)**: NOT TESTED on device per Hard Rule 4 to avoid changing the real admin password or consuming recovery codes.
- **Out of Scope**: ADB TCP 7628 exposure, signing key policy, and security policy modifications were explicitly excluded from scope per Hard Rule 5.
