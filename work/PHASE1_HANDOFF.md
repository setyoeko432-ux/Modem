# Phase 1 + 1b handoff (host-verified; device side NOT done)

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

## Phase 1b (added)
- `AuthApi` (1060 whoami, 1061 logout, 1062 list, 1063 revoke) is handled entirely inside `Guard.authorize`, which returns false after writing the response. `AjaxSevlet.smali` needs NO routing change; its existing false-branch goes to `:goto_1`. 1060/1061 are exempt from the forced-password-change block so logout always works.
- Frontend: `modifyPwd.js/html` now say 12-64 and show a message per server code (`INVALID_INPUT:newpwd_short|long|chars|weak|same`); `ajax.js` reads `Retry-After` on 429 ("Try again in N s"). Languages covered: en, zh only (ru/id are Phase 3).
- Host gate, run from `work/`:
  - `javac -d OUT $(find security-src security-stubs security-test-stubs security-tests -name '*.java')`
  - `java -cp OUT SecurityTests` (84) and `java -cp OUT GuardFlowTests` (20)
  - `java -cp OUT HostServer decoded_hardened/assets/jetty2 PORT admin &` then `python3 -I security-tests/e2e_login.py http://127.0.0.1:PORT` (14 checks, headless Chromium)
- LIMITS of the gate: HostServer is a test double of AjaxSevlet.doPost with a fake business layer and a hand-written org.json stub. It proves Guard + frontend behave together; it does NOT prove the smali build, Jetty behaviour, Android API 19 behaviour or anything on the device. Keep an on-device check (login, forced change, logout, wrong-password throttle) before declaring done.
- Not yet done: reboot persistence, ADB TCP 7628 exposure, 1064+ (prefs/remember-me/recovery), ru/id strings.
