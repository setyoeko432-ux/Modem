# Read-only Backup Manifest

**Project goal:** Turn a generic UZ801 modem into a more intuitive, modern-feeling product, APK-level only, stock firmware V2.3.12. Security hardening is a prerequisite, not the goal. Every design decision must serve “intuitive and modern” while staying safe.

## Warning

**VERIFIED:** The backup directory contains device secrets, application data, partition images, and signing key material used only for the host-side candidate. Do not share, upload, or commit it.

## Location and protection

- **VERIFIED location:** `C:\Users\USER\mifi_backups\2026-10-26-l2\`
- **VERIFIED:** Outside the workspace and outside `%TEMP%`.
- **VERIFIED:** Files were made read-only after collection.
- **VERIFIED:** The complete file-level manifest is at `C:\Users\USER\mifi_backups\2026-10-26-l2\BACKUP_MANIFEST.txt`.
- **VERIFIED:** This workspace document records metadata only; it contains no backup contents or secret values.

## Collection summary

| Group | Result |
|---|---:|
| Requested block-device images | 7 partitions, pulled twice |
| Double-pull hash mismatches | 0 |
| On-device block hashes | Available for all 7 partitions; matched host pull hashes |
| Application/config files | APK, `mificonfig.json`, package metadata, app data |
| Baseline snapshots | Package, process list, listeners, interfaces, properties, battery, mounts, kernel, logcat tail |
| Stock AJAX proof | Shape-only records for unauthenticated `1001` and `1003` |
| AOSP key metadata | Public certificate/private-key files outside workspace; hashes only here |

## Core metadata

| File | Size | SHA-256 |
|---|---:|---|
| `mificonfig.json` | 591 | `0a0880df6c7ae1b0bd869f43015f3f4e97ab199679529ef250c621500abf2762` |
| `MifiService.apk` | 23,994,908 | `6b4c5f91c8ad37b99acfc73edaf5ec66046e6a3b0a9efee61a3f2cb2bff602b5` |
| `packages.xml` | 79,254 | `12f3bc70764d28d96c13fb8512b962c3908d84a7ebffa3cfeea6e31ca2e99cc1` |
| `packages.list` | 6,044 | `e1f5d85e1a4b03fb3a7e30b3b94bb3cf8bd52757146ef60a90422e92e51a4d89` |

## Double-pulled partitions

| Partition | Size | Pull 1 SHA-256 | Pull 2 SHA-256 |
|---|---:|---|---|
| `boot` | 16,777,216 | `7efdc5757b798576bf8b333f465034f8b595f6540c5ef33e216b5a73ead4cb1a` | `7efdc5757b798576bf8b333f465034f8b595f6540c5ef33e216b5a73ead4cb1a` |
| `fsg` | 1,572,864 | `06c4e36e64f9f47be0eed3fccfadc375dc870c38b96521bbd945955723ca4853` | `06c4e36e64f9f47be0eed3fccfadc375dc870c38b96521bbd945955723ca4853` |
| `modem` | 67,108,864 | `c974faf7f66c8b8f2c6e462958d348d745a5bd2cf4ed45ce2c1ed97039037a39` | `c974faf7f66c8b8f2c6e462958d348d745a5bd2cf4ed45ce2c1ed97039037a39` |
| `modemst1` | 1,572,864 | `4172fefd5150cd2ec1be15eb36e8a25f7b31cccffcfa571f0d3bc87ef5b89d16` | `4172fefd5150cd2ec1be15eb36e8a25f7b31cccffcfa571f0d3bc87ef5b89d16` |
| `modemst2` | 1,572,864 | `11b721d34b994762a179a69582a56a48261fb5f03505358cf7bb8c01aa12decb` | `11b721d34b994762a179a69582a56a48261fb5f03505358cf7bb8c01aa12decb` |
| `persist` | 33,554,432 | `9bc297e8f13ef8e6cc7268a183afbc79f46960fa30b80cb80eb573a8986ebe16` | `9bc297e8f13ef8e6cc7268a183afbc79f46960fa30b80cb80eb573a8986ebe16` |
| `recovery` | 16,777,216 | `9e5bceffedad154d87fe337af71a993b08d3b2e8206340ac7bb5da812c043cbe` | `9e5bceffedad154d87fe337af71a993b08d3b2e8206340ac7bb5da812c043cbe` |

## AOSP key metadata

**VERIFIED source:** AOSP `android-4.4.4_r2`, `build/target/product/security/`. Key contents are not reproduced here.

| File | Size | SHA-256 |
|---|---:|---|
| `aosp-platform/platform.x509.pem` | 1,675 | `9837de028f460c35cc8d3fa45f14eecce30f6fbfe4b93d399aef1acb80c20d14` |
| `aosp-platform/platform.pk8` | 1,216 | `1ad8ef556870edb70f69a9d3c112544c07de5162ba440d84d33f8bb0c5962875` |
| `aosp-platform/testkey.x509.pem` | 1,675 | `a4384ba815b9499a5ce349b4e33c1755278873fe2eac150a068823f526e6dbde` |
| `aosp-platform/testkey.pk8` | 1,217 | `495675d32e89a149d5abe191f4e9c0e218b9068714e9b53a7c91e164a0741a23` |

## Baseline and response-shape files

The following are saved under the private backup root and are listed with hashes in the complete private manifest:

- `baseline/dumpsys_package.txt`
- `baseline/ps.txt`
- `baseline/proc_net_tcp.txt`
- `baseline/proc_net_tcp6.txt`
- `baseline/proc_net_udp.txt`
- `baseline/proc_net_udp6.txt`
- `baseline/socket_inode_owners.txt`
- `baseline/ip_addr.txt`
- `baseline/getprop.txt`
- `baseline/dumpsys_battery.txt`
- `baseline/power_supply_listing.txt`
- `baseline/power_supply_state.txt`
- `baseline/mount.txt`
- `baseline/proc_version.txt`
- `baseline/logcat_tail_100.txt`
- `stock_ajax_response_shapes.txt`
