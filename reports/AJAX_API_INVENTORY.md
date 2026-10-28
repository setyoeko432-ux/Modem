# AJAX API Inventory

**Source of truth:** `decoded/smali/com/mifiservice/server/AjaxSevlet.smali` from the exact APK hash recorded in the baseline.  The function mapping below supersedes the initial reference list where the Smali differs.

## Protocol baseline

- Servlet endpoint: `/ajax`
- Frontend transport: HTTP POST to `http://192.168.100.1:80/ajax`
- Normal request body: JSON with integer `funcNo`
- Multipart requests are also accepted for the OTA upload path.
- Response convention is generally JSON containing `flag`, optional `error_info`, and optional `results`.
- `funcNo=1000` checks the supplied username/password.  The dispatcher does not show a server-side session check before later branches.
- `AjaxSevlet` logs the complete request body before dispatching (`AjaxSevlet.smali:838-862`), which can include credentials and other sensitive values.

## Confirmed dispatcher inventory

| funcNo | Operation verified in Smali | Request fields | Main response/effect | Evidence / frontend |
|---:|---|---|---|---|
| 1000 | Login | `username`, `password` | Returns login result containing connection mode, network mode, IMEI, and firmware display value | `AjaxSevlet.smali:884-1182`; `js/index.js:100-121` |
| 1001 | Cellular network status | none | `rssi`, `netmode`, `netstatus`, `oper` | `AjaxSevlet.smali:1189-1401`; `js/main.js:44-86` |
| 1002 | WAN and Wi-Fi information | none | IP, mask, DNS values, SSID, WLAN IP, Wi-Fi password | `AjaxSevlet.smali:1407-1623`; `js/status.js:30-44` |
| 1003 | Traffic, GPS, and client count | none | Upload/download counters, longitude/latitude, client count, max stations | `AjaxSevlet.smali:1624-1827`; `js/status.js:46-86` |
| 1004 | Mobile-data enable/disable | `conn_mode` | Calls `setMobileDataEnable()` and persists configuration | `AjaxSevlet.smali:1828-1951`; `js/status.js:136-163` |
| 1005 | Preferred network mode | `net_mode` | Changes Android preferred mode and sends `AT^SYSCONFIG=...` | `AjaxSevlet.smali:1952-2089`; `js/netsel.js:44-68` |
| 1006 | Wi-Fi status/configuration query | none | Wi-Fi state, SSID, mode, max stations, IP/MAC, connected count | `AjaxSevlet.smali:2090-2360`; `js/wifiSetting.js:42-102` |
| 1007 | Wi-Fi SSID/max-station update | `ssid`, `maxSta` | Updates Wi-Fi configuration and saves it | `AjaxSevlet.smali:2361-2579`; `js/wifiSetting.js:205-257` |
| 1008 | Restart access point | none | Calls `restartAP()`; causes a Wi-Fi interruption | `AjaxSevlet.smali:2580-2638`; frontend call is commented in `js/wifiSetting.js:262-274` |
| 1009 | Wi-Fi security query | none | Returns encryption type and Wi-Fi password | `AjaxSevlet.smali:2639-2764`; `js/wifiSecurity.js:41-60` |
| 1010 | Wi-Fi security update | `encryp_type`, `pwd` | Saves Wi-Fi security configuration and restarts AP | `AjaxSevlet.smali:2765-2911`; `js/wifiSecurity.js:119-160` |
| 1011 | DHCP/Wi-Fi client information query | none | DHCP IP/DNS/range values and client array | `AjaxSevlet.smali:2912-3261`; `js/D_HCP.js:6-35`, `js/MacFilter.js:277-293` |
| 1012 | DNS update | `dns1`, `dns2` | Calls `setWlanDns()` for both DNS slots | `AjaxSevlet.smali:3262-3365`; `js/D_HCP.js:51-62` |
| 1013 | Device reboot | none | Calls `DeviceController.rebootDevice()` | `AjaxSevlet.smali:3366-3424`; `js/deviceOperation.js:44-65` |
| 1014 | Factory restore | none | Calls `DeviceController.restoreDevice()`; resets configuration/APN and reboots | `AjaxSevlet.smali:3425-3483`; `js/deviceOperation.js:67-88` |
| 1015 | SIM information query | none | Returns SIM state, IMSI, and ICCID | `AjaxSevlet.smali:3484-3622`; `js/sim.js:46-83` |
| 1016 | APN profile query | none | Returns profile number and APN array including username/password fields | `AjaxSevlet.smali:3623-3935`; `js/wwanConfig.js:45-59` |
| 1017 | APN profile update | `no`, `name`, `apn`, `user`, `pwd`, `auth` | Calls `addAPN2()` | `AjaxSevlet.smali:3936-4080`; `js/wwanConfig.js:111-149` |
| 1018 | Select current APN | `profile_num` | Calls `setCurrentAPN()` and persists selection | `AjaxSevlet.smali:4081-4168`; `js/wwanConfig.js:151-171` |
| 1019 | No dispatcher branch found | — | Not implemented in this APK | No `funcNo=1019` branch found |
| 1020 | Administrator password change | `oldpwd`, `newpwd` | Updates persistent configuration | `AjaxSevlet.smali:4169-4300`; `js/modifyPwd.js:51-103` |
| 1021 | ADB status query | none | Reads `Settings.Global.adb_enabled`, returns `mode` | `AjaxSevlet.smali:4300-4420`; `js/ms.js:7-22` |
| 1022 | ADB setting toggle | `mode` | Writes `Settings.Global.adb_enabled` | `AjaxSevlet.smali:4421-4511`; `js/ms.js:25-40` |
| 1023 | Duplicate traffic query | none | Returns upload/download counters | `AjaxSevlet.smali:4512-4639`; no active frontend caller found |
| 1024 | Duplicate device reboot | none | Calls `DeviceController.rebootDevice()` | `AjaxSevlet.smali:4640-4698`; no active frontend caller found |
| 1025 | Wi-Fi SSID/password update | `ssid`, `pwd` | Applies WPA configuration, persists it, restarts AP | `AjaxSevlet.smali:4699-4837`; no active frontend caller found |
| 1026 | DHCP range update | `range_low`, `range_high` | Calls `setWlanDHCP_Low/High()` | `AjaxSevlet.smali:4838-4936`; no active frontend caller found |
| 1027 | DHCP range query | none | Returns `range_low` and `range_high` | `AjaxSevlet.smali:4937-5056`; no active frontend caller found |
| 1028 | Connected-client table query | none | Returns client IP/MAC array | `AjaxSevlet.smali:5057-5281`; no active frontend caller found |
| 1029 | Device telemetry | none | Returns IMEI, manufacturer, firmware display, and dBm string | `AjaxSevlet.smali:5282-5490`; `js/status.js:89-116`, `js/deviceInformation.js:37-60` |
| 1030-1051 | No dispatcher branches found | — | The proposed hardware-capability endpoint is not present | No matching branches found |
| 1052 | MAC-filter query | none | Returns filter type, count, and MAC array | `AjaxSevlet.smali:5491-5687`; `js/MacFilter.js:56-89` |
| 1053 | MAC-filter type update | `type` | Updates filter mode and saves configuration | `AjaxSevlet.smali:5688-5800`; `js/MacFilter.js:112-129` |
| 1054 | MAC-filter entry update | `id`, `mac` | Updates one filter entry and saves configuration | `AjaxSevlet.smali:5801-5924`; `js/MacFilter.js:137-175` |
| 1055 | Commit MAC filter | none | Broadcasts vendor Wi-Fi filter operations | `AjaxSevlet.smali:5925-5983`; `js/MacFilter.js:177-189` |
| 2000 | Reboot to bootloader | none | Calls `PowerManager.reboot("bootloader")` | `AjaxSevlet.smali:5984-6042`; `js/reboot-bootloader.js:5-17` |
| 2001 | Change USB composition | none | Executes `setprop persist.sys.usb.config rndis,serial_smd,diag,adb`, runs `sync`, and reboots | `AjaxSevlet.smali:6043-6150`; `js/usbdebug.js:5-18` |
| 2002 | Write device IMEI | `imei` | Calls `WanDataController.setImei()` which sends `AT+WRIMEI=` | `AjaxSevlet.smali:6151-6274`; `js/deviceInformation.js:62-91` |
| 3000 | Start OTA update without MD5 verification | none after upload | Calls `Updater.doUpdateNoMd5()` and enters recovery if `/data/update.zip` exists | `AjaxSevlet.smali:6275-6328`; `js/upgrade.js:120-148` |
| 3001 | Delete uploaded update | none | Deletes `/data/update.zip` | `AjaxSevlet.smali:6330-6433`; `js/upgrade.js:150-163` |
| 3002 | Device name/firmware query | none | Returns device name and software version | `AjaxSevlet.smali:6434-6550`; `js/upgrade.js:226-242` |

## Important differences from the initial reference mapping

- Login is `1000`, not an unlisted or implicit browser-only operation.
- APN operations are `1016`, `1017`, and `1018`.
- Wi-Fi operations occupy `1006` through `1010`, with additional legacy/duplicate branches at `1025`.
- Device reboot and factory restore are `1013` and `1014`.
- ADB status/toggle are `1021` and `1022`.
- USB DIAG/ADB composition is `2001`.
- IMEI writing is `2002`.
- OTA operations are `3000`, `3001`, and `3002`.
- `2003` through `2006` were not found in the actual dispatcher.
- Proposed read-only hardware capabilities `1030` was not found and must not be presented as implemented.

## Authorization status at baseline

The dispatcher initializes controller instances and then branches on `funcNo`.  The only visible credential comparison is inside the `1000` branch.  No `HttpSession`, cookie validation, CSRF token, `Origin`, `Referer`, or authorization check was found in `AjaxSevlet.smali`.  Therefore every later branch must be treated as unauthenticated until runtime testing proves otherwise.
