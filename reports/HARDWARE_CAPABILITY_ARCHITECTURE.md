# Hardware Capability Architecture

**Purpose:** Define a read-only, hardware-aware capability layer without claiming unverified MSM8916/theoretical features.  
**Baseline:** `HARDWARE_CAPABILITY_REPORT.md`, `decoded/`, stock Android 4.4.4/API 19.  
**Status:** Design only; no `1030` endpoint or capability code was added.

## 1. Capability contract

Every capability result must contain:

```json
{
  "state": "SUPPORTED|UNSUPPORTED|UNKNOWN|TEMPORARILY_UNAVAILABLE|PERMISSION_DENIED|ERROR",
  "source": "android_api|ril|at_interface|procfs|sysfs|system_property|driver|static_identifier|unknown",
  "value": null,
  "observedAt": 0,
  "errorCode": null
}
```

Rules:

- `UNKNOWN` is not `SUPPORTED`.
- Zero is not a substitute for unavailable telemetry.
- A theoretical chipset feature is not a firmware capability.
- A failed read must retain a meaningful state and source, not silently fabricate a value.
- Sensitive identifiers are masked in web responses by default.
- The capability layer never changes radio mode, USB mode, AP state, APN, identity, or power state.

## 2. Proposed components and exact files

| File | Existing behavior | Proposed behavior | Compatibility risk | Verification | Rollback |
|---|---|---|---|---|---|
| New `decoded/smali/com/mifiservice/device/CapabilityController.smali` | No central capability model | Read-only aggregation, state mapping, bounded cache | Medium: new Smali class and I/O | Host-side fixture tests; read-only device observations | Do not register the class; remove endpoint/UI |
| New `decoded/smali/com/mifiservice/device/CapabilityResult.smali` | No typed capability result | Small value/state/source holder | Low | Smali assembly and JSON fixture tests | Remove class |
| `decoded/smali/com/mifiservice/server/AjaxSevlet.smali` | No `1030` branch | Optional future read-only branch only after API approval | High: new public API | Dispatcher authorization and schema tests | Omit branch; retain current inventory |
| `decoded/assets/jetty2/js/capabilities.js` | No capability UI | Render only states returned by backend | Medium | Legacy JS syntax and fixture tests | Remove script/page |
| New `decoded/assets/jetty2/capabilities.html` | No page | Read-only diagnostics page with explicit unavailable states | Low/Medium | Static HTML and Android 4.4 WebView checks | Remove page and navigation entry |
| `decoded/assets/jetty2/json/en.json`, `zh.json`, `ru.json` | Existing localization | Add state/error labels | Low | Key consistency check | Remove new keys |

If the Smali implementation cost is too high, keep the first version read-only and expose verified values through existing `1001`, `1003`, `1029`, and `3002` pages without adding `1030`. A new endpoint is optional, not a baseline assumption.

## 3. Evidence-to-capability mapping

### 3.1 System

| Capability | State at baseline | Actual source | Design rule |
|---|---|---|---|
| Model | SUPPORTED | `Build.MODEL` / `ro.product.model` | Report `UZ801` when read succeeds |
| Manufacturer | SUPPORTED | `Build.MANUFACTURER` / `ro.product.manufacturer` | Report observed string only |
| Android/API | SUPPORTED | `Build.VERSION` | Report 4.4.4/API 19 |
| Firmware display | SUPPORTED | `Build.DISPLAY` / `ro.build.display.id` | Report `V2.3.12` when read succeeds |
| CPU architecture | SUPPORTED | `/proc/cpuinfo` | Report observed ARMv7 text; do not infer core count beyond parsed entries |
| Online CPU count | SUPPORTED as observed count | `/sys/devices/system/cpu/online` and `/proc/cpuinfo` | Report two observed entries; do not claim MSM8916 theoretical four-core support |
| Total RAM | SUPPORTED | `/proc/meminfo` | Parse `MemTotal`; keep unit explicit |
| zRAM | SUPPORTED | `/proc/swaps`, `/sys/block/zram0/disksize` | Read-only; if unavailable use `UNKNOWN` |
| Storage | SUPPORTED where `StatFs`/procfs succeeds | Android `StatFs`, `/proc/partitions` | Distinguish filesystem capacity from raw partition capacity |
| Kernel version | UNKNOWN in baseline | `/proc/version` not yet captured | Do not display a fabricated version |
| Thermal | UNKNOWN/TEMPORARILY_UNAVAILABLE | `/sys/class/thermal/...` only if readable and mapped | Sensor value requires unit/source metadata |

### 3.2 Cellular

