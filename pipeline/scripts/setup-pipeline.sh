#!/bin/bash

# Organtic Pipeline Setup Script
# Creates state file for the Stop hook to manage pipeline phases.

set -euo pipefail

# Parse arguments
PROJECT_NAME=""
MODE="full-pipeline"
START_PHASE="validate"
AUTONOMOUS="false"
FORCE="false"
PROMPT_PARTS=()

while [[ $# -gt 0 ]]; do
  case $1 in
    -h|--help)
      cat << 'HELP_EOF'
Organtic Pipeline - Full business analysis pipeline

USAGE:
  /pipeline:run [PROJECT_NAME] [OPTIONS]

ARGUMENTS:
  PROJECT_NAME    Name/description of your project or business idea

OPTIONS:
  --mode <mode>           Pipeline mode: full-pipeline | single-plugin (default: full-pipeline)
  --start-phase <phase>   Start from phase: validate | build | launch (default: validate)
  --autonomous            Research-driven mode: experts WebSearch first, ask user only what research can't answer
  -h, --help              Show this help message

EXAMPLES:
  /pipeline:run BurnoutLab - AI-powered burnout recovery courses
  /pipeline:run "MyApp" --start-phase build
  /pipeline:run SaaSProduct --autonomous
  /pipeline:run BurnoutLab.md --autonomous

PIPELINE PHASES:
  validate → Value Mapper, Business Modeler, Experiment Designer
  build    → Product Strategist, Brand Strategist, Growth Designer, Spec Writer, Product Designer
  launch   → Offer Designer, Copywriter, Funnel Architect, Growth Auditor,
             Media Planner, SEO Strategist, AI Search Optimizer

STOPPING:
  /pipeline:cancel    Cancel the active pipeline
  /pipeline:status    View current pipeline state
HELP_EOF
      exit 0
      ;;
    --mode)
      MODE="$2"
      shift 2
      ;;
    --start-phase)
      START_PHASE="$2"
      shift 2
      ;;
    --autonomous|--auto)
      AUTONOMOUS="true"
      shift
      ;;
    --force)
      FORCE="true"
      shift
      ;;
    *)
      PROMPT_PARTS+=("$1")
      shift
      ;;
  esac
done

PROJECT_NAME="${PROMPT_PARTS[*]}"

if [[ -z "$PROJECT_NAME" ]]; then
  echo "Error: No project name provided" >&2
  echo "Usage: /pipeline:run [PROJECT_NAME]" >&2
  echo "Example: /pipeline:run BurnoutLab - AI burnout recovery platform" >&2
  echo "Example: /pipeline:run BurnoutLab.md  (reads idea from file)" >&2
  exit 1
fi

# If argument is a file path, extract project name and flag for reading
BRIEF_FILE=""
if [[ -f "$PROJECT_NAME" ]]; then
  BRIEF_FILE="$PROJECT_NAME"
  # Extract project name from filename (strip path and extension)
  PROJECT_NAME="$(basename "$PROJECT_NAME" .md)"
  PROJECT_NAME="$(basename "$PROJECT_NAME" .txt)"
  echo "Brief file detected: $BRIEF_FILE"
  echo "Project name: $PROJECT_NAME"
elif [[ -f "${PROJECT_NAME}.md" ]]; then
  BRIEF_FILE="${PROJECT_NAME}.md"
  echo "Brief file detected: $BRIEF_FILE"
fi

# Validate start phase
case "$START_PHASE" in
  validate|build|launch|launch-strategy|launch-coherence|launch-execution) ;;
  *)
    echo "Error: Invalid start phase '$START_PHASE'. Must be: validate, build, or launch" >&2
    exit 1
    ;;
esac

# Check for existing active pipeline
if [[ -f ".claude/pipeline.local.md" ]]; then
  EXISTING_STATUS=$(sed -n '/^---$/,/^---$/{ /^---$/d; p; }' ".claude/pipeline.local.md" | grep '^status:' | sed 's/status: *//' || true)
  if [[ "$EXISTING_STATUS" == "running" ]]; then
    echo "Warning: Pipeline already active. Use /pipeline:cancel to stop it first, or re-run with --force to override." >&2
    if [[ "${FORCE:-false}" != "true" ]]; then
      exit 1
    fi
  fi
fi

# Create state file
mkdir -p .claude

cat > .claude/pipeline.local.md <<EOF
---
active: true
mode: $MODE
current_phase: $START_PHASE
status: running
autonomous: $AUTONOMOUS
project_name: "$PROJECT_NAME"
brief_file: "${BRIEF_FILE:-}"
session_id: ${CLAUDE_CODE_SESSION_ID:-}
started_at: "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
---

Project: $PROJECT_NAME
Mode: $MODE
Start Phase: $START_PHASE
Autonomous: $AUTONOMOUS
Brief File: ${BRIEF_FILE:-none}
EOF

# Output activation message
cat <<EOF
Organtic Pipeline activated!

  Project: $PROJECT_NAME
  Mode: $MODE
  Autonomous: $AUTONOMOUS
  Starting phase: $START_PHASE
  Phases: validate > build > launch

The Stop hook will automatically advance through pipeline phases.
Each phase saves findings to memory with project-scoped tags.
Later phases retrieve and build on earlier phase findings.

  /pipeline:status   — Check current state
  /pipeline:cancel   — Stop the pipeline

Starting $START_PHASE phase now...

EOF

echo "$PROJECT_NAME"
