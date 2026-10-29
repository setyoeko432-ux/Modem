# UI Source Map & Runtime Architecture Report — Mifi Control Center

## 1. Runtime Architecture & Resource Delivery Mechanism

### 1.1 Embedded Web Server (Jetty 8)
The UZ801 administration portal does **not** run inside an Android `WebView` or Activity UI. Instead, `MifiService` (`com.mifiservice.service.MifiService`) runs a background Android service on startup (`BOOT_COMPLETED`) that initializes an embedded **Eclipse Jetty 8** HTTP server listening on TCP port **80**.

- **Server Component**: Embedded Jetty 8 HTTP Server (`org.eclipse.jetty.server.Server`)
- **Port**: `80` (HTTP)
- **APK Asset Root**: `assets/jetty2/`
- **Extracted Device Path**: `/data/data/com.mifiservice.hello/files/jetty2/`
- **Dynamic Servlet Endpoint**: `/ajax` handled by `com.mifiservice.servlet.AjaxSevlet`
- **Static Resource Handler**: Serves HTML, CSS, JS, JSON, and images directly from the extracted `jetty2` filesystem directory.

---

## 2. Directory Layout & File Role Inventory

### 2.1 Workspace Hierarchy
- **`original/`**: Pristine original APK (`MifiService.apk`) — **Immutable baseline**.
- **`decoded/`**: Decompiled source of original APK — **Reference only**.
- **`decoded_working/`**: Earlier build workspace — **Non-authoritative**.
- **`work/decoded_hardened/`**: **Primary, authoritative redesign & security workspace**.

### 2.2 Active Asset Inventory (`work/decoded_hardened/assets/jetty2/`)

#### A. HTML Pages (18 Files)
- `index.html`: Login Portal, Remember-Me auto-resume, Password Recovery
- `main.html`: Shell Application, M3 Top App Bar, Navigation Drawer, Status Bar, Iframe container
- `status.html`: Dashboard Overview (Traffic, WAN/IP, Wi-Fi, Connect mode control)
- `account.html`: Admin Recovery Code, Active Sessions table, Server Preferences
- `wifiSetting.html`: Wi-Fi SSID, Max Stations, Passphrase & Encryption
- `netsel.html`: Cellular Network Mode selection (Auto, 3G Only, 4G Only)
- `wwanConfig.html`: Carrier APN Profiles 1–5 and Active Profile selector
- `sim.html`: SIM Card Status, IMSI, and ICCID
- `D_HCP.html`: DHCP Server LAN IP, Range, DNS, and Connected Client Table
- `MacFilter.html`: Wireless MAC Filtering policy and Device List
- `modifyPwd.html`: Admin Password Modification
- `deviceInformation.html`: Hardware Spec, Model, Firmware Version, Signal dBm, IMEI edit
- `deviceOperation.html`: Reboot and Factory Reset controls
- `upgrade.html`: Firmware Package Upload and Flash interface
- `wifiSecurity.html`: Legacy standalone Wi-Fi security page (subsumed by `wifiSetting.html`)
- `reboot-bootloader.html`: Legacy/Disabled bootloader reboot trigger
- `usbdebug.html`: Legacy/Disabled USB composition trigger
- `help.html` / `chat.html`: Documentation and static text pages

#### B. Stylesheets (`css/`)
- `css/m3-theme.css`: **Primary Design System** (M3 color tokens, typography, cards, inputs, buttons, grid)
- `css/layer.css`: Pop-up dialog and alert overrides for M3
- `css/common.css` / `main.css` / `oldcommon.css`: Legacy stylesheets (overridden by `m3-theme.css`)

#### C. JavaScript Utilities & Page Scripts (`js/`)
- `js/m3-theme.js`: M3 Light/Dark/System theme switcher and local storage persistence
- `js/main.js`: Top Bar status polling (`funcNo: 1001`), RSSI signal bar mapping
- `js/status.js`: Dashboard status polling (`funcNo: 1002`, `1003`), Auto/Manual connection (`funcNo: 1004`)
- `js/index.js`: Login (`funcNo: 1000`), Whoami auto-resume (`funcNo: 1060`), Recovery (`funcNo: 1066`)
- `js/account.js`: Sessions list (`funcNo: 1062`), Revoke session (`funcNo: 1063`), Preferences (`funcNo: 1064`, `1065`), Recovery Code (`funcNo: 1067`)
- `js/wifiSetting.js`: Wi-Fi query (`funcNo: 1006`), SSID update (`funcNo: 1007`), Security update (`funcNo: 1010`)
- `js/netsel.js`: Network RAT select query/update (`funcNo: 1040`, `1041`, `1005`)
- `js/wwanConfig.js`: APN profiles query/update (`funcNo: 1016`, `1017`, `1018`)
- `js/sim.js`: SIM info query (`funcNo: 1030`)
- `js/D_HCP.js`: DHCP query/update (`funcNo: 1011`, `1012`, `1026`, `1027`)
- `js/MacFilter.js`: MAC filter query/update (`funcNo: 1052`–`1055`)
- `js/modifyPwd.js`: Password change (`funcNo: 1020`)
- `js/deviceInformation.js`: Hardware spec query (`funcNo: 1029`)
- `js/deviceOperation.js`: Reboot (`funcNo: 1013`), Reset (`funcNo: 1014`)
- `js/upgrade.js`: Firmware upload (`funcNo: 3000`)
- `js/utils/ajax.js`: Centralized `$.ajax` wrapper with mandatory `X-Mifi-Req: 1` header
- `js/utils/jsonHandler.js`: Safe i18n translation engine (`$('[lang]').not('html, body')`)
- `js/plugins/jquery.js`: jQuery v2.1.4 library

#### D. Localization Dictionaries (`json/`)
- `json/en.json`: English translation dictionary
- `json/id.json`: Indonesian translation dictionary
- `json/zh.json`: Chinese translation dictionary
- `json/ru.json`: Russian translation dictionary
