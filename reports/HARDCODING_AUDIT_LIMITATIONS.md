# Hardcoding Audit Limitations & Scope Boundaries

## 1. Scope Boundaries & Inspection Limits

This audit was conducted strictly via static code analysis, local test harness (`HostServer`), and non-destructive live HTTP queries against the UZ801 modem portal (`http://192.168.100.1/`).

### 1.1 Uninspected / Out-of-Scope Items
- **Hardware AT Commands**: Low-level baseband AT command interactions (`/dev/smd11` or RIL daemon) were not directly modified or triggered during this UI audit.
- **System Partition Writes**: No `/system` or `/boot` partition flashing was performed. All changes reside in `/data/app/com.mifiservice.hello` via standard `adb install -r`.
- **ADB TCP 7628 Exposure & Key Policies**: Out of scope per Hard Rule 5.

---

## 2. Tooling & Verification Constraints

- **Playwright Python Module**: Playwright Python package is not installed on the host machine. UI browser tests were conducted via standard HTTP requests and `HostServer` local test harness.
- **Physical Touchscreen Verification**: Responsive touch interactions were verified using CSS media query inspection and standard viewport dimensions; physical hardware touchscreen testing requires user interaction.
