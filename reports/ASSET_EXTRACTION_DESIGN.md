# Version-Aware Atomic Asset Extraction Design

**Baseline:** `decoded/smali/com/mifiservice/server/JServer.smali` from the exact APK.  
**Current behavior:** active recursive extraction on every `JServer.start()`.  
**Status:** Design only; the current extractor was not changed.

## 1. Verified current behavior

The exact APK does the following:

1. Creates a Jetty `ServletContextHandler` and registers `AjaxSevlet` at `/ajax`.
2. Calls `extractAssets(assetManager, "jetty2")`.
3. Recursively lists the APK asset directory.
4. Creates `getFilesDir()/jetty2` if needed.
5. Opens each asset and writes directly to the target path.
6. Configures `ResourceHandler.resourceBase` to `getFilesDir()/jetty2`.
7. Starts Jetty on the configured port, 80 in `MifiService`.

The copy path catches individual I/O failures and continues. It has no version marker, no per-file hash manifest, no staging directory, no atomic swap, and no validation that required files exist before Jetty serves requests.

## 2. Design goals

- Keep all original `assets/jetty2` files available.
- Avoid serving a partially copied tree.
- Skip extraction when the packaged asset version is already installed.
- Detect APK asset changes reliably.
- Preserve the previous known-good tree for rollback.
- Work on Android 4.4/API 19 with the bundled Jetty and no external runtime dependency.
- Avoid holding the full asset tree in memory.
- Fail closed if no valid static tree is available.

## 3. Proposed file changes

| File | Existing behavior | Proposed behavior | Compatibility risk | Verification | Rollback |
|---|---|---|---|---|---|
| `decoded/smali/com/mifiservice/server/JServer.smali` | Calls direct recursive `extractAssets()` before configuring the resource handler | Call a provisioner that checks marker, stages files, verifies required paths, swaps atomically, then returns a valid resource base | High: startup ordering and filesystem behavior | Host-side failure injection, Smali build, stock-like directory fixture | Restore original `JServer.smali` and original APK |
| New `decoded/smali/com/mifiservice/server/AssetProvisioner.smali` | No separate provisioner | Encapsulate marker, copy, hash/manifest, validation, swap, and rollback logic | Medium: new Smali class/register correctness | Unit-like host harness or instrumented fixture; assembly | Omit class and restore original call |
| New `decoded/assets/jetty2/asset-manifest.json` or compact text manifest | No packaged asset version manifest | Record manifest version, required files, sizes, and hashes generated at build time | Low: extra asset; must not rely on modern JSON parser if unavailable | Compare manifest against APK entries and extracted files | Remove manifest and use a build-time constant only if necessary |
| `decoded/smali/com/mifiservice/service/MifiService.smali` | Starts Jetty after controller/network initialization | No change required for first implementation; only change if provisioning must occur before a different startup gate | High if changed | No-SIM and Wi-Fi-only startup fixture | Restore original service |
| `decoded/assets/jetty2/*` | Original assets | Preserve all 105 files; add only a documented manifest if accepted | Medium if paths or case change | Entry inventory and SHA-256 comparison | Restore `original/MifiService.apk` assets |

Prefer a separate provisioner class to reduce the size and risk of editing the already large `JServer.smali` method. If adding a class in Smali is too error-prone, keep the helper methods private in `JServer.smali` but preserve method register counts and exception blocks carefully.

## 4. Version identification

Use two layers:

### 4.1 Fast marker

Store a marker file beside the extracted tree, for example:

```text
/data/data/com.mifiservice.hello/files/.jetty2.version
```

The marker contains:

- schema version,
- APK version code/name,
- asset manifest version,
- manifest digest,
- extraction completion flag.

The marker is an optimization only. It is not trusted if the target tree fails validation.

### 4.2 Integrity manifest

The build process should generate a compact manifest for required and served files. Each entry should contain:

- relative path,
- byte length,
- SHA-256 or a documented digest available from the Android provider,
- manifest version.

