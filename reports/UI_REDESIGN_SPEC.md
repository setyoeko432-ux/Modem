# UI Redesign Specification — Mifi Control Center (APK v11)

## 1. Executive Summary & Brand Identity

The UZ801 Web Admin Portal has been transformed into **Mifi Control Center**, a professional, modern, responsive network administration platform adhering to **Google Material Design 3 (Material You)** principles.

- **Product Name**: Mifi Control Center
- **Design System**: Material Design 3 (M3)
- **Target Version Code**: 11 (`MifiService_v11_signed.apk`)
- **Primary Design Workspace**: `work/decoded_hardened/assets/jetty2/`
- **Target Device Resolution**: Mobile (320px–430px), Tablet (600px–1024px), Desktop (1280px–1920px), Ultrawide (2560px+).

---

## 2. Material Design 3 Token System

The design system is centralized in `assets/jetty2/css/m3-theme.css`.

### 2.1 Tonal Color Palette (Teal Seed Identity: `#0D9488`)

| Role | Light Theme (`:root`) | Dark Theme (`[data-theme="dark"]`) |
| :--- | :--- | :--- |
| **Primary** | `#006A60` | `#53DBC9` |
| **On Primary** | `#FFFFFF` | `#003732` |
| **Primary Container** | `#70F7E5` | `#005048` |
| **On Primary Container** | `#00201C` | `#70F7E5` |
| **Secondary** | `#4A635F` | `#B0CCC6` |
| **Secondary Container** | `#CCE8E2` | `#324B47` |
| **Surface** | `#F4FBF9` | `#0E1513` |
| **Surface Container Low** | `#EEF5F3` | `#171D1C` |
| **Surface Container** | `#E8EFE2` | `#1B2120` |
| **Surface Container High** | `#E2E9E7` | `#252B2A` |
| **On Surface** | `#161D1B` | `#DEE4E1` |
| **On Surface Variant** | `#3F4946` | `#BEC9C5` |
| **Outline / Outline Variant**| `#6F7976` / `#BEC9C5` | `#889390` / `#3F4946` |
| **Error / Error Container** | `#BA1A1A` / `#FFDAD6` | `#FFB4AB` / `#93000A` |
| **Success / Success Cont.** | `#116E3A` / `#A2F5B5` | `#86DC9E` / `#00522B` |
| **Warning Container** | `#FFDEA2` | `#5C4100` |

### 2.2 Typography Hierarchy

System sans-serif fonts are prioritized to eliminate internet CDN dependencies (`system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif`).

- **Headline Small**: 24px, Medium (500)
- **Title Large / Medium**: 22px / 16px, Medium (500)
- **Body Large / Medium**: 16px / 14px, Regular (400)
- **Label Large / Medium**: 14px / 12px, Medium (500)

### 2.3 Shapes & Elevation

- **Cards**: `16px` border-radius (`var(--md-sys-shape-corner-l)`), `1px` subtle outline.
- **Inputs & Selects**: `12px` border-radius (`var(--md-sys-shape-corner-m)`), height `48px`.
- **Buttons**: Full capsule pill shape (`9999px`), height `40px`–`44px`, min touch target `44px × 44px`.
- **Chips & Badges**: `8px` border-radius (`var(--md-sys-shape-corner-s)`), height `32px`.

---

## 3. Responsive Shell Architecture

### 3.1 Layout Structure (`main.html`)

- **Top App Bar (Fixed 64px)**:
  - Brand Avatar & Title
  - Real-time Operator & Network Mode Chip (`#operatorid`, `#network1`)
  - Animated M3 RSSI Signal Bars Indicator (`#signal_grid`)
  - Connection Status Chip with pulsing dot (`#status_activate`)
  - Language Selector (`#select`: EN, ZH, RU, ID)
  - M3 Theme Toggle Button (`#m3-theme-toggle-btn`)
- **Navigation Drawer / Rail (280px Desktop / Overlay Mobile)**:
  - Nav Items with active pill background (`.m3-nav-item.active`)
  - Categorized Sections: Overview, Wi-Fi & Network, LAN & Devices, Account & Security, System
  - Mobile Drawer Toggle Button (`#m3-drawer-toggle`)
- **Content Area**:
  - Full-width frameless M3 iframe (`#mainifr`) container.

---

## 4. Internationalization (i18n)

- **Supported Languages**: English (`en`), Chinese (`zh`), Russian (`ru`), Indonesian (`id`).
- **Dictionary File Location**: `assets/jetty2/json/id.json` created with complete Indonesian translations.
- **Safety Fix**: `jsonHandler.js` updated to exclude `html` and `body` tags (`$('[lang]').not('html, body')`) to prevent translation cycles from wiping the document body.
