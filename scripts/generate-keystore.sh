#!/usr/bin/env bash
set -euo pipefail

KEYSTORE_NAME="release.keystore"
ALIAS="release"
VALIDITY=10000

echo "Generating a new release keystore..."
keytool -genkeypair \
  -v \
  -keystore "$KEYSTORE_NAME" \
  -alias "$ALIAS" \
  -keyalg RSA \
  -keysize 2048 \
  -validity $VALIDITY

echo ""
echo "=============================================="
echo "Keystore created: $KEYSTORE_NAME"
echo ""
echo "Add these lines to your local gradle.properties:"
echo ""
echo "KEYSTORE_PATH=$(pwd)/$KEYSTORE_NAME"
echo "KEYSTORE_PASSWORD=<the password you just entered>"
echo "KEY_ALIAS=$ALIAS"
echo "KEY_PASSWORD=<the key password you just entered>"
echo ""
echo "NEVER commit the keystore or the real gradle.properties!"
echo "=============================================="
