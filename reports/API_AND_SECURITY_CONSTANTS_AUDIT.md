# API and Security Constants Audit — Mifi Control Center

## 1. Protocol & API Constant Audit

The function IDs (`funcNo`), request parameters, and HTTP headers are immutable protocol contracts enforced by the Java backend (`com.mifiservice.servlet.AjaxSevlet` and `com.mifiservice.security.Guard`).

### 1.1 Invariant Protocol Constants Matrix

| Function ID (`funcNo`) | Purpose / Feature Area | Required Parameters | Backend Class | Security Authorization Policy |
| :---: | :--- | :--- | :--- | :--- |
| **1000** | User Authentication / Login | `username`, `password`, `remember` | `Guard.authorize` | Throttled (5 free failures, then doubling delay). Sets `HttpOnly; SameSite=Strict` cookie `mifi_sid`. |
| **1001** | Top Bar Signal & Status Polling | None | `Guard.authorize` | Authorized for authenticated sessions. |
| **1002** | WAN IP, Mask, DNS1, DNS2, SSID | None | `Guard.authorize` | Authorized for authenticated sessions. |
| **1003** | Data Traffic Bytes & Client Count | None | `Guard.authorize` | Authorized for authenticated sessions. |
| **1004** | Auto / Manual Connect Control | `conn_mode` | `Guard.authorize` | Authorized for authenticated sessions. |
| **1005** | Cellular Network RAT Select | `wwan.RAT` | `Guard.authorize` | Authorized for authenticated sessions. |
| **1006** | Wi-Fi Query | None | `Guard.authorize` | Authorized for authenticated sessions. |
| **1007** | Wi-Fi SSID / Max Stations Update | `wifi.set`, `ssid` | `Guard.authorize` | Authorized for authenticated sessions. |
| **1010** | Wi-Fi Security & Passphrase | `wifi.encryption`, `wifi.passPhrase` | `Guard.authorize` | Authorized for authenticated sessions. |
| **1011** | DHCP Server & Clients Query | None | `Guard.authorize` | Authorized for authenticated sessions. |
| **1012** | DHCP DNS Update | `router.DHCP.DNS1`, `router.DHCP.DNS2` | `Guard.authorize` | Authorized for authenticated sessions. |
| **1013** | Device Reboot | N/A | `Guard.authorize` | **DEFAULT-DENY (HTTP 403)** via Guard policy PR #1. |
| **1014** | Factory Reset | N/A | `Guard.authorize` | **DEFAULT-DENY (HTTP 403)** via Guard policy PR #1. |
| **1016** / **1017** | APN Profiles Query / Update | APN profile fields | `Guard.authorize` | Authorized for authenticated sessions. Write-only passwords. |
| **1018** | Active APN Profile Select | `wwan.connect` | `Guard.authorize` | Authorized for authenticated sessions. |
| **1020** | Admin Password Modification | `oldpwd`, `newpwd` | `Guard.authorize` | Throttled. Enforces 12-64 char password policy via `PasswordPolicy.java`. |
| **1030** | SIM Card Info Query | None | `Guard.authorize` | Authorized for authenticated sessions. |
| **1052** - **1055** | MAC Address Filter | `wifi.mac`, `type`, `id`, `mac` | `Guard.authorize` | Authorized for authenticated sessions. |
| **1060** | Session Whoami Check | None | `Guard.authorize` -> `AuthApi` | Authorized without forced password change block. |
| **1061** | Session Logout | None | `Guard.authorize` -> `AuthApi` | Destroys current session and invalidates cookie. |
| **1062** / **1063** | List / Revoke Active Sessions | `id` (for revoke) | `Guard.authorize` -> `AuthApi` | Admin session management. |
| **1064** / **1065** | Read / Save Server Preferences | `lang`, `theme`, `refreshSeconds` | `Guard.authorize` -> `AuthApi` | Persists in `/data/mifi_auth.json`. |
| **1066** | Password Recovery | `code`, `newpwd` | `Guard.authorize` -> `AuthApi` | Requires `X-Mifi-Req: 1` header. Throttled. Destroys all sessions on success. |
| **1067** | Create Recovery Code | `pwd` | `Guard.authorize` -> `AuthApi` | Displays 20-character single-use code once. |

---

## 2. Required Security Headers & Transport Rules

1. **Header Requirement**: Every AJAX request must specify header `X-Mifi-Req: 1`. Missing headers result in `HTTP 403 FORBIDDEN`.
2. **Cookie Security**: Authentication cookie `mifi_sid` is declared `HttpOnly; SameSite=Strict`.
3. **Throttling Policy**: Login (`1000`), recovery (`1066`), and password change (`1020`) endpoints are throttled per account and IP via `SessionManager.java`.
