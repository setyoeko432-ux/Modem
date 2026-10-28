# Phase 2 Security Review — Default-Deny Policy Patch

**Date:** 2026-10-28  
**Branch:** `security/phase2-default-deny-20261028`  
**Scope:** Narrow, source-level authorization-policy tightening for the UZ801 MifiService project.

## Change made

The server-side `Guard.isAllowed()` allowlist no longer permits the following authenticated AJAX function IDs:

| Function ID | Effect | Decision |
|---:|---|---|
| 1013 | Device reboot | Deny by default |
| 1024 | Duplicate device reboot | Deny by default |
| 3001 | Delete staged OTA update artifact | Deny by default while OTA upload/execution remains disabled |

The same entries were removed from both the Java security source and the Smali implementation in `work/decoded_hardened`. Host tests now assert these deny decisions while checking that representative read-only requests and password change remain available.

Other critical functions (factory restore 1014, bootloader 2000, USB composition/DIAG 2001, identity write 2002, and OTA execution 3000) were already absent from this allowlist in the inspected Smali.

## Important build boundary

This patch changes the source workspace and Smali tree on a review branch only. It **does not modify or rebuild** `MifiService_v7_signed.apk`, and it has **not** been executed on the modem. Do not install or describe that existing APK as containing this Phase 2 patch. Build/re-sign, assembly checks, unit tests, static scans, and non-destructive runtime regression tests are required before deployment.

## Remaining security gaps

1. **CSRF is not fully mitigated.** Current `Guard.preflight()` accepts absent `Origin`, and `X-Mifi-Req` is a client-settable marker, not proof of authorization. A per-session synchronizer token should be added to mutating requests and verified server-side, while preserving the Android 4.4/WebView compatibility contract.
2. **Management uses plain HTTP.** Credentials and bearer cookies have no transport confidentiality or integrity. `HttpOnly` does not encrypt traffic. A supported HTTPS/authenticated transport or a documented, tightly isolated management-network assumption is still needed.
3. **Test and runtime validation are pending.** Existing reports describe a previous build/device snapshot. They do not prove this new patch has been compiled or tested.

## Deployment rule

Keep this branch unmerged and do not install any new APK until host tests pass, the Smali is assembled into a fresh candidate, signature/package compatibility is checked, and a recovery/rollback procedure is ready.
