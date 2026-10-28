"""Host-only E2E for remember-me, recovery code, preferences, sessions. Real frontend + real Guard (HostServer).
usage: python3 e2e_phase2.py <baseUrl>   (HostServer started with password 'Start-Password-12')"""
import re, sys
from playwright.sync_api import sync_playwright

BASE = sys.argv[1]
PW = "Start-Password-12"
NEW = "Fresh-Passw0rd-34"
fails = []
def check(cond, msg):
    print(("PASS " if cond else "FAIL ") + msg)
    if not cond:
        fails.append(msg)

with sync_playwright() as p:
    b = p.chromium.launch()
    errors = []

    def new_page(ctx):
        pg = ctx.new_page()
        pg.on("pageerror", lambda e: errors.append(str(e)))
        pg.on("dialog", lambda d: d.accept())
        return pg

    def text(pg):
        t = pg.inner_text("body")
        btn = pg.query_selector(".xubox_botton1")   # dismiss the Alert dialog like a user pressing OK
        if btn:
            btn.click()
            pg.wait_for_timeout(250)
        return t

    def login(pg, pw, remember=False):
        pg.goto(BASE + "/index.html")
        pg.fill("#username", "admin")
        pg.fill("#password", pw)
        if remember:
            pg.check("#remember")
        pg.click("#login")
        pg.wait_for_timeout(1300)

    def cookies(ctx):
        return {c["name"]: c for c in ctx.cookies()}

    # ---- remember-me
    ctx = b.new_context()
    pg = new_page(ctx)
    login(pg, PW, remember=True)
    check("main.html" in pg.url, "login with remember reaches main.html")
    ck = cookies(ctx)
    check("mifi_rm" in ck and ck["mifi_rm"]["httpOnly"] and ck["mifi_rm"]["sameSite"] == "Strict", "mifi_rm HttpOnly + SameSite=Strict")
    check("mifi_rm" not in pg.evaluate("document.cookie"), "remember cookie invisible to page scripts")
    old_rm = ck["mifi_rm"]["value"]
    ctx.clear_cookies(name="mifi_sid")          # browser restart: session cookie gone
    pg.goto(BASE + "/index.html")
    pg.wait_for_timeout(1500)
    check("main.html" in pg.url, "login page resumes session from remember cookie (url=%s)" % pg.url)
    ck = cookies(ctx)
    check(ck["mifi_rm"]["value"] != old_rm, "remember token rotated on use")
    ctx.close()

    ctx = b.new_context()
    pg = new_page(ctx)
    login(pg, PW, remember=False)
    ctx.clear_cookies(name="mifi_sid")
    pg.goto(BASE + "/index.html")
    pg.wait_for_timeout(1200)
    check("index.html" in pg.url and "mifi_rm" not in cookies(ctx), "no remember box -> no resume")

    # ---- account page: recovery code, sessions, prefs
    login(pg, PW)
    pg.goto(BASE + "/account.html")
    pg.wait_for_timeout(1200)
    check("No recovery code yet" in text(pg), "account page says no recovery code yet")
    check("(this browser)" in text(pg), "sessions list marks this browser")
    pg.fill("#confirmPwd", "wrong-password")
    pg.click("#newCode")
    pg.wait_for_timeout(900)
    check("not the current password" in text(pg), "wrong password cannot create code")
    pg.fill("#confirmPwd", PW)
    pg.click("#newCode")
    pg.wait_for_timeout(900)
    code = pg.inner_text("#recoveryValue").strip()
    check(re.fullmatch(r"[A-HJ-NP-Z2-9]{5}(-[A-HJ-NP-Z2-9]{5}){3}", code) is not None, "recovery code shown: %s" % code[:5] + "-...")
    check(PW not in pg.content(), "password not echoed into the page")

    pg.select_option("#pLang", "id")
    pg.select_option("#pTheme", "dark")
    pg.fill("#pRefresh", "9")
    pg.click("#savePrefs")
    pg.wait_for_timeout(900)
    check("Saved." in text(pg), "preferences saved")
    pg.fill("#pRefresh", "1")
    pg.click("#savePrefs")
    pg.wait_for_timeout(700)
    check("between 2 and 300" in text(pg), "out-of-range refresh rejected client-side")
    pg.reload()
    pg.wait_for_timeout(1200)
    check(pg.input_value("#pLang") == "id" and pg.input_value("#pRefresh") == "9" and pg.input_value("#pTheme") == "dark", "preferences persisted across reload")
    pg.wait_for_timeout(200)
    check("A recovery code is set" in text(pg), "status shows recovery configured")

    pg.click("#logout")
    pg.wait_for_timeout(1200)
    check("index.html" in pg.url, "logout returns to login")

    # ---- recovery from the login page (no session)
    pg.goto(BASE + "/index.html")
    pg.click("#forgotLink")
    pg.fill("#recoveryCode", "AAAAA-AAAAA-AAAAA-AAAAA")
    pg.fill("#recoveryNewPwd", NEW)
    pg.click("#recoverBtn")
    pg.wait_for_timeout(900)
    check("not valid" in text(pg), "wrong recovery code rejected")
    pg.reload(); pg.click("#forgotLink")
    pg.fill("#recoveryCode", code)
    pg.fill("#recoveryNewPwd", "MyAdminPassword2026")
    pg.click("#recoverBtn")
    pg.wait_for_timeout(900)
    check("too easy to guess" in text(pg), "weak new password rejected with readable message")
    pg.reload(); pg.click("#forgotLink")
    pg.fill("#recoveryCode", code.lower().replace("-", ""))
    pg.fill("#recoveryNewPwd", NEW)
    pg.click("#recoverBtn")
    pg.wait_for_timeout(900)
    check("Password reset" in text(pg), "recovery with the right code resets the password")
    pg.reload(); pg.click("#forgotLink")
    pg.fill("#recoveryCode", code)
    pg.fill("#recoveryNewPwd", "Another-Passw0rd-56")
    pg.click("#recoverBtn")
    pg.wait_for_timeout(900)
    check("not valid" in text(pg), "recovery code is single-use")
    login(pg, PW)
    check("main.html" not in pg.url, "old password no longer works")
    login(pg, NEW)
    check("main.html" in pg.url, "new password works")

    check(not errors, "no uncaught page errors: %s" % errors)
    b.close()

print("E2E FAILED: %d" % len(fails) if fails else "E2E PASSED")
sys.exit(1 if fails else 0)
