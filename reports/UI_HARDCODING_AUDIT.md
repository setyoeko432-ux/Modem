# UI Hardcoding & Anti-Pattern Audit Report

## 1. Hardcoding Audit Matrix

This audit identifies hardcoded structures, inline styles, DOM generation anti-patterns, and API parameter dependencies across `work/decoded_hardened/assets/jetty2/`.

| Finding ID | File Path | Line Range | Category | Active | Refactoring Risk | Recommended Action |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **HC-01** | `assets/jetty2/main.html` | L75-85 | Inline Styles & Fixed Widths | Yes | Low | Migrated to CSS classes in `m3-theme.css` |
| **HC-02** | `assets/jetty2/index.html` | L30-45 | Fixed Positioning & Widths | Yes | Low | Replaced with flexbox centering container |
| **HC-03** | `assets/jetty2/js/main.js` | L145-170 | Hardcoded Class Manipulations | Yes | Medium | Refactored to M3 CSS variable signal bar mapping |
| **HC-04** | `assets/jetty2/js/status.js` | L95-100 | String Concatenation DOM | Yes | Low | Replaced with safe text node formatting |
| **HC-05** | `assets/jetty2/js/D_HCP.js` | L45-55 | Direct HTML String Injection | Yes | Medium | Sanitized and structured with safe DOM builders |
| **HC-06** | `assets/jetty2/js/MacFilter.js`| L100-110 | Direct String Concatenation | Yes | Medium | Refactored to safe M3 table row template |
| **HC-07** | `assets/jetty2/js/account.js` | L10-35 | Inline HTML String Table | Yes | Low | Replaced with M3 table builder |
| **HC-08** | `assets/jetty2/js/utils/ajax.js`| L60-70 | Hardcoded URL Path `/ajax` | Yes | High | Preserved `/ajax` path (required backend route contract) |
| **HC-09** | `assets/jetty2/js/utils/ajax.js`| L65-67 | Hardcoded Header `X-Mifi-Req` | Yes | High | Preserved header (required CSRF/Guard security policy) |
| **HC-10** | `assets/jetty2/deviceOperation.html` | L20-30 | Disabled Server Endpoints (`1013`/`1014`)| Yes | High | Kept default-deny 403 handling; warned user in UI |

---

## 2. Categorized Findings & Technical Details

### 2.1 Direct HTML String Construction
In legacy scripts (`D_HCP.js`, `MacFilter.js`, `account.js`), tables were populated by building HTML strings via string concatenation (`"<tr><td>" + ip + "</td></tr>"`) and appending via `$.html()`.
- **Security Vulnerability**: Untrusted device hostnames or MAC addresses returned by server could trigger Cross-Site Scripting (XSS).
- **Remediation**: Refactored to use `.text()` or escaped node creation.

### 2.2 Hardcoded Menu Links & Routing
In legacy `main.html`, navigation links were hardcoded as `<a>` tags with `target="mainifr"`.
- **Refactoring Strategy**: Maintained `target="mainifr"` iframe architecture to avoid breaking subpage script execution environments while applying M3 Nav Item styling.

### 2.3 Disabled & Security-Restricted Function IDs
The following function IDs exist in legacy HTML/JS but return `HTTP 403 Forbidden` under the hardened `Guard.smali` policy:
- `funcNo: 1013` (Reboot Device)
- `funcNo: 1014` (Factory Reset)
- `funcNo: 2000` (Reboot to Bootloader)
- `funcNo: 2001` (USB Composition Change)
- `funcNo: 3000` (OTA Firmware Flash)

**Policy Decision**: These functions are default-deny by design (PR #1 security hardening). They are preserved in HTML for UI contract completeness but handle HTTP 403 error responses gracefully with clear user notification.
