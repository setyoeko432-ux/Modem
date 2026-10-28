"""Host-only E2E gate: real frontend assets + real Guard classes (via HostServer) in headless Chromium.
usage: python3 e2e_login.py <baseUrl>   (HostServer must already be running with password 'admin')"""
import sys
from playwright.sync_api import sync_playwright

BASE = sys.argv[1]
fails = []
def check(cond, msg):
    print(("PASS " if cond else "FAIL ") + msg)
    if not cond:
        fails.append(msg)

with sync_playwright() as p:
    b = p.chromium.launch()
    ctx = b.new_context()
    page = ctx.new_page()
    errors = []
    page.on("pageerror", lambda e: errors.append(str(e)))
    page.on("dialog", lambda d: d.accept())

    def body_text():
        return page.inner_text("body") if page.query_selector("body") else ""

    def login(pw):
        page.goto(BASE + "/index.html")
        page.fill("#username", "admin")
        page.fill("#password", pw)
        page.click("#login")
        page.wait_for_timeout(1200)

    # 1. first run: default password -> forced to change password
    login("admin")
    page.wait_for_timeout(1500)
    check("modifyPwd.html" in page.url, "default password login ends on modifyPwd.html (url=%s)" % page.url)

    # 2. policy messages
    def try_change(old, new):
        page.fill("#oldpwd", old)
        page.fill("#newpwd", new)
        page.click("#apply")
        page.wait_for_timeout(900)
        return body_text()
    t = try_change("admin", "Short1!")
    check("12" in t, "short password rejected client-side with 12-char message")
    page.reload()
    t = try_change("admin", "MyAdminPassword2026")
    check("too easy to guess" in t or "admin" in t.lower(), "weak password rejected by server message: %r" % t[-120:])
    page.reload()
    t = try_change("wrongold", "Tr0ub4dor-horse-9")
    check("Incorrect old password" in t, "wrong old password message")
    page.reload()
    t = try_change("admin", "Tr0ub4dor-horse-9")
    page.wait_for_timeout(1200)
    check("index.html" in page.url, "valid change returns to login (url=%s)" % page.url)

    # 3. old password no longer works, new works
    login("admin")
    check("main.html" not in page.url, "old password rejected")
    login("Tr0ub4dor-horse-9")
    check("main.html" in page.url, "new password logs in (url=%s)" % page.url)

    # 4. session cookie flags + redaction via raw API
    cookies = {c["name"]: c for c in ctx.cookies()}
    sid = cookies.get("mifi_sid")
    check(sid is not None and sid["httpOnly"] and sid["sameSite"] == "Strict", "mifi_sid HttpOnly + SameSite=Strict")
    r = ctx.request.post(BASE + "/ajax", data='{"funcNo":1001}', headers={"X-Mifi-Req": "1"})
    txt = r.text()
    check("SECRET-SHOULD-BE-REDACTED" not in txt and '"pwd"' not in txt, "pwd redacted in response")
    check("123456789012345" not in txt, "IMEI masked in response")
    r = ctx.request.post(BASE + "/ajax", data='{"funcNo":1060}', headers={"X-Mifi-Req": "1"})
    check('"flag":"1"' in r.text() and "sessionId" in r.text(), "whoami works with session")
    r = ctx.request.post(BASE + "/ajax", data='{"funcNo":1061}', headers={"X-Mifi-Req": "1"})
    r = ctx.request.post(BASE + "/ajax", data='{"funcNo":1060}', headers={"X-Mifi-Req": "1"})
    check(r.status == 401, "after logout whoami is 401")

    # 5. throttle visible in UI
    for i in range(5):
        login("wrong-password-%d" % i)
    login("wrong-password-x")
    check("Try again in" in body_text(), "throttle message shown after repeated failures: %r" % body_text()[-80:])

    check(not errors, "no uncaught page errors: %s" % errors)
    b.close()

print("E2E FAILED: %d" % len(fails) if fails else "E2E PASSED")
sys.exit(1 if fails else 0)
