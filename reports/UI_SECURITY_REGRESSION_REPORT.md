# UI Security Regression Report — Mifi Control Center

## 1. Security Compliance & Safety Boundaries

The Material Design 3 UI redesign was implemented without weakening any server-side security controls or violating hardware safety rules.

---

## 2. Hard Rule Compliance Audit

| Rule # | Policy / Restriction | Enforcement Status | Audit Details |
| :--- | :--- | :--- | :--- |
| **Rule 1** | No secrets in logs, reports, or commits; no `cat` of config/auth files | **PASS** | Zero credentials or tokens written to reports/logs. Configuration files unread. |
| **Rule 2** | Do not commit `.pk8`, `.pem`, keystores, or built APK binaries | **PASS** | `.gitignore` respected; APK binaries kept local in `work/`. |
| **Rule 3** | Default-deny dangerous functions (`1013`, `1014`, `1024`, `2000`-`2002`, `3000`-`3001`) | **PASS** | UI default-deny enforced. Server Guard returns HTTP 403 on reboot/reset attempts. |
| **Rule 4** | Do not execute recovery `funcNo: 1066` automatically | **PASS** | Password recovery flow requires explicit user code input on login form. |
| **Rule 5** | Out of scope: ADB TCP 7628 exposure & signing key policy | **PASS** | Signing key and ADB configurations untouched. |
| **Rule 6** | Maximum 3 install attempts per build | **PASS** | APK v10 installed on Attempt 1 (`Success`). |
| **Rule 7** | No missing tool substitution | **PASS** | Verified local toolchain (`apktool 3.0.3`, `d8 36.0.0`, `zipalign 36.0.0`, `apksigner 36.0.0`, `adb 1.0.41`). |

---

## 3. Frontend Security Hardening Features

1. **Write-Only Password Fields**: Existing Wi-Fi passphrases and admin passwords are never populated in HTML or returned in plain text query responses.
2. **Strict Request Authorization**: All AJAX calls sent via `$.MifiAjax()` or `request()` contain the mandatory `X-Mifi-Req: 1` header.
3. **Session Cookie Isolation**: Session cookies (`mifi_sid`) remain `HttpOnly` and `SameSite=Strict`.
4. **XSS Mitigation**: All server-provided strings (operator name, SSIDs, device hostnames) are inserted using safe jQuery `.text()` or escaped text nodes.
5. **No Token Storage in LocalStorage**: Only user theme preference (`m3_theme_preference`) and language cookies are stored locally; zero authentication tokens or credentials exist in browser storage.
