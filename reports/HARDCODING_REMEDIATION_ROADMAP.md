# Hardcoding Remediation Roadmap & Execution Strategy

## 1. Prioritized Remediation Roadmap

The remediation strategy prioritizes items by security impact, functional risk, and effort.

```text
Phase 1: Critical & Security Hardening (COMPLETED)
  ├── Remediate XSS DOM string concatenations in D_HCP.js, MacFilter.js, account.js
  ├── Fix jsonHandler.js translation loop wiping document body
  └── Remove misleading restart/reset controls from deviceOperation.html

Phase 2: Design System & Visual Standardization (COMPLETED)
  ├── Centralize Material Design 3 tokens in m3-theme.css
  ├── Implement M3 Theme Switcher in m3-theme.js (Light/Dark/System)
  └── Implement Indonesian localization (json/id.json)

Phase 3: Code Cleanup & Legacy Deprecations (COMPLETED)
  ├── Replace deprecated jQuery .die().live() in MacFilter.js with delegated handlers
  ├── Remove unused inline CSS and replace with m3-theme.css classes
  └── Standardize touch target minimum sizes to 44px x 44px

Phase 4: Packaging & Build Integration (COMPLETED)
  ├── Bump versionCode to 10 in apktool.yml
  ├── Compile, zipalign, and sign MifiService_v10_signed.apk
  └── Deploy and verify live on modem device (192.168.100.1)
```

---

## 2. Action Item Details & Verification Prerequisites

| Priority | Action Item | Target File(s) | Risk Level | Verification Test Procedure | Status |
| :---: | :--- | :--- | :---: | :--- | :---: |
| **P1** | Sanitize DOM table insertion | `D_HCP.js`, `MacFilter.js`, `account.js` | Medium | Test synthetic device hostname containing `<script>` tags | **COMPLETED** |
| **P1** | Patch `mifi_get_text()` i18n loop | `jsonHandler.js` | Medium | Verify switching language does not wipe HTML body | **COMPLETED** |
| **P2** | Remove misleading reboot/reset controls | `deviceOperation.html`, `deviceOperation.js` | Low | Confirm 403 Security Notice Card displays | **COMPLETED** |
| **P2** | Add Indonesian translation dictionary | `json/id.json`, `index.html`, `main.html` | Low | Verify `#select` language switcher sets `Indonesian` | **COMPLETED** |
| **P3** | Modernize jQuery event delegation | `MacFilter.js` | Low | Test set MAC filter button clicks | **COMPLETED** |
| **P3** | Package and sign v10 APK | `apktool.yml`, `apksigner` | Low | Verify cert fingerprint `c8a2e9bc...` and test live portal | **COMPLETED** |
