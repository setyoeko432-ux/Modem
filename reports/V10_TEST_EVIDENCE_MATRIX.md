# V10 Test Evidence Matrix — Mifi Control Center

## 1. Test Suite & Verification Matrix

This matrix catalogs all functional, security, responsive, and deployment test evidence collected for **MifiService v10**.

| Test ID | Test Category | Preconditions & Test Input | Procedure / Command | Expected Outcome | Actual Outcome | Status | Environment |
| :--- | :--- | :--- | :--- | :--- | :--- | :---: | :--- |
| **TST-01** | APK Signature | `MifiService_v10_signed.apk` | `apksigner verify --print-certs` | SHA-256 digest `c8a2e9bc...` | SHA-256 digest `c8a2e9bc...` | **PASS** | HOST |
| **TST-02** | APK Alignment | `MifiService_v10_signed.apk` | `zipalign -c -v 4` | Verification successful | Verification successful | **PASS** | HOST |
| **TST-03** | ADB Package Path | Connected modem `0123456789ABCDEF` | `adb shell pm path com.mifiservice.hello` | `/data/app/com.mifiservice.hello-2.apk` | `/data/app/com.mifiservice.hello-2.apk` | **PASS** | DEVICE |
| **TST-04** | ADB Push Install | `MifiService_v10_signed.apk` | `adb install -r MifiService_v10_signed.apk` | `Success` | `Success` (Attempt 1) | **PASS** | DEVICE |
| **TST-05** | Service Startup | Package installed on modem | `adb shell am startservice -n com.mifiservice.hello/...` | Starting service: Intent {...} | Starting service: Intent {...} | **PASS** | DEVICE |
| **TST-06** | Portal HTTP Root | MifiService running on port 80 | `python -c "urlopen('http://192.168.100.1/index.html')"` | HTTP `200 OK`, HTML length > 7KB | HTTP `200 OK`, HTML length `7,702 B` | **PASS** | DEVICE |
| **TST-07** | M3 CSS Delivery | MifiService running on port 80 | `python -c "urlopen('http://192.168.100.1/css/m3-theme.css')"` | HTTP `200 OK`, contains `--md-sys-color-primary` | HTTP `200 OK`, contains `--md-sys-color-primary` | **PASS** | DEVICE |
| **TST-08** | Status Dashboard | MifiService running on port 80 | `python -c "urlopen('http://192.168.100.1/status.html')"` | HTTP `200 OK`, contains `System Overview` | HTTP `200 OK`, contains `System Overview` | **PASS** | DEVICE |
| **TST-09** | XSS DOM Node Test | Device name `<script>alert(1)</script>` | Static AST & Regex inspection via `verify_ui_remediation.py` | Uses `$("<td>").text(...)` | All script safety checks passed | **PASS** | HOST |
| **TST-10** | i18n Translation Fix | `<html lang="en">` tag present | Static inspection of `jsonHandler.js` & HTML files | `$('[lang]').not('html, body')` | `html, body` excluded from translation replacement | **PASS** | HOST |
| **TST-11** | Restricted Controls | `deviceOperation.html` | Static inspection of `deviceOperation.html`/`js` | `#restart` & `#factory` absent | Security Policy Notice card displayed | **PASS** | HOST |
| **TST-12** | Event Delegation | `MacFilter.js` | Static inspection of `MacFilter.js` | Uses `$(document).on("click", ...)` | `.die().live()` eliminated | **PASS** | HOST |

---

## 2. Test Environment Classification Key

- **HOST**: Executed on host PC (Windows 10, Java 25 JBR, Python 3.12, Android SDK build-tools 36.0.0).
- **DEVICE**: Executed on connected UZ801 modem hardware (`192.168.100.1` via ADB and HTTP).
- **Runtime Testing Level**:
  - `TST-01` to `TST-08`: Verified via live HTTP server response and ADB binary checks.
  - `TST-09` to `TST-12`: Verified via AST / static regex code safety scanner (`verify_ui_remediation.py`).
