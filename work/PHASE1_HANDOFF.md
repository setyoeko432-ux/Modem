# Phase 1 handoff (Java side done, device side NOT done)

Status: Java sources and host tests only. Nothing here has been built into an APK or run on the modem.

## Done and verified on host (84 checks pass: javac + `java SecurityTests`)
- `AuthConfig`: all limits in one place.
- `PasswordPolicy`: new password 12-64 chars, letters/digits/`_-.!@#%^*+=?~`, rejects all-same, "admin", "password", "12345678", same-as-old.
- `Validator`: `password` and `oldpwd` exempt from the shell-metacharacter filter (control chars still rejected, max 64). Fixes lock-out of legacy passwords that contain `& ; | $ < > " \`. 1020 `newpwd` now uses PasswordPolicy.
- `SessionManager`: throttle per account (5 free failures, then 30 s doubling to a 15 min cap) plus per-address backstop (20 failures, 60 s). Success clears the account counter. Added `destroy`, `list`, `revoke`, `publicId` (random, independent of the token).
- `Guard`: cookie renamed `mifi_sid`, now `HttpOnly; SameSite=Strict`; `Retry-After` on 429; `logout()` helper. `loginSuccess(req,resp)` / `loginFailure(req)` keep their OLD signatures (username travels in a ThreadLocal), so the two smali call sites in `AjaxSevlet.smali` need no change.

## Still to do on the build side (agent)
1. Compile `security-src` + dex + baksmali into `decoded_hardened/smali/com/mifiservice/security/` (overwrite Guard/SessionManager/Validator, add AuthConfig/PasswordPolicy and inner classes).
2. Old cookie name `MIFISID` disappears: existing sessions are logged out once after install. Expected.
3. Frontend (`assets/jetty2/js/*.js`) does not yet show the new error codes (`newpwd_short`, `newpwd_weak`, `newpwd_chars`, `newpwd_same`, 429 + Retry-After). Phase 1b.
4. APIs 1060-1063 (whoami/logout/list/revoke) are not yet routed in `AjaxSevlet`. Phase 1b.

## Do not
Do not install anything before the host gate passes and the user approves. Max 3 installs for this phase.
