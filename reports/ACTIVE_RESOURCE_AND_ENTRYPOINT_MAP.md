# Active Resource and Entry Point Map — Mifi Control Center

## 1. Entry Point Architecture

The web administration interface is accessed at `http://192.168.100.1/` or `http://192.168.100.1/index.html`.

- **Primary Entry Point**: `http://192.168.100.1/index.html` (Authentication & Login Portal)
- **Main Shell Application**: `http://192.168.100.1/main.html` (Shell container loaded after successful authentication)
- **Subpage Container**: Frameless Iframe (`#mainifr`) inside `main.html`
- **AJAX Endpoint**: `POST http://192.168.100.1/ajax`

---

## 2. Active Web Resource Mapping

| Resource Path (`assets/jetty2/`) | Inclusion Status | Content Type | Served Path | Primary Consumer / Page |
| :--- | :--- | :--- | :--- | :--- |
| `index.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/index.html` | Authentication Portal |
| `main.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/main.html` | Shell Container & Nav Drawer |
| `status.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/status.html` | Overview Dashboard (Iframe) |
| `account.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/account.html` | Account & Sessions (Iframe) |
| `wifiSetting.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/wifiSetting.html` | Wi-Fi Settings (Iframe) |
| `netsel.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/netsel.html` | Network RAT Mode Select (Iframe) |
| `wwanConfig.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/wwanConfig.html` | APN Settings (Iframe) |
| `sim.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/sim.html` | SIM Card Info (Iframe) |
| `D_HCP.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/D_HCP.html` | DHCP Server & Clients (Iframe) |
| `MacFilter.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/MacFilter.html` | MAC Filtering (Iframe) |
| `modifyPwd.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/modifyPwd.html` | Password Modification (Iframe) |
| `deviceInformation.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/deviceInformation.html` | Hardware Info (Iframe) |
| `deviceOperation.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/deviceOperation.html` | Security Policy Notice (Iframe) |
| `upgrade.html` | `ACTIVE_RUNTIME_SOURCE` | `text/html` | `/upgrade.html` | Firmware Upgrade (Iframe) |
| `css/m3-theme.css` | `ACTIVE_RUNTIME_SOURCE` | `text/css` | `/css/m3-theme.css` | Global M3 Stylesheet |
| `css/layer.css` | `ACTIVE_RUNTIME_SOURCE` | `text/css` | `/css/layer.css` | Layer Popup Dialog Styles |
| `js/m3-theme.js` | `ACTIVE_RUNTIME_SOURCE` | `text/javascript` | `/js/m3-theme.js` | M3 Theme Switcher Script |
| `js/utils/ajax.js` | `ACTIVE_RUNTIME_SOURCE` | `text/javascript` | `/js/utils/ajax.js` | Core AJAX Transport Helper |
| `js/utils/jsonHandler.js` | `ACTIVE_RUNTIME_SOURCE` | `text/javascript` | `/js/utils/jsonHandler.js` | Safe Localization Engine |
| `json/en.json` | `ACTIVE_RUNTIME_SOURCE` | `application/json` | `/json/en.json` | English Localization Dictionary |
| `json/id.json` | `ACTIVE_RUNTIME_SOURCE` | `application/json` | `/json/id.json` | Indonesian Localization Dictionary |
| `json/zh.json` | `ACTIVE_RUNTIME_SOURCE` | `application/json` | `/json/zh.json` | Chinese Localization Dictionary |
| `json/ru.json` | `ACTIVE_RUNTIME_SOURCE` | `application/json` | `/json/ru.json` | Russian Localization Dictionary |

---

## 3. APK Packaging & Extraction Flow

```text
APK Asset File (assets/jetty2/*)
    └── App Boot / Installation Step
        └── Extracted to Device Filesystem: /data/data/com.mifiservice.hello/files/jetty2/*
            └── Jetty 8 ResourceHandler (Port 80)
                └── Browser GET Request (http://192.168.100.1/*)
```
