# UI to API Traceability Matrix

## 1. Full Traceability Mapping

| UI Page & Component | JavaScript Event Handler | AJAX Request Payload | Function ID (`funcNo`) | Backend Handler / Java Class | Expected Response Format |
| :--- | :--- | :--- | :---:| :--- | :--- |
| `index.html` (#login) | `login()` in `js/index.js` | `{"funcNo":1000, "username":"...", "password":"...", "remember":"1"}` | **1000** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1", "results":[{"conn_mode":"0", ...}]}` |
| `index.html` (onload) | `resumeSession()` in `js/index.js` | `{"funcNo":1060}` | **1060** | `Guard.authorize` -> `AuthApi.handle` | `{"flag":"1", "results":[{"username":"admin"}]}` or `401` |
| `index.html` (#recoverBtn)| `click` in `js/index.js` | `{"funcNo":1066, "code":"...", "newpwd":"..."}` | **1066** | `Guard.authorize` -> `AuthApi.handle` | `{"flag":"1", "error_info":""}` or `400` |
| `main.html` (onload 5s) | `init()` in `js/main.js` | `{"funcNo":1001}` | **1001** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1", "results":[{"rssi":4, "oper":"TELKOMSEL", "netmode":"LTE", "netstatus":"Connected"}]}` |
| `status.html` (onload 5s)| `update2()` in `js/status.js` | `{"funcNo":1002}` | **1002** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1", "results":[{"IP":"192.168.100.1", "mask":"255.255.255.0", "dns1":"8.8.8.8", "dns2":"8.8.4.4", "ssid":"MIFI-4G", "wlan_ip":"192.168.100.1"}]}` |
| `status.html` (onload 5s)| `update()` in `js/status.js` | `{"funcNo":1003}` | **1003** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1", "results":[{"up_bytes":"1024", "down_bytes":"2048", "client_num":"1", "maxSta":"10"}]}` |
| `status.html` (#apply) | `click` in `js/status.js` | `{"funcNo":1004, "conn_mode":"0"}` | **1004** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1"}` |
| `wifiSetting.html` (onload)| `init()` in `js/wifiSetting.js` | `{"funcNo":1006}` | **1006** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1", "results":[{"ssid":"MIFI-4G", "maxSta":10}]}` |
| `wifiSetting.html` (#SaveSubmit)| `click` in `js/wifiSetting.js` | `{"funcNo":1010, "encryp_type":"4", "passPhrase":"..."}` | **1010** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1"}` |
| `netsel.html` (#apply) | `click` in `js/netsel.js` | `{"funcNo":1005, "wwan.RAT":"2"}` | **1005** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1"}` |
| `wwanConfig.html` (#save)| `click` in `js/wwanConfig.js` | `{"funcNo":1017, ...}` | **1017** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1"}` |
| `sim.html` (onload) | `init()` in `js/sim.js` | `{"funcNo":1030}` | **1030** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1", "results":[{"sim_status":"Ready"}]}` |
| `D_HCP.html` (#apply) | `click` in `js/D_HCP.js` | `{"funcNo":1012, "DNS1":"...", "DNS2":"..."}` | **1012** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1"}` |
| `MacFilter.html` (#selectMactype)| `change` in `js/MacFilter.js` | `{"funcNo":1053, "mac_type":"0"}` | **1053** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1"}` |
| `account.html` (onload) | `loadSessions()` in `js/account.js` | `{"funcNo":1062}` | **1062** | `Guard.authorize` -> `AuthApi.handle` | `{"flag":"1", "results":[{"id":"...", "address":"192.168.100.10", "current":"1"}]}` |
| `account.html` (.revoke) | `click` in `js/account.js` | `{"funcNo":1063, "id":"..."}` | **1063** | `Guard.authorize` -> `AuthApi.handle` | `{"flag":"1"}` |
| `account.html` (#newCode)| `click` in `js/account.js` | `{"funcNo":1067, "pwd":"..."}` | **1067** | `Guard.authorize` -> `AuthApi.handle` | `{"flag":"1", "results":[{"code":"ABCDE-FGHJK-LMNPQ-RSTUV"}]}` |
| `account.html` (#savePrefs)| `click` in `js/account.js` | `{"funcNo":1065, "lang":"en", "theme":"auto", "refreshSeconds":5, "speedUnit":"auto"}` | **1065** | `Guard.authorize` -> `AuthApi.handle` | `{"flag":"1"}` |
| `modifyPwd.html` (#apply)| `click` in `js/modifyPwd.js` | `{"funcNo":1020, "oldpwd":"...", "newpwd":"..."}` | **1020** | `AjaxSevlet` -> `Guard.authorize` | `{"flag":"1"}` |
