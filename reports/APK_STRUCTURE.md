# MifiService.apk Structure

This document records the structure of the exact APK inspected in Phase 0.  It is descriptive only; the APK was not rebuilt or modified.

## Archive root

The APK contains 281 ZIP entries and the following top-level entries:

```text
.classpath
.project
AndroidManifest.xml
META-INF/
assets/
classes.dex
google/
javax/
jetty-dir.css
org/
plugin.properties
res/
resources.arsc
```

## Android package files

```text
AndroidManifest.xml
classes.dex
resources.arsc
res/drawable-*/ic_launcher.png
res/layout/activity_main.xml
res/menu/main.xml
res/values/{attrs,dimens,ids,public,strings,styles}.xml
```

Decoded application Smali is under:

```text
decoded/smali/com/mifiservice/
```

The principal application classes are:

```text
com/mifiservice/server/AjaxSevlet.smali
com/mifiservice/server/JServer.smali
com/mifiservice/server/ServletUtil.smali
com/mifiservice/service/MifiService.smali
com/mifiservice/receiver/BootCompletedReceiver.smali
com/mifiservice/receiver/ShutdownReceiver.smali
com/mifiservice/device/DeviceController.smali
com/mifiservice/device/GpioController.smali
com/mifiservice/device/GpsController.smali
com/mifiservice/device/LedController.smali
com/mifiservice/device/WanApnController.smali
com/mifiservice/device/WanDataController.smali
com/mifiservice/device/WifiApController.smali
com/mifiservice/config/MifiConfiguration.smali
com/mifiservice/ota/Updater.smali
com/mifiservice/utils/ShellUtils.smali
com/mifiservice/utils/CryptUtil.smali
com/mifiservice/utils/JsonUtil.smali
com/mifiservice/utils/NetUtil.smali
com/mifiservice/utils/TextUtil.smali
```

Bundled library families include Jetty (`org/eclipse/jetty`), Apache libraries (`org/apache`), FastJSON (`com/alibaba`), Protocol Buffers (`com/google`), Servlet APIs (`javax/servlet`), and vendor/helper namespaces (`com/rt`, `neoway/api`, `sun/misc`).

## Asset directories

The archive contains both `assets/jetty/` and `assets/jetty2/`.

| Directory | Files | Active in `JServer` |
|---|---:|---|
| `assets/jetty/` | 93 | No evidence in active `JServer.start()` |
| `assets/jetty2/` | 105 | Yes |

The active `JServer` uses the `jetty2` asset directory and maps it to the application files directory.

## Complete `assets/jetty2` inventory

### HTML

```text
assets/jetty2/index.html
assets/jetty2/chat.html
assets/jetty2/D_HCP.html
assets/jetty2/deviceInformation.html
assets/jetty2/deviceOperation.html
assets/jetty2/help.html
assets/jetty2/MacFilter.html
assets/jetty2/main.html
assets/jetty2/modifyPwd.html
assets/jetty2/ms.html
assets/jetty2/netsel.html
assets/jetty2/reboot-bootloader.html
assets/jetty2/sim.html
assets/jetty2/static.html
assets/jetty2/status.html
assets/jetty2/upgrade.html
assets/jetty2/usbdebug.html
assets/jetty2/wifiSecurity.html
assets/jetty2/wifiSetting.html
assets/jetty2/wwanConfig.html
```

### CSS

```text
assets/jetty2/css/common.css
assets/jetty2/css/layer.css
assets/jetty2/css/main.css
assets/jetty2/css/oldcommon.css
assets/jetty2/css/content.lst
```

### JavaScript

