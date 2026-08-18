# Android APK/AAB Production Starter

Production-ready multi-module Android monorepo that correctly produces **signed release APKs and AABs**.

## Features
- Gradle Kotlin DSL + Version Catalog
- Multi-module (`:app` + `:libs`)
- Secure signing (no secrets in VCS)
- R8 full mode + resource shrinking
- ProGuard / mapping upload ready
- GitHub Actions CI + Release workflows
- Fastlane skeleton for Play Store
- Compose enabled by default
- Modern AGP 8.7+ / Kotlin 2.0+

## Quick Start

1. Clone this repo
2. Copy `gradle.properties.example` → `gradle.properties` and fill your local values
3. Generate a keystore:
   ```bash
   ./scripts/generate-keystore.sh
   ```
4. Build release artifacts:
   ```bash
   ./gradlew :app:assembleRelease :app:bundleRelease
   ```
5. Find them in:
   - `app/build/outputs/apk/release/app-release.apk`
   - `app/build/outputs/bundle/release/app-release.aab`

## Signing (Important)
Never commit keystores or passwords.

Required properties (in `gradle.properties` or CI secrets):
```
KEYSTORE_PATH=/absolute/path/to/your.keystore
KEYSTORE_PASSWORD=...
KEY_ALIAS=...
KEY_PASSWORD=...
```

In CI, base64-encode the keystore and put it in `KEYSTORE_BASE64` secret.

## Verify the APK is correctly signed
```bash
apksigner verify --print-certs app/build/outputs/apk/release/app-release.apk
```

## License
MIT