| Capability | State at baseline | Actual source | Design rule |
|---|---|---|---|
| Network mode | SUPPORTED | `WanDataController.getNetMode()` / telephony | Use existing method |
| Network status | SUPPORTED | `getNetStatus()` | Use existing method |
| Operator | SUPPORTED | `getNetworkOperatorName()` and registered-operator method | Use existing method |
| Signal level | SUPPORTED | cached `getSignalStrength()` | Treat as level, not RSRP |
| dBm string | SUPPORTED when non-sentinel | controller `getDbm()` | Preserve unknown state when sentinel is returned |
| SIM state | SUPPORTED | `getSIMStatus()` | Do not expose full SIM identifiers by default |
| LTE/WCDMA/GSM bands | UNKNOWN | No verified band list source | Keep UI hidden/unknown |
| LTE band lock | UNKNOWN | No verified handler or firmware command | No control |
| RSRP/RSRQ/SINR | UNKNOWN | No verified implementation | Do not map dBm to these metrics |
| PCI/EARFCN | UNKNOWN | No verified implementation | No control or fake value |
| IMEI | SUPPORTED read, sensitive | `TelephonyManager.getDeviceId()` | Mask/omit; never write |

### 3.3 Wi-Fi

| Capability | State at baseline | Actual source | Design rule |
|---|---|---|---|
| WLAN interface | SUPPORTED | `/proc/net/dev`, `wifi.interface` | Report `wlan0` if observed |
| AP configuration | SUPPORTED | `WifiManager.getWifiApConfiguration()` | Use existing controller |
| SSID/security | SUPPORTED | `WifiConfiguration` | Never return password |
| Max stations | SUPPORTED | `WifiConfiguration.maxSta` | Report only when read succeeds |
| Connected clients | SUPPORTED | tether station list and `/proc/net/arp` fallback | Escape values before rendering |
| DHCP/DNS | SUPPORTED | existing `WifiApController` methods | Validate strings before response |
| Chipset model | UNKNOWN | No WCN3620 evidence | Do not display WCN3620 as fact |
| Standards/bands | UNKNOWN | No driver query captured | No 802.11b/g/n claim |
| STA mode | UNKNOWN | No verified flow | Do not show STA control |

### 3.4 USB and maintenance

| Capability | State at baseline | Actual source | Design rule |
|---|---|---|---|
| RNDIS | SUPPORTED/PRESENT | `persist.sys.usb.config`, `rndis0` | Read-only status only |
| Serial SMD | SUPPORTED/PRESENT | USB composition property | Read-only status only |
| DIAG | SUPPORTED/PRESENT at inspection | USB composition and `2001` path | Show as sensitive maintenance state; default-deny controls |
| ADB | SUPPORTED/PRESENT at inspection | `Settings.Global.adb_enabled` | Never enable by default |
| EDL/Sahara/Firehose | UNKNOWN | No verified path in APK | No UI or command |

## 4. Cache and polling model

- Cache system/static capabilities for the service lifetime.
- Cache cellular status for a conservative interval, for example 2–5 seconds, without issuing new AT commands for every dashboard tile.
- Avoid polling unknown advanced metrics.
- Expose a `lastUpdated`/age field so the UI can distinguish stale data from a live value.
- On read failure, retain the last value only if the response also says `TEMPORARILY_UNAVAILABLE`; never present stale data as current without age.
- Keep polling disabled while the browser is hidden or the page is not active where ES5-compatible page lifecycle hooks allow it.

## 5. Proposed response shape

If a new read-only endpoint is approved, use `1030` only as an explicit new API, not as an existing baseline ID:

```json
{
  "schemaVersion": 1,
  "flag": "1",
  "results": [{
    "device": {
      "model": {"state":"SUPPORTED","source":"system_property","value":"UZ801"},
      "firmware": {"state":"SUPPORTED","source":"system_property","value":"V2.3.12"}
    },
    "cellular": {
      "networkMode": {"state":"SUPPORTED","source":"android_api","value":"UNKNOWN"},
      "supportedBands": {"state":"UNKNOWN","source":"unknown","value":null},
      "rsrp": {"state":"UNKNOWN","source":"unknown","value":null},
      "rsrq": {"state":"UNKNOWN","source":"unknown","value":null},
      "sinr": {"state":"UNKNOWN","source":"unknown","value":null}
    },
    "wifi": {
      "interface": {"state":"SUPPORTED","source":"procfs","value":"wlan0"},
      "chipset": {"state":"UNKNOWN","source":"unknown","value":null}
    }
  }]
}
```

The exact field names must be finalized with the frontend before implementation. The design must not add fields whose source is not implemented.

## 6. Authorization and privacy

- Capability reads require a valid session, even if most values are not secret.
- Mask IMEI and SIM identifiers.
- Do not expose raw system properties that may contain credentials or tokens.
- Do not issue `AT+CFUN`, `AT^SYSCONFIG`, `AT+WRIMEI`, USB composition, reboot, or APN changes from the capability layer.

## 7. Capability UI rules

- `SUPPORTED`: show value and source.
- `UNKNOWN`: show “Not verified by this firmware,” not zero or a guessed value.
- `TEMPORARILY_UNAVAILABLE`: show retry/last-updated state.
- `PERMISSION_DENIED`: show a restricted indicator without suggesting a hardware limitation.
- `ERROR`: show a generic error code and retain diagnostics in redacted logs.
- Unsupported band/advanced-metric controls are not rendered as disabled “working” features; they are omitted or shown as unavailable diagnostics.

## 8. Rollback

The capability layer is additive. If it causes startup or memory regressions, remove the new endpoint/controller/page and restore the original `decoded/` files from `original/MifiService.apk`; no device-side hardware state should have changed because the design is read-only.
