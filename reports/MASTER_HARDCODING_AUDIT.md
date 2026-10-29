# Master Hardcoding, Static UI, and Configuration Traceability Audit Report

## 1. Executive Summary

This master audit provides a comprehensive, evidence-based assessment of all forms of hardcoding, static UI structures, embedded configuration, duplicated implementation, and hardcoded behavior across the **UZ801 Modem (MifiService)** repository (`https://github.com/setyoeko432-ux/Modem`).

- **Target Workspace**: `work/decoded_hardened/assets/jetty2/`
- **Current Git HEAD**: `110c7dd` on branch `main`
- **Original APK SHA-256**: `6B4C5F91C8AD37B99ACFC73EDAF5EC66046E6A3B0A9EFEE61A3F2CB2BFF602B5`
- **Active Build APK (v10) SHA-256**: `0987783253736404325F53D7AD8556468765DA8E852556794B07E59DF788CB73`
- **Total Scanned Asset Files**: 18 HTML files, 4 CSS files, 21 JS files, 18 JSON dictionaries.

---

## 2. Severity Summary & Finding Counts

| Severity Level | Finding Count | Description & Scope |
| :--- | :---: | :--- |
| **CRITICAL** | 0 | Zero unmitigated critical vulnerabilities found in current workspace. |
| **HIGH** | 3 | Historical DOM string concatenation XSS risks (`D_HCP.js`, `MacFilter.js`, `account.js`) — **All Remediated & Verified**. |
| **MEDIUM** | 5 | Misleading restricted operation controls (`deviceOperation.html`/`js`), legacy deprecated jQuery event methods (`.die().live()`), translation loop body wipe (`jsonHandler.js`). |
| **LOW** | 8 | Inline styling, duplicated CSS declarations, legacy page layouts (`oldcommon.css`, `layer.css`). |
| **INFORMATIONAL** | 12 | Protocol constants (`funcNo: 1000-1067`), HTTP header constraints (`X-Mifi-Req: 1`), Jetty server route paths (`/ajax`). |

---

## 3. Major Findings & Architecture Highlights

1. **Embedded Web Server Runtime**: Jetty 8 runs on port 80 as a background Android service. Static assets are served directly from `/data/data/com.mifiservice.hello/files/jetty2/`.
2. **Dynamic Ajax API**: All UI interactions route through `POST /ajax` with mandatory header `X-Mifi-Req: 1` and JSON payload `{"funcNo": <int>, ...}`.
3. **Safe DOM Remediation**: Unsafe string concatenations in `D_HCP.js`, `MacFilter.js`, and `account.js` have been replaced with safe jQuery `.text()` node builders.
4. **Disabled Restricted Operations**: Remote reboot (`1013`) and factory reset (`1014`) are default-deny under Guard policy PR #1 and are represented via a Security Policy Notice card rather than active buttons.
5. **Localization Safety**: `jsonHandler.js` has been patched (`$('[lang]').not('html, body')`) to prevent document body wipes during dictionary translation.
