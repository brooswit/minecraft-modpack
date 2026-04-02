#!/usr/bin/env bash
set -euo pipefail

PACKWIZ="${PACKWIZ_BIN:-packwiz}"
PACK_NAME="InfrastructureSickos"
OUTPUT_DIR="${OUTPUT_DIR:-dist}"

mkdir -p "$OUTPUT_DIR"

echo "==> Exporting .mrpack..."
"$PACKWIZ" modrinth export -o "$OUTPUT_DIR/${PACK_NAME}.mrpack" -y

echo "==> Build complete: $OUTPUT_DIR/${PACK_NAME}.mrpack"