```text
assets/jetty2/js/D_HCP.js
assets/jetty2/js/deviceInformation.js
assets/jetty2/js/deviceOperation.js
assets/jetty2/js/index.js
assets/jetty2/js/MacFilter.js
assets/jetty2/js/main.js
assets/jetty2/js/modifyPwd.js
assets/jetty2/js/ms.js
assets/jetty2/js/netsel.js
assets/jetty2/js/reboot-bootloader.js
assets/jetty2/js/sim.js
assets/jetty2/js/status.js
assets/jetty2/js/upgrade.js
assets/jetty2/js/usbdebug.js
assets/jetty2/js/wifiSecurity.js
assets/jetty2/js/wifiSetting.js
assets/jetty2/js/wwanConfig.js
assets/jetty2/js/plugins/jquery.js
assets/jetty2/js/plugins/jquerysession.js
assets/jetty2/js/plugins/json2.js
assets/jetty2/js/plugins/layer.js
assets/jetty2/js/utils/ajax.js
assets/jetty2/js/utils/alert.js
assets/jetty2/js/utils/childmenu.js
assets/jetty2/js/utils/cookiesHandler.js
assets/jetty2/js/utils/jsonHandler.js
assets/jetty2/js/utils/languageswitch.js
assets/jetty2/js/utils/smsHandler.js
```

### Localization JSON

```text
assets/jetty2/json/D_HCP.json
assets/jetty2/json/MacFilter.json
assets/jetty2/json/content.lst
assets/jetty2/json/deviceInformation.json
assets/jetty2/json/deviceOperation.json
assets/jetty2/json/en.json
assets/jetty2/json/help.json
assets/jetty2/json/index.json
assets/jetty2/json/main.json
assets/jetty2/json/modifyPwd.json
assets/jetty2/json/netsel.json
assets/jetty2/json/ru.json
assets/jetty2/json/sim.json
assets/jetty2/json/status.json
assets/jetty2/json/wwanConfig.json
assets/jetty2/json/wifiSecurity.json
assets/jetty2/json/wifiSetting.json
assets/jetty2/json/zh.json
```

### Images and manuals

The image directory contains the original login, navigation, dialog, status, battery, and loading assets, including:

```text
assets/jetty2/img/battery.gif
assets/jetty2/img/battery.png
assets/jetty2/img/chinese.gif
assets/jetty2/img/chinese1.gif
assets/jetty2/img/content.lst
assets/jetty2/img/dlg_t11.png
assets/jetty2/img/dlg_t12.png
assets/jetty2/img/dlg_t13.png
assets/jetty2/img/dlg_t21.png
assets/jetty2/img/dlg_t23.png
assets/jetty2/img/dlg_t31.png
assets/jetty2/img/dlg_t32.png
assets/jetty2/img/dlg_t33.png
assets/jetty2/img/droid.png
assets/jetty2/img/end_page.jpg
assets/jetty2/img/header.jpg
assets/jetty2/img/header_bg.png
assets/jetty2/img/last_page.jpg
assets/jetty2/img/loading.gif
assets/jetty2/img/login-bg.png
assets/jetty2/img/menu.jpg
assets/jetty2/img/next_page.jpg
assets/jetty2/img/nobattery.png
assets/jetty2/img/progress.gif
assets/jetty2/img/sprites.png
assets/jetty2/img/table_line.png
assets/jetty2/img/Tab_button_off.gif
assets/jetty2/img/Tab_button_on.gif
assets/jetty2/img/top_page.jpg
assets/jetty2/img/waitting.gif
assets/jetty2/img/xubox_ico0.png
assets/jetty2/img/xubox_title0.png
```

Manuals:

```text
assets/jetty2/USER_Manual_en.pdf
assets/jetty2/USER_Manual_zh.pdf
```

## Static resource behavior

`JServer.start()` calls the active recursive `extractAssets()` implementation before setting `ResourceHandler.resourceBase` to the application files directory followed by `jetty2`.  The exact APK therefore has an automatic extract/overwrite step on service start.  This behavior must be tested for atomicity, crash recovery, data-clear, reboot, and firmware-update scenarios before it is replaced with a version-aware extractor.

The workspace also preserves `decoded_working/`, a pre-existing decompiled working tree with unbuilt frontend and Smali changes.  It is not the packaged APK source; use fresh `decoded/` for exact APK analysis.

## Integrity reference

Use `reports/ORIGINAL_FILE_HASHES.txt` to compare every original ZIP entry before and after any future rebuild.  Do not overwrite `original/MifiService.apk`.
