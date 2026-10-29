# UI Refactoring Plan & Maintenance Strategy

## 1. Refactoring Strategy & Phased Execution

The UI refactoring follows a progressive, non-breaking execution roadmap.

### Phase 1: Foundation & Design System (`assets/jetty2/css/m3-theme.css`, `js/m3-theme.js`)
- **Action**: Centralized M3 color tokens, typography, shapes, elevation, flexbox/grid, and theme switcher logic.
- **Verification**: Validated zero external network requests. Verified theme persistence in `localStorage`.

### Phase 2: Application Shell (`main.html`, `js/main.js`)
- **Action**: Applied M3 Top App Bar, M3 Navigation Drawer with active highlights, status chips (`#operatorid`, `#network1`, `#activate`), and iframe container.
- **Verification**: Verified status polling (`funcNo: 1001`) updates signal bars and operator name.

### Phase 3: Login & Security (`index.html`, `js/index.js`)
- **Action**: Applied M3 Surface Login Card, password show/hide eye toggle, remember-me checkbox, and recovery code panel.
- **Verification**: Verified `resumeSession()` (`funcNo: 1060`) 401 response handling stays on login form cleanly.

### Phase 4: Dashboard Overview (`status.html`, `js/status.js`)
- **Action**: Redesigned M3 Traffic Stat Cards (TX/RX), WAN/IP Network Card, Wi-Fi Network Card, and Connection Control Card.
- **Verification**: Verified polling (`funcNo: 1002`, `1003`) updates bytes and client counts.

### Phase 5: Management & Settings Pages
- **Action**: Redesigned `account.html`, `wifiSetting.html`, `netsel.html`, `wwanConfig.html`, `sim.html`, `D_HCP.html`, `MacFilter.html`, `modifyPwd.html`, `deviceInformation.html`, `deviceOperation.html`, `upgrade.html`.
- **Verification**: Verified all form input `id`s and `name`s match legacy JavaScript handlers.

### Phase 6: Internationalization & Localization (`json/id.json`, `js/utils/jsonHandler.js`)
- **Action**: Added Indonesian translation dictionary (`id.json`). Patched `jsonHandler.js` (`$('[lang]').not('html, body')`) to prevent translation loop from clearing document body.
- **Verification**: Verified language selector switches between English, Chinese, Russian, and Indonesian.

---

## 2. Regression Risk Mitigation & Safety Rules

1. **Contract Immutability**: All AJAX endpoints (`/ajax`), headers (`X-Mifi-Req: 1`), and parameter names (`funcNo`, `username`, `password`, `conn_mode`, `wwan.RAT`, etc.) are immutable.
2. **XSS Prevention**: Server-returned text strings are injected using jQuery `.text()` or escaped node creation instead of raw string concatenation.
3. **Write-Only Passwords**: Existing Wi-Fi passphrases and admin passwords are never rendered or populated in HTML.
4. **Build Verification**: Every modification is compiled into a signed APK, verified for certificate fingerprint (`c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8`), deployed to modem, and verified via HTTP GET/POST.
