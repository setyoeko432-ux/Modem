# Security Patch Audit & Remediation Log - UZ801 MifiService.apk

| Finding ID | Patch Summary | Modified Files | Test / Verification | Status | Evidence |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **C-01** | Added Guard preflight & authorize session, header (`X-Mifi-Req`), and policy table check | `Guard.java`, `AjaxSevlet.smali` | Host Unit Test & Device `curl` POST 1001 without session | **FIXED** | Device returned `401 SESSION_REQUIRED` |
| **C-02** | Redacted `pwd` globally from JSON responses, masked IMEI/IMSI/ICCID to last 4 digits | `Redactor.java`, `AjaxSevlet.smali` | Host Unit Test & `verify_patch.py` static scan | **FIXED** | No `pwd` key in redacted outputs |
| **C-03** | Denied unauthenticated invocation of dangerous function IDs (1013, 1014, 1024, 2000, 2001, 2002, 3000) | `Guard.java`, `AjaxSevlet.smali` | Policy table scan & `verify_patch.py` | **FIXED** | Disallowed IDs answer 403 Forbidden |
| **C-04** | Permanently disabled AT+WRIMEI= unvalidated IMEI writing endpoint | `Guard.java`, `AjaxSevlet.smali`, `deviceInformation.js` | `verify_patch.py` check for `funcNo: 2002` | **FIXED** | `funcNo: 2002` blocked in Guard & frontend |
| **C-05** | Denied multipart upload requests at Stage 1 before processing | `Guard.java`, `AjaxSevlet.smali` | Host Unit Test (`denyMultipart`) | **FIXED** | Multipart uploads answer HTTP 403 |
| **H-01** | Removed full request body logging and raw AT command argument logging | `AjaxSevlet.smali`, `WanApnController.smali`, `WanDataController.smali` | Device `logcat -d` check for sentinel password | **FIXED** | `logcat -d` contains no request bodies or passwords |
| **H-02** | Enforced input validation for IP addresses, MAC addresses, SSIDs, and text fields | `Validator.java`, `AjaxSevlet.smali` | Host Unit Test with injection payloads | **FIXED** | Malformed payloads return `400 INVALID_INPUT` |
| **H-03** | ADB listener TCP 7628 owned by adbd; AJAX API no longer toggles ADB/USB properties | `Guard.java`, `AjaxSevlet.smali` | Device check | **ACCEPTED RISK** | Device ADB state preserved |
| **H-04** | Enforced strict alphanumeric & character restriction for DNS/APN string fields | `Validator.java` | Host Unit Test | **FIXED** | Command injection payloads rejected |
| **H-05** | Device test-keys build & debuggable kernel properties | N/A | Baseline audit | **ACCEPTED RISK** | Stock firmware architecture limitation |
| **H-06** | Bridge `br0` default IP configuration | N/A | Baseline audit | **ACCEPTED RISK** | Stock network bridge architecture |
| **H-07** | Wi-Fi Access Point hostapd default configuration | N/A | Baseline audit | **ACCEPTED RISK** | Stock AP configuration |
| **M-01** | Plain HTTP web portal without TLS/HTTPS | N/A | Baseline audit | **ACCEPTED RISK** | Hardware resource constraints (512MB RAM) |
| **M-02** | Shipped default credentials enforced first-run change policy | `Guard.java`, `SessionManager.java` | Host Unit Test & Login Flow | **FIXED** | First-run session restricted to password change |
| **M-03** | Signed with AOSP platform key | `MifiService_hardened_signed.apk` | `apksigner verify` | **FIXED** | Signed with valid platform key matching target cert |

### Unverified Hypotheses
- *Recovery acceptance of test-key package:* Untested to prevent risk of recovery boot.
- *Fresh-host ADB approval:* Untested on secondary dev hosts.
- *Reboot persistence:* Pending user browser test confirmation.
