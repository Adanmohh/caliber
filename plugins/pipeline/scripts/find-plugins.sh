#!/bin/bash

# Discovers the locations of validate, build, launch plugins.
# Checks common locations and outputs paths as environment-friendly format.

set -euo pipefail

VALIDATE_DIR=""
BUILD_DIR=""
LAUNCH_DIR=""

# Check standard locations
for BASE in "$HOME" "/c/Users/Omistaja" "$(pwd)/.."; do
  [[ -z "$VALIDATE_DIR" ]] && [[ -f "$BASE/validate/.claude-plugin/plugin.json" ]] && VALIDATE_DIR="$BASE/validate"
  [[ -z "$BUILD_DIR" ]] && [[ -f "$BASE/build/.claude-plugin/plugin.json" ]] && BUILD_DIR="$BASE/build"
  [[ -z "$LAUNCH_DIR" ]] && [[ -f "$BASE/launch/.claude-plugin/plugin.json" ]] && LAUNCH_DIR="$BASE/launch"
done

echo "VALIDATE_DIR=${VALIDATE_DIR:-NOT_FOUND}"
echo "BUILD_DIR=${BUILD_DIR:-NOT_FOUND}"
echo "LAUNCH_DIR=${LAUNCH_DIR:-NOT_FOUND}"
