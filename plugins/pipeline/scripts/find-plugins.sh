#!/bin/bash

# Discovers the locations of validate, build, launch plugins.
# Checks common locations and outputs paths as environment-friendly format.

set -euo pipefail

VALIDATE_DIR=""
BUILD_DIR=""
LAUNCH_DIR=""

# Check standard locations
# Plugins may be installed under their new names (validate/build/launch)
# or their original directory names (explore/product/exploit)
for BASE in "$HOME" "/c/Users/Omistaja" "$(pwd)/.."; do
  [[ -z "$VALIDATE_DIR" ]] && [[ -f "$BASE/validate/.claude-plugin/plugin.json" ]] && VALIDATE_DIR="$BASE/validate"
  [[ -z "$VALIDATE_DIR" ]] && [[ -f "$BASE/explore/.claude-plugin/plugin.json" ]] && VALIDATE_DIR="$BASE/explore"
  [[ -z "$BUILD_DIR" ]] && [[ -f "$BASE/build/.claude-plugin/plugin.json" ]] && BUILD_DIR="$BASE/build"
  [[ -z "$BUILD_DIR" ]] && [[ -f "$BASE/product/.claude-plugin/plugin.json" ]] && BUILD_DIR="$BASE/product"
  [[ -z "$LAUNCH_DIR" ]] && [[ -f "$BASE/launch/.claude-plugin/plugin.json" ]] && LAUNCH_DIR="$BASE/launch"
  [[ -z "$LAUNCH_DIR" ]] && [[ -f "$BASE/exploit/.claude-plugin/plugin.json" ]] && LAUNCH_DIR="$BASE/exploit"
done

echo "VALIDATE_DIR=${VALIDATE_DIR:-NOT_FOUND}"
echo "BUILD_DIR=${BUILD_DIR:-NOT_FOUND}"
echo "LAUNCH_DIR=${LAUNCH_DIR:-NOT_FOUND}"
