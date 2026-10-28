# Hardware Capability Report

**Date:** 2026-10-25  
**Evidence sources:** read-only ADB properties/files, installed package dump, decoded Smali, and bundled web assets.  
**Status:** Discovery report; values not directly observed are marked `UNKNOWN`.

## Capability-state rules

This report uses the requested states:

- **SUPPORTED:** directly observed in the device or implemented by an accessible API.
- **UNSUPPORTED:** an implementation path was checked and is not present or is explicitly unavailable.
- **UNKNOWN:** no reliable evidence in this APK/device baseline.
- **TEMPORARILY_UNAVAILABLE:** capability may exist but the current runtime state prevents reading it.
- **PERMISSION_DENIED:** the access path exists but the read was denied.
- **ERROR:** an attempted read failed in a way that requires follow-up.

The report deliberately does not convert theoretical MSM8916 specifications into device features.

## Device identity and operating system

| Capability | State | Evidence |
|---|---|---|
| Device model | SUPPORTED | `adb shell getprop ro.product.model` → `UZ801` |
| Product/device identifier | SUPPORTED | `ro.product.device` → `msm8916_32_512` |
| Manufacturer | SUPPORTED | `ro.product.manufacturer` → `Qualcomm Technology` |
| Board platform | SUPPORTED | `ro.board.platform` → `msm8916` |
| Android release | SUPPORTED | `ro.build.version.release` → `4.4.4` |
| Android API level | SUPPORTED | `ro.build.version.sdk` → `19` |
| Firmware display version | SUPPORTED | `ro.build.display.id` → `V2.3.12` |
| Kernel version | UNKNOWN | Not recorded in this phase; collect `/proc/version` in a later read-only pass |
| Bootloader version | UNKNOWN | `ro.bootloader` reports `unknown` |
| Test-key build | SUPPORTED | Device fingerprint ends with `userdebug/test-keys`; APK certificate is also an Android default certificate |

## CPU and memory

| Capability | State | Evidence / limitation |
|---|---|---|
| Qualcomm MSM8916 hardware | SUPPORTED | `/proc/cpuinfo` reports `Qualcomm Technologies, Inc MSM8916` |
| CPU architecture exposed by Linux | SUPPORTED | ARMv7, CPU part `0xd03`, two entries `processor: 0` and `processor: 1` |
| Four online CPU cores | UNKNOWN | Initial notes claim four Cortex-A53 cores, but the inspected runtime exposes only two processor entries and `online=0-1` |
| CPU clock range | UNKNOWN | No reliable current-frequency read was captured |
| Total RAM | SUPPORTED | `/proc/meminfo`: `MemTotal: 397824 kB` |
| zRAM configured | SUPPORTED | `/proc/swaps`: `/dev/block/zram0`, `196604` KiB; disk size `201326592` bytes |
| Memory pressure | TEMPORARILY_UNAVAILABLE | A single snapshot showed approximately 29 MiB free; trend and service attribution were not measured |

## Storage and partitions

| Capability | State | Evidence |
|---|---|---|
| Raw eMMC block device | SUPPORTED | `/proc/partitions`: `mmcblk0` with `3784704` 1-KiB blocks |
| System filesystem | SUPPORTED | `df`: `/system` size `774.9M` |
| Data filesystem | SUPPORTED | `df`: `/data` size `774.9M` |
| Cache filesystem | SUPPORTED | `df`: `/cache` size `122.0M` |
| Persist filesystem | SUPPORTED | `df`: `/persist` size `27.5M` |
| Firmware filesystem | SUPPORTED | `df`: `/firmware` size `64.0M` |
| Raw partition p23 | SUPPORTED | `819200` blocks in `/proc/partitions` |
| Raw partition p24 | SUPPORTED | `32768` blocks |
| Raw partition p25 | SUPPORTED | `131072` blocks |
| Raw partition p26 | SUPPORTED | `16384` blocks |
| Raw partition p27 | SUPPORTED | `2570687` blocks |

The raw p27 size and the mounted `/data` filesystem size do not match one-to-one in the observed output.  This must not be interpreted as a partition-layout guarantee without reading the device's mount table and filesystem metadata.

## Cellular modem

