#!/bin/bash

# Discovers the locations of validate, build, launch plugins.
# Checks common locations and outputs paths as environment-friendly format.

set -euo pipefail

VALIDATE_DIR=""
BUILD_DIR=""
LAUNCH_DIR=""

# Check standard locations
# Priority 1: organtic monorepo (canonical location)
# Priority 2: standalone plugin directories (legacy)
# Priority 3: original directory names (explore/product/exploit)

# First check CLAUDE_PLUGIN_ROOT parent (organtic/plugins/) — this is the canonical location
PLUGIN_PARENT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." 2>/dev/null && pwd)"
CALIBER_PLUGINS="$(cd "$PLUGIN_PARENT/.." 2>/dev/null && pwd)"

if [[ -d "$CALIBER_PLUGINS" ]]; then
  [[ -z "$VALIDATE_DIR" ]] && [[ -f "$CALIBER_PLUGINS/validate/.claude-plugin/plugin.json" ]] && VALIDATE_DIR="$CALIBER_PLUGINS/validate"
  [[ -z "$BUILD_DIR" ]] && [[ -f "$CALIBER_PLUGINS/build/.claude-plugin/plugin.json" ]] && BUILD_DIR="$CALIBER_PLUGINS/build"
  [[ -z "$LAUNCH_DIR" ]] && [[ -f "$CALIBER_PLUGINS/launch/.claude-plugin/plugin.json" ]] && LAUNCH_DIR="$CALIBER_PLUGINS/launch"
fi

# Fallback: standalone directories and legacy names
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
