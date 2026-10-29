# Hardcoding & Duplication Map — Mifi Control Center

## 1. Duplicated & Competing Implementations Summary

| Category | Duplicated Item | Occurrence File 1 | Occurrence File 2 | Resolution / Status |
| :--- | :--- | :--- | :--- | :--- |
| **CSS Stylesheet** | Common Layout Styles | `css/common.css` | `css/m3-theme.css` | `m3-theme.css` established as primary M3 design system; `common.css` retained for legacy compatibility |
| **CSS Stylesheet** | Legacy Page Layouts | `css/oldcommon.css` | `css/main.css` | Replaced by `m3-theme.css` across all active HTML pages |
| **HTML Subpage** | Standalone Wi-Fi Security | `wifiSecurity.html` | `wifiSetting.html` | Subsumed into `wifiSetting.html` (single unified Wi-Fi & Security page) |
| **Translation Keys** | Language Names | `main.js` | `index.js` | Centralized language selector logic using `json/id.json`, `en.json`, `zh.json`, `ru.json` |
| **Table Construction** | Device List Renderer | `D_HCP.js` (`showCurrentDev`) | `MacFilter.js` (`showCurrentDev`) | Replaced raw string concatenations with safe jQuery DOM node creation in both scripts |
| **Request Helper** | Core AJAX Wrapper | `js/utils/ajax.js` | `js/index.js` (`resumeSession`) | `resumeSession` maintains lightweight inline `$.ajax` to handle 401 response without triggering global error alert loops |