| Capability | State | Evidence / limitation |
|---|---|---|
| Android telephony integration | SUPPORTED | `WanDataController` uses `TelephonyManager` for device ID, subscriber ID, SIM serial, data state, and signal callbacks |
| IMEI read | SUPPORTED | `WanDataController.getIMEI()` calls `TelephonyManager.getDeviceId()` |
| SIM status | SUPPORTED | `getSIMStatus()`, `getIMSI()`, and `getICCID()` are used by `funcNo=1015` |
| LTE/WCDMA/GSM band list | UNKNOWN | No verified band inventory or band-query interface was found |
| LTE band locking | UNKNOWN | No `funcNo=1030` or band-lock handler exists in this APK; no safe firmware-specific command was verified |
| Current network mode | SUPPORTED | `WanDataController.getNetMode()` is exposed through `funcNo=1001` |
| Registered operator | SUPPORTED | `getNetworkOperatorName()` and registered-operator methods are used by `funcNo=1001` |
| Signal level bars | SUPPORTED | `getSignalStrength()` returns the controller's cached signal level |
| dBm string | SUPPORTED | `funcNo=1029` exposes `WanDataController.getDbm()` when available |
| RSRP | UNKNOWN | No verified implementation or asset consumer found |
| RSRQ | UNKNOWN | No verified implementation or asset consumer found |
| SINR | UNKNOWN | No verified implementation or asset consumer found |
| PCI | UNKNOWN | No verified implementation or asset consumer found |
| EARFCN | UNKNOWN | No verified implementation or asset consumer found |
| AT interface path | SUPPORTED | `sendAtBySmd()` executes `modem_at <command>`; verified commands include `AT+CFUN=`, `AT^SYSCONFIG=`, `AT+WRIMEI=` |
| Network-mode change | SUPPORTED | `funcNo=1005` invokes both Android settings and `AT^SYSCONFIG` paths |
| Identity modification | PRESENT BUT MUST REMAIN DISABLED | `funcNo=2002` sends `AT+WRIMEI=`; this is intentionally excluded from any hardening feature plan |

The presence of an AT command path does not prove that every command is valid for every firmware variant.  Only commands observed in this APK are recorded here.

## Wi-Fi

| Capability | State | Evidence / limitation |
|---|---|---|
| Wi-Fi interface | SUPPORTED | `/proc/net/dev` lists `wlan0`; `getprop wifi.interface` returns `wlan0` |
| Wi-Fi AP configuration API | SUPPORTED | `WifiApController` wraps `WifiManager.getWifiApConfiguration()` and AP state methods |
| Access-point restart | SUPPORTED | `restartAP()` disables and re-enables the AP |
| SSID configuration | SUPPORTED | `setSsid()` and `setWifiApConfig()` are implemented |
| WPA configuration | SUPPORTED | `setWifiApConfig()` and `WifiConfiguration` fields are used |
| Maximum station count | SUPPORTED | Reads `WifiConfiguration.maxSta`, with fallback value in controller |
| Connected-client listing | SUPPORTED | Controller uses tether station data and `/proc/net/arp` fallback logic |
| DHCP range configuration | SUPPORTED | `setWlanDHCP_Low/High()` methods and AJAX branches exist |
| DNS configuration | SUPPORTED | Controller reads `net.rmnet0.dns1/2` and exposes setters |
| Wi-Fi chipset model | UNKNOWN | No verified WCN3620 identifier was found in the inspected device properties or app code |
| 802.11 standards and supported bands | UNKNOWN | No driver capability query was captured |
| STA/client mode | UNKNOWN | No verified frontend/backend flow was found in this APK |
| Channel selection | UNKNOWN | Controller has a channel-related method, but no reliable runtime capability check was captured |

## USB and diagnostic interfaces

| Capability | State | Evidence |
|---|---|---|
| USB RNDIS interface | SUPPORTED | Current `persist.sys.usb.config` includes `rndis`; `/proc/net/dev` lists `rndis0` |
| Serial SMD composition | SUPPORTED | Current USB composition includes `serial_smd` |
| DIAG composition | SUPPORTED/PRESENT | Current USB composition includes `diag`; `funcNo=2001` explicitly sets it |
| ADB enabled | SUPPORTED/PRESENT | `settings get global adb_enabled` returned `1` during inspection |
| ADB toggle API | SUPPORTED | `funcNo=1022` writes `Settings.Global.adb_enabled` |
| USB composition reboot path | SUPPORTED | `funcNo=2001` executes `setprop persist.sys.usb.config ...` and reboots |
| EDL/Sahara/Firehose | UNKNOWN | No verified EDL trigger or loader implementation was inspected in this phase |

## Power and thermal telemetry

| Capability | State | Evidence / limitation |
|---|---|---|
| USB power present | SUPPORTED | `dumpsys battery`: `USB powered: true` |
| Battery service | SUPPORTED | Battery service is present; current level was 1% in the snapshot |
| Battery temperature | SUPPORTED | `dumpsys battery`: `temperature: 212` (Android tenths of a degree, approximately 21.2°C) |
| CPU thermal-zone value | SUPPORTED | `/sys/class/thermal/thermal_zone0/temp` returned `51`; sensor meaning/unit mapping remains UNKNOWN |
| Thermal throttling policy | UNKNOWN | No measured threshold or frequency transition was captured |

## System service and network observations

- TCP port `80` is listening on `:::80` at inspection time.
- DNS listeners were present on `127.0.0.1:53` and `192.168.100.1:53`.
- A listener was also present on `0.0.0.0:7628`; its ownership was not identified in Phase 0.
- `MifiService` is installed as a privileged system application and the package dump confirms UID 1000.

## Capability-engine design constraints

1. Do not expose a band selector until an actual firmware interface and supported-band response are verified.
2. Treat advanced LTE metrics as `UNKNOWN`, not zero, because the current app only verifies a signal-level/dBm path.
3. Separate hardware-theoretical capability from firmware-exposed capability.
4. Cache read-only capability results; do not poll AT/RIL interfaces aggressively on the 512-MB device.
5. Keep ADB/DIAG features disabled by default in any future hardened build.
