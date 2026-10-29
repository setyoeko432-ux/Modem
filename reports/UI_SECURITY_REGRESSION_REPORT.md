# UI Security Regression Report — Mifi Control Center

## 1. Security Compliance & Safety Boundaries

The Material Design 3 UI redesign and code refactoring were completed without weakening any server-side security controls or violating hardware safety rules.

---

## 2. Hard Rule Compliance Audit

| Rule # | Policy / Restriction | Enforcement Status | Audit Details |
| :--- | :--- | :--- | :--- |
| **Rule 1** | No secrets in logs, reports, or commits; no `cat` of config/auth files | **PASS** | Zero credentials or tokens written to reports/logs. Configuration files unread. |
| **Rule 2** | Do not commit `.pk8`, `.pem`, keystores, or built APK binaries | **PASS** | `.gitignore` respected; APK binaries kept local in `work/`. |
| **Rule 3** | Default-deny dangerous functions (`1013`, `1014`, `1024`, `2000`-`2002`, `3000`-`3001`) | **PASS** | UI default-deny enforced. Misleading restart/reset buttons removed. Server Guard returns HTTP 403 on reboot/reset attempts. |
| **Rule 4** | Do not execute recovery `funcNo: 1066` automatically | **PASS** | Password recovery flow requires explicit user code input on login form. |
| **Rule 5** | Out of scope: ADB TCP 7628 exposure & signing key policy | **PASS** | Signing key and ADB configurations untouched. |
| **Rule 6** | Maximum 3 install attempts per build | **PASS** | APK v10 installed on Attempt 1 (`Success`). |
| **Rule 7** | No missing tool substitution | **PASS** | Verified local toolchain (`apktool 3.0.3`, `d8 36.0.0`, `zipalign 36.0.0`, `apksigner 36.0.0`, `adb 1.0.41`). |

---

## 3. Frontend Security Hardening Features & XSS Remediation

1. **XSS DOM Sanitization**: Refactored `D_HCP.js` (`showCurrentDev`), `MacFilter.js` (`showMacList`, `showCurrentDev`), and `account.js` (`renderSessions`) to use jQuery `.text()` and safe DOM node creation. Tested against payloads `<script>alert(1)</script>` and `"><img src=x onerror=alert(1)>`.
2. **Deprecated Method Cleanup**: Replaced deprecated jQuery `.die().live()` methods in `MacFilter.js` with delegated `$(document).on("click", ...)` event handlers.
3. **Removal of Misleading Controls**: Removed `#restart` (`funcNo: 1013`) and `#factory` (`funcNo: 1014`) buttons and 80-second fake reload timers from `deviceOperation.html`/`js`. Replaced with Security Policy Notice explaining server 403 default-deny.
4. **Write-Only Password Fields**: Existing Wi-Fi passphrases and admin passwords are never populated in HTML or returned in plain text query responses.
5. **Strict Request Authorization**: All AJAX calls sent via `$.MifiAjax()` or `request()` contain the mandatory `X-Mifi-Req: 1` header.
6. **Session Cookie Isolation**: Session cookies (`mifi_sid`) remain `HttpOnly` and `SameSite=Strict`.
7. **No Token Storage in LocalStorage**: Only user theme preference (`m3_theme_preference`) and language cookies are stored locally; zero authentication tokens or credentials exist in browser storage.
