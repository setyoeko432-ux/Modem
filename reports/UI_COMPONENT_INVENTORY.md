# UI Component Inventory & Design System Catalog

## 1. Design Tokens & Component Library

All components use design tokens declared in `assets/jetty2/css/m3-theme.css`.

### 1.1 Core Component Matrix

| Component | CSS Class | States Supported | Responsive Behavior | Accessibility |
| :--- | :--- | :--- | :--- | :--- |
| **Top App Bar** | `.m3-top-app-bar` | Fixed sticky top | Collapses title on mobile (< 600px) | `header` landmark |
| **Navigation Drawer** | `.m3-nav-drawer` | Default, Hover, Active | Converts to slide-in overlay drawer on mobile (< 900px) | `nav` landmark, `aria-expanded` |
| **Surface Card** | `.m3-card`, `.m3-card-elevated` | Default, Hover | Single column on mobile, 2-3 col grid on desktop | Content grouping container |
| **Outlined TextField** | `.m3-input` | Default, Focus, Disabled, Invalid | Full width on mobile (`100%`) | `<label for="...">` association |
| **Password Toggle** | `.m3-input-wrapper`, `.m3-input-icon-btn` | Default, Hover, Active | Touch target 36px x 36px | `title="Toggle password visibility"` |
| **Select Dropdown** | `.m3-select` | Default, Focus, Disabled | Custom arrow, full width on mobile | Associated label |
| **Primary Button** | `.m3-btn-primary` | Default, Hover, Active, Disabled | Full width on mobile, capsule pill shape | Keyboard focus ring |
| **Outlined Button** | `.m3-btn-outlined` | Default, Hover, Active, Disabled | Capsule pill shape | Keyboard focus ring |
| **Tonal Button** | `.m3-btn-tonal` | Default, Hover, Active, Disabled | Capsule pill shape | Keyboard focus ring |
| **Danger Button** | `.m3-btn-danger` | Default, Hover, Active, Disabled | Capsule pill shape | Red warning color |
| **Status Chip** | `.m3-chip`, `.m3-chip-success`, `.m3-chip-error`, `.m3-chip-warning` | Active, Pulsing Dot | Flex wrap on mobile | Status text & color |
| **Signal Bar Badge**| `.m3-signal-bars`, `.m3-signal-bar` | RSSI 0 to RSSI 5 | Scale-adjusted heights | Visual signal meter |
| **Data Table** | `.m3-table-container`, `.m3-table` | Hover row | Horizontal touch scrolling container | `table`, `th`, `td` semantic tags |
| **Toggle Switch** | `.m3-switch-label`, `.m3-switch-track`, `.m3-switch-thumb` | Unchecked, Checked, Disabled | M3 animated slider thumb | `<input type="checkbox">` |
| **Layer Popup Dialog**| `.xubox_layer` | Visible, Hidden | Center overlay on viewport | Focus trap |

---

## 2. Interactive State Specifications

- **Hover State**: Lightens or darkens background by 10% using `color-mix(in srgb, ..., black 10%)`.
- **Focus State**: `2px` solid `--md-sys-color-primary` outline with visible ring for keyboard navigation.
- **Disabled State**: Opacity `0.38`, `cursor: not-allowed`, pointer events disabled.
- **Loading State**: Displays inline M3 pulsing status dot (`.m3-status-dot-pulse`) or loading chip.
