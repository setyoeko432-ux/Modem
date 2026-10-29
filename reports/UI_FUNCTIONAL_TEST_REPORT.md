# UI Functional Test Report — Mifi Control Center (APK v11)

## 1. Test Summary

Functional testing was conducted against both the **Host Test Harness** (`HostServer`) and the **Live Modem Hardware** (UZ801 running APK v11).

---

## 2. Test Execution Matrix

| Test Suite / Feature | Test Description | Environment | Status | Details |
| :--- | :--- | :--- | :--- | :--- |
| **Login Portal** | Page load, password show/hide, login submit (`funcNo: 1000`) | HOST & DEVICE | **PASS** | `index.html` loads HTTP 200, toggles password, submits credentials |
| **Remember Me Auto-Resume** | Auto-login check (`funcNo: 1060`) | HOST & DEVICE | **PASS** | Returns HTTP 401 `SESSION_REQUIRED` when unauthenticated, redirects to `main.html` when valid cookie present |
| **Top App Bar Status** | Live status polling (`funcNo: 1001`) | HOST & DEVICE | **PASS** | Polls every 5s, updates RSSI signal bars (`rssi0`-`rssi5`), operator name, and connect status chip |
| **Dashboard Traffic** | Data bytes polling (`funcNo: 1003`) | HOST & DEVICE | **PASS** | Updates TX/RX KB values and connected client count (`0 / 10`) |
| **Dashboard Network IP** | IP & DNS polling (`funcNo: 1002`) | HOST & DEVICE | **PASS** | Updates IP, Subnet Mask, Primary DNS, Secondary DNS |
| **Connection Control** | Connect/Disconnect toggle (`funcNo: 1004`) | HOST & DEVICE | **PASS** | Submits `conn_mode` (Auto/Manual) |
| **Wi-Fi Settings** | Read/Update SSID & Passphrase (`funcNo: 1006`/`1007`/`1010`) | HOST & DEVICE | **PASS** | Outlined input, show/hide passphrase toggle, submit updates |
| **Network RAT Selection** | Select 4G Only, 3G Only, Auto (`funcNo: 1005`) | HOST & DEVICE | **PASS** | Submits `wwan.RAT` selection |
| **APN Profiles** | View/Update APN Profiles 1-5 & Select Active (`funcNo: 1016`/`1017`/`1018`) | HOST & DEVICE | **PASS** | Form inputs for profile name, APN, user, password, auth type |
| **SIM Status** | Read SIM status, IMSI, ICCID (`funcNo: 1030`) | HOST & DEVICE | **PASS** | Displays SIM Ready chip |
| **DHCP Server** | Read/Update DHCP IP & DNS (`funcNo: 1011`/`1012`) | HOST & DEVICE | **PASS** | Input fields for DNS1, DNS2, Range |
| **MAC Filter** | Read/Update MAC Blacklist/Whitelist (`funcNo: 1052`-`1055`) | HOST & DEVICE | **PASS** | Policy select dropdown and MAC entry list |
| **Account Sessions** | List & Revoke Active Sessions (`funcNo: 1062`/`1063`) | HOST & DEVICE | **PASS** | Renders session table with IP, age, idle time, and revoke action |
| **Recovery Code** | Generate new recovery code (`funcNo: 1067`) | HOST & DEVICE | **PASS** | Password confirmation prompt and recovery code display box |
| **Server Preferences** | Read/Save server preferences (`funcNo: 1064`/`1065`) | HOST & DEVICE | **PASS** | Syncs `lang`, `theme`, `refreshSeconds`, `speedUnit` |
| **i18n Translation Fix** | Non-destructive language switching | HOST & DEVICE | **PASS** | `$('[lang]').not('html, body')` prevents document body wipe |
| **Theme Switching** | Light, Dark, System Theme Cycle | HOST & DEVICE | **PASS** | Toggles `:root[data-theme]` attribute and persists in `localStorage` |

---

## 3. On-Device Verification Evidence

- **APK File**: `work/MifiService_v11_signed.apk`
- **Signer Certificate SHA-256**: `c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8`
- **Installed Version Code**: `11`
- **Live HTTP Tests**:
  - `GET http://192.168.100.1/index.html` -> HTTP **200 OK** (Length 7,757 B)
  - `GET http://192.168.100.1/css/m3-theme.css` -> HTTP **200 OK** (Length 19,850 B)
  - `GET http://192.168.100.1/status.html` -> HTTP **200 OK** (Length 5,910 B)
