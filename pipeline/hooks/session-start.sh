#!/bin/bash

# Caliber Pipeline Session Start Hook
# Checks for active pipeline state and injects context on session resume.

set -euo pipefail

PIPELINE_STATE=".claude/pipeline.local.md"

if [[ ! -f "$PIPELINE_STATE" ]]; then
  exit 0
fi

# Parse frontmatter
FRONTMATTER=$(sed -n '/^---$/,/^---$/{ /^---$/d; p; }' "$PIPELINE_STATE")

STATUS=$(echo "$FRONTMATTER" | grep '^status:' | sed 's/status: *//')
CURRENT_PHASE=$(echo "$FRONTMATTER" | grep '^current_phase:' | sed 's/current_phase: *//')
PROJECT_NAME=$(echo "$FRONTMATTER" | grep '^project_name:' | sed 's/project_name: *//' | sed 's/^"\(.*\)"$/\1/')
MODE=$(echo "$FRONTMATTER" | grep '^mode:' | sed 's/mode: *//')

if [[ "$STATUS" == "complete" ]] || [[ "$STATUS" == "cancelled" ]]; then
  rm -f "$PIPELINE_STATE"
  exit 0
fi

echo "Active Caliber pipeline detected:"
echo "  Project: $PROJECT_NAME"
echo "  Mode: $MODE"
echo "  Current phase: $CURRENT_PHASE"
echo "  Status: $STATUS"
echo ""
echo "The pipeline will continue from the $CURRENT_PHASE phase."
echo "Use /pipeline:cancel to stop the pipeline."