If the API 19 runtime or build tool cannot conveniently compute the same digest, use a deterministic manifest of path/length/CRC only for change detection and still validate the required-file set. Do not use a weak digest as a security boundary; the APK itself remains the trusted source in this design.

## 5. Atomic extraction algorithm

### 5.1 Startup decision

1. Resolve the final path: `files/jetty2`.
2. Resolve a staging path: `files/.jetty2.staging.<nonce>`.
3. Resolve a backup path: `files/.jetty2.backup`.
4. If the marker matches and required-file validation passes, use the final path without copying.
5. If the marker is missing, mismatched, incomplete, or validation fails, perform a staged extraction.

### 5.2 Staged copy

1. Remove only a stale staging directory created by this application, never arbitrary user files.
2. Create the staging directory.
3. Recursively list `jetty2` through `AssetManager`.
4. For each file:
   - create parent directories under staging,
   - stream in bounded chunks, for example 8 KiB,
   - write to `file.part`,
   - flush and close the stream,
   - rename `file.part` to the final staged filename.
5. Write the staging marker only after every file is copied.
6. Verify required files and, where supported, compare lengths/digests to the packaged manifest.

### 5.3 Required-file validation

At minimum require:

```text
index.html
main.html
js/index.js
js/utils/ajax.js
js/plugins/jquery.js
css/main.css
json/en.json
```

Also verify that every referenced local resource used by the login and main shell exists. A missing optional page should not make the entire portal unavailable, but a missing shell or AJAX helper should fail the swap.

### 5.4 Swap and rollback

If the final tree exists and validates:

1. Rename final tree to backup.
2. Rename staging tree to final.
3. Write the completion marker after the final rename.
4. Validate the final tree once more.
5. Delete the backup only after the final validation succeeds.

If any rename or validation fails:

1. Delete only the incomplete final/staging tree created in this attempt.
2. Restore backup to final if the old tree was valid.
3. If no valid tree exists, do not start Jetty; log a redacted provisioning error and expose a local recovery status through the Android service rather than serving partial files.

Android/Java 4.4 does not provide the modern `java.nio.file.Files.move` API. Use `File.renameTo()` and test its behavior on the actual filesystem fixture. If directory rename atomicity is not reliable, use a versioned directory plus a small pointer/marker and make `ResourceHandler` point to the active version only after validation.

## 6. First startup, restart, and update behavior

| Scenario | Expected result |
|---|---|
| First startup with no `files/jetty2` | Extract to staging, validate, swap, then start Jetty |
| Normal restart with matching marker | Validate cheaply and skip copy |
| Marker mismatch | Rebuild staging tree and preserve old tree until swap succeeds |
| Partial previous extraction | Reject marker/tree, use backup if valid, otherwise rebuild |
| Asset copy failure with valid old tree | Keep old tree and start only if old tree passes validation |
| Asset copy failure with no valid tree | Do not serve partial resources; report provisioning failure |
| Firmware/APK update with new manifest | Detect mismatch and stage the new tree |
| Rollback to original APK | Marker mismatch triggers restoration of the original asset tree from the original APK |

## 7. Resource and performance budget

- Stream files; never concatenate the entire web tree in memory.
- Avoid hashing every file on every restart; use the marker and validate required files first.
- Hash the full tree only on first extraction or marker mismatch.
- Record extraction duration and byte count without logging file contents.
- Target a bounded one-time startup cost; measure it on the stock device before changing the threshold.
- Do not start multiple extraction threads; the service already has timers and handlers.

## 8. Test and rollback requirements

The design must pass host-side tests for:

- missing final directory,
- stale marker,
- one-file copy failure,
- disk-full simulation,
- interrupted swap,
- corrupt required file,
- valid backup restoration,
- missing backup,
- repeated restart after successful extraction.

No test should reboot or modify the connected modem. The original APK and `reports/ORIGINAL_FILE_HASHES.txt` remain the final rollback reference.
