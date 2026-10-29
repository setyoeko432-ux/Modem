# UI Implementation Report — Mifi Control Center

## 1. Overview & File Hierarchy

All frontend assets were updated under `work/decoded_hardened/assets/jetty2/` and compiled into signed APK v10 (`MifiService_v10_signed.apk`).

```text
assets/jetty2/
├── index.html                    # Material 3 Login Portal & Recovery
├── main.html                     # Material 3 App Shell (App Bar & Nav Drawer)
├── status.html                   # Dashboard Overview & Network Command Center
├── account.html                  # Account, Sessions, Recovery Code & Prefs
├── wifiSetting.html              # Wi-Fi SSID, Max Stations & Security
├── netsel.html                   # Cellular Network Mode Select
├── wwanConfig.html               # APN Profiles & Active Selection
├── sim.html                      # SIM Card Info (Status, IMSI, ICCID)
├── D_HCP.html                    # DHCP Server IP Range, DNS & Client Table
├── MacFilter.html                # MAC Filter Policy & Connected Devices
├── modifyPwd.html                # Admin Password Change
├── deviceInformation.html        # Hardware Info, Signal dBm & IMEI Edit
├── deviceOperation.html          # Reboot & Factory Reset Controls
├── upgrade.html                  # Firmware File Upload & Flash
├── css/
│   ├── m3-theme.css             # Material Design 3 Design System
│   └── layer.css                 # M3 Dialog / Popup Overrides
├── js/
│   ├── m3-theme.js              # Theme Manager (Light/Dark/System)
│   ├── main.js                   # Status Bar Polling (funcNo 1001)
│   ├── status.js                 # Dashboard Polling (funcNo 1002, 1003)
│   ├── index.js                  # Authentication & Recovery (funcNo 1000, 1060, 1066)
│   ├── account.js                # Sessions & Server Prefs (funcNo 1062, 1063, 1064, 1065)
│   └── utils/
│       ├── ajax.js               # Core AJAX wrapper with X-Mifi-Req header
│       └── jsonHandler.js        # Safe i18n Translation Handler
└── json/
    ├── en.json                   # English Dictionary
    ├── id.json                   # Indonesian Dictionary
    ├── zh.json                   # Chinese Dictionary
    └── ru.json                   # Russian Dictionary
```

---

## 2. Page-by-Page Implementation Summary

### 2.1 Login Portal (`index.html`)
- M3 Surface Card layout with centered radial background.
- Username and Password Outlined Inputs with show/hide password toggle (`#m3-pwd-toggle`).
- Checkbox for "Keep me signed in (14 days)" (`#remember`).
- Expandable Recovery Code Reset Section (`#recoveryCode`, `#recoveryNewPwd`, `#recoverBtn`).

### 2.2 Dashboard (`status.html`)
- **Traffic Stat Box Grid**: Real-time Upload (`#mifi_tx_data`), Download (`#mifi_rx_data`), and Connected Devices (`#client_num`).
- **WAN & IP Network Card**: IP (`#mifi_ip`), Subnet Mask (`#g3_mask`), Primary DNS (`#g3_dns`), Secondary DNS (`#g3_dns2`).
- **Wi-Fi Network Card**: SSID (`#ssid`), WLAN IP (`#wlan_ip`), Password (`#password`).
- **Connection Control Card**: Auto/Manual Connect Dropdown (`#connect`, `#auto`, `#manual`, `#apply`).

### 2.3 Account & Security (`account.html`)
- **Admin Recovery Code Card**: Displays current status (`#recoveryStatus`), password confirmation (`#confirmPwd`), and new code generator (`#newCode`, `#recoveryValue`).
- **Active Sessions Card**: Table of signed-in sessions (`#sessions`) with IP, age, idle time, and revocation buttons.
- **Server Preferences Card**: Preferences (`#pLang`, `#pTheme`, `#pRefresh`, `#pUnit`, `#savePrefs`).

### 2.4 Wi-Fi & LAN Pages (`wifiSetting.html`, `D_HCP.html`, `MacFilter.html`)
- M3 Form Controls, Outlined Textfields, M3 Selects, M3 Switches.
- Password show/hide toggle for Wi-Fi passphrase (`#pwd`).
- Connected clients table (`#table`, `#table2`) with empty state handling.

### 2.5 Cellular & APN Pages (`wwanConfig.html`, `netsel.html`, `sim.html`)
- APN Profiles 1–5 (`#profile1` to `#profile5`) with radio selector (`wwan.connect`).
- Network RAT mode dropdown (`wwan.RAT`: Auto, 3G Only, 4G Only).
- SIM Card Status chip (`#simsta`), IMSI (`#sim_imsi`), and ICCID (`#sim_iccid`).

---

## 3. Backend Contract Compatibility

All existing function IDs (`funcNo`) and parameter names remain 100% compliant:
- `1000` Login
- `1001` Main status bar (RSSI, Operator, Netmode, Connect state)
- `1002` WAN IP, Mask, DNS1, DNS2, SSID, WLAN IP
- `1003` Traffic bytes (TX/RX) and Client Count
- `1004` Connection Mode (Auto/Manual)
- `1005` RAT Mode Change
- `1006` / `1007` Wi-Fi Config
- `1009` / `1010` Wi-Fi Security
- `1011` / `1012` DHCP & DNS
- `1020` Password Change & APN Profile
- `1030` / `1031` SIM Status
- `1052` - `1055` MAC Filter
- `1060` - `1067` Sessions, Logout, Recovery Code & Server Prefs
