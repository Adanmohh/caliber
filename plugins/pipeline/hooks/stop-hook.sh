#!/bin/bash

# Caliber Pipeline Stop Hook
# Intercepts session exit when a pipeline is active.
# Checks pipeline state and re-injects the next phase prompt.
# Inspired by Ralph Wiggum loop pattern.

set -euo pipefail

# Verify jq is available (required for JSON output)
if ! command -v jq &>/dev/null; then
  # Can't produce proper JSON - allow exit gracefully
  exit 0
fi

# Read hook input from stdin
HOOK_INPUT=$(cat)

# State file location (project-scoped)
PIPELINE_STATE=".claude/pipeline.local.md"

if [[ ! -f "$PIPELINE_STATE" ]]; then
  # No active pipeline - allow exit
  exit 0
fi

# Parse YAML frontmatter
FRONTMATTER=$(sed -n '/^---$/,/^---$/{ /^---$/d; p; }' "$PIPELINE_STATE")

# Session isolation: only block the session that started the pipeline
STATE_SESSION=$(echo "$FRONTMATTER" | grep '^session_id:' | sed 's/session_id: *//' || true)
HOOK_SESSION=$(echo "$HOOK_INPUT" | jq -r '.session_id // ""')
if [[ -n "$STATE_SESSION" ]] && [[ "$STATE_SESSION" != "$HOOK_SESSION" ]]; then
  exit 0
fi

# Read pipeline state
MODE=$(echo "$FRONTMATTER" | grep '^mode:' | sed 's/mode: *//')
CURRENT_PHASE=$(echo "$FRONTMATTER" | grep '^current_phase:' | sed 's/current_phase: *//')
STATUS=$(echo "$FRONTMATTER" | grep '^status:' | sed 's/status: *//')
PROJECT_NAME=$(echo "$FRONTMATTER" | grep '^project_name:' | sed 's/project_name: *//' | sed 's/^"\(.*\)"$/\1/')
STARTED_AT=$(echo "$FRONTMATTER" | grep '^started_at:' | sed 's/started_at: *//' | sed 's/^"\(.*\)"$/\1/' || true)

# If status is "complete" or "cancelled", allow exit
if [[ "$STATUS" == "complete" ]] || [[ "$STATUS" == "cancelled" ]]; then
  rm -f "$PIPELINE_STATE"
  exit 0
fi

# Discover plugin locations
SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PLUGIN_INFO=$("$SCRIPT_DIR/scripts/find-plugins.sh" 2>/dev/null || echo "")
VALIDATE_DIR=$(echo "$PLUGIN_INFO" | grep '^VALIDATE_DIR=' | sed 's/VALIDATE_DIR=//')
BUILD_DIR=$(echo "$PLUGIN_INFO" | grep '^BUILD_DIR=' | sed 's/BUILD_DIR=//')
LAUNCH_DIR=$(echo "$PLUGIN_INFO" | grep '^LAUNCH_DIR=' | sed 's/LAUNCH_DIR=//')

# Check if phase produced expected output
SUMMARY_FILE=".claude/phase-summary.md"
EXPECTED_TAG=""
case "$CURRENT_PHASE" in
  "validate") EXPECTED_TAG="VALIDATE:pipeline-complete" ;;
  "build") EXPECTED_TAG="BUILD:pipeline-complete" ;;
  "launch-strategy") EXPECTED_TAG="LAUNCH:strategy-complete" ;;
  "launch-coherence") EXPECTED_TAG="LAUNCH:coherence-complete" ;;
  "launch-execution") EXPECTED_TAG="LAUNCH:pipeline-complete" ;;
esac

if [[ -n "$EXPECTED_TAG" ]] && ! grep -q "$EXPECTED_TAG" "$SUMMARY_FILE" 2>/dev/null; then
  # Phase didn't produce expected summary - ask agent to complete it
  jq -n --arg reason "Phase '$CURRENT_PHASE' did not produce expected summary tag [$EXPECTED_TAG:$PROJECT_NAME]. Please output your phase summary with the required tag before finishing." \
    '{"decision": "block", "reason": $reason}'
  exit 0
fi

# Determine next phase based on mode and current phase
NEXT_PHASE=""
NEXT_PROMPT=""

case "$MODE" in
  "full-pipeline")
    case "$CURRENT_PHASE" in
      "validate")
        NEXT_PHASE="build"
        NEXT_PROMPT="$(cat <<'PROMPT_EOF'
## Pipeline Phase 2: Build

You are continuing the Caliber pipeline. The validate phase just completed.

**CRITICAL: Before doing ANYTHING else, retrieve validate phase findings from claude-mem:**
1. Call `mcp__plugin_claude-mem_mcp-search__search` with NO query — use filters only: `dateStart` set to PIPELINE_START_DATE, `limit` 20
2. Scan the returned index for observations mentioning "validate", "value proposition", "business model", or "PROJECT_NAME"
3. Call `mcp__plugin_claude-mem_mcp-search__get_observations` with the relevant IDs to get full details
4. Build ALL product work on these validated findings

**Your task:** Run the full build team analysis.

Read ALL skill files and references for each build expert from the build plugin directory:
- BUILD_PLUGIN_DIR/skills/product-strategist/SKILL.md + all files in references/
- BUILD_PLUGIN_DIR/skills/growth-designer/SKILL.md + all files in references/
- BUILD_PLUGIN_DIR/skills/spec-writer/SKILL.md + all files in references/
- BUILD_PLUGIN_DIR/skills/product-designer/SKILL.md + all files in references/

Execute in this order:
1. **Product Strategist** — Define product strategy using Reforge + Cagan frameworks, informed by validate findings
2. **Growth Designer** — Design growth loops using Teresa Torres + Hooked + PLG frameworks
3. **Spec Writer** — Write Shape Up specs for the highest-priority features
4. **Product Designer** — Design the core user experience using Don Norman + JTBD UX

After ALL 4 experts complete, output a comprehensive summary clearly labeled:
```
[BUILD:pipeline-complete:PROJECT_NAME]
Phase: build — COMPLETE
Product Strategy: {summary}
Growth Design: {summary}
Specs: {summary of shaped features}
UX Design: {summary}
Ready for: launch phase
```
(claude-mem auto-captures this via PostToolUse hooks — no explicit save needed)

Write your phase summary to `.claude/phase-summary.md` in addition to outputting it.

Ask the user questions as needed using AskUserQuestion. Build on the validate phase findings — do not start from scratch.
PROMPT_EOF
)"
        ;;
      "build")
        NEXT_PHASE="launch-strategy"
        NEXT_PROMPT="$(cat <<'PROMPT_EOF'
## Pipeline Phase 3a: Launch Strategy (Offer + Copy + Funnel)

You are continuing the Caliber pipeline. Validate and build phases are complete.

**CRITICAL: Before doing ANYTHING else, retrieve prior phase findings from claude-mem:**
1. Call `mcp__plugin_claude-mem_mcp-search__search` with NO query — use filters only: `dateStart` set to PIPELINE_START_DATE, `limit` 30
2. Scan the index for observations about "validate", "build", "value proposition", "business model", "strategy", or "PROJECT_NAME"
3. Call `mcp__plugin_claude-mem_mcp-search__get_observations` with the relevant IDs
4. Build ALL go-to-market work on these validated findings

**Your task:** Run the launch STRATEGY sub-phase (3 experts).

Read ALL skill files and references for these experts from the launch plugin directory:
- LAUNCH_PLUGIN_DIR/skills/offer-designer/SKILL.md + all files in references/
- LAUNCH_PLUGIN_DIR/skills/copywriter/SKILL.md + all files in references/
- LAUNCH_PLUGIN_DIR/skills/funnel-architect/SKILL.md + all files in references/

Run these 3 experts in parallel using the Agent tool:
1. **Offer Designer** — Apply Value Equation + Grand Slam Offer frameworks
2. **Copywriter** — Develop messaging, copy angles, content strategy
3. **Funnel Architect** — Design the conversion funnel architecture

After all 3 complete, output a strategy summary clearly labeled:
```
[LAUNCH:strategy-complete:PROJECT_NAME]
Offer: {summary}
Copy/Content: {summary}
Funnel: {summary}
```
(claude-mem auto-captures this — no explicit save needed)

Write your phase summary to `.claude/phase-summary.md` in addition to outputting it.

Ask the user questions as needed using AskUserQuestion.
PROMPT_EOF
)"
        ;;
      "launch-strategy")
        NEXT_PHASE="launch-coherence"
        NEXT_PROMPT="$(cat <<'PROMPT_EOF'
## Pipeline Phase 3b: Launch Coherence Audit (Growth Auditor)

You are continuing the Caliber pipeline. The launch strategy sub-phase just completed.

**CRITICAL: Before doing ANYTHING else, retrieve all prior phase findings from claude-mem:**
1. Call `mcp__plugin_claude-mem_mcp-search__search` with NO query — use filters only: `dateStart` set to PIPELINE_START_DATE, `limit` 50
2. Scan the index for observations about "validate", "build", "launch", "strategy", "offer", "copy", "funnel", or "PROJECT_NAME"
3. Call `mcp__plugin_claude-mem_mcp-search__get_observations` with the relevant IDs

**Your task:** Run the Growth Auditor coherence audit.

Read ALL skill files and references:
- LAUNCH_PLUGIN_DIR/skills/growth-auditor/SKILL.md + all files in references/

Audit the strategy outputs for:
- Strategic coherence across offer, messaging, and funnel
- Growth loop mapping and sustainability
- Racecar diagnostic (Engine/Turbo/Lubricant/Fuel)
- Retention risk assessment
- Channel-model fit (ARPU-CAC analysis)
- Ceiling analysis
- Unified growth model
- Prioritized action plan ranked by compounding potential

After audit, output coherence summary clearly labeled:
```
[LAUNCH:coherence-complete:PROJECT_NAME]
Coherence Score: {X/10}
Top Actions: {prioritized list}
Binding Constraint: {what}
Key Risks: {list}
```
(claude-mem auto-captures this — no explicit save needed)

Write your phase summary to `.claude/phase-summary.md` in addition to outputting it.

Ask the user questions as needed using AskUserQuestion.
PROMPT_EOF
)"
        ;;
      "launch-coherence")
        NEXT_PHASE="launch-execution"
        NEXT_PROMPT="$(cat <<'PROMPT_EOF'
## Pipeline Phase 3c: Launch Execution (Ads + SEO + AI Search)

You are continuing the Caliber pipeline. The Growth Auditor coherence audit just completed.

**CRITICAL: Before doing ANYTHING else, retrieve all prior phase findings from claude-mem:**
1. Call `mcp__plugin_claude-mem_mcp-search__search` with NO query — use filters only: `dateStart` set to PIPELINE_START_DATE, `limit` 50
2. Scan the index for observations about "coherence", "strategy", "offer", "funnel", "growth", "binding constraint", or "PROJECT_NAME"
3. Call `mcp__plugin_claude-mem_mcp-search__get_observations` with the relevant IDs

**Your task:** Run the launch EXECUTION sub-phase (3 experts), prioritized by Growth Auditor findings.

Read ALL skill files and references for these experts:
- LAUNCH_PLUGIN_DIR/skills/media-planner/SKILL.md + all files in references/
- LAUNCH_PLUGIN_DIR/skills/seo-strategist/SKILL.md + all files in references/
- LAUNCH_PLUGIN_DIR/skills/ai-search-optimizer/SKILL.md + all files in references/

Run these 3 experts in parallel using the Agent tool:
1. **Media Planner** — Design paid media campaign plan
2. **SEO Strategist** — Design SEO strategy and implementation plan
3. **AI Search Optimizer** — Design AI search optimization plan

After all 3 complete, output the final pipeline report clearly labeled:
```
[LAUNCH:pipeline-complete:PROJECT_NAME]
Phase: launch — COMPLETE
Strategy: {offer + copy + funnel summary}
Coherence: {growth model + priorities}
Execution: {ads + SEO + AI search summary}
Top 5 Actions: {from Growth Auditor}
```
(claude-mem auto-captures this — no explicit save needed)

Write your phase summary to `.claude/phase-summary.md` in addition to outputting it.

Synthesize ALL pipeline phases into a final report:
- Validate findings (value prop + business model + experiments)
- Build decisions (strategy + growth design + specs + UX)
- Launch strategy + coherence + execution
- Top 5 immediate actions
- Critical dependencies and risks
PROMPT_EOF
)"
        ;;
      "launch-execution")
        # Pipeline complete
        echo "Pipeline complete for project: $PROJECT_NAME"
        sed -i "s/^status: .*/status: complete/" "$PIPELINE_STATE"
        exit 0
        ;;
      *)
        echo "Warning: Unknown pipeline phase '$CURRENT_PHASE'. Cleaning up." >&2
        rm -f "$PIPELINE_STATE"
        exit 0
        ;;
    esac
    ;;

  "single-plugin")
    # Single plugin mode - just let it finish
    sed -i "s/^status: .*/status: complete/" "$PIPELINE_STATE"
    exit 0
    ;;
esac

# If no next phase determined, allow exit
if [[ -z "$NEXT_PHASE" ]] || [[ -z "$NEXT_PROMPT" ]]; then
  rm -f "$PIPELINE_STATE"
  exit 0
fi

# Replace placeholders in prompt
NEXT_PROMPT="${NEXT_PROMPT//PROJECT_NAME/$PROJECT_NAME}"
NEXT_PROMPT="${NEXT_PROMPT//BUILD_PLUGIN_DIR/$BUILD_DIR}"
NEXT_PROMPT="${NEXT_PROMPT//LAUNCH_PLUGIN_DIR/$LAUNCH_DIR}"
NEXT_PROMPT="${NEXT_PROMPT//PIPELINE_START_DATE/$STARTED_AT}"

# Update state file with next phase
TEMP_FILE="${PIPELINE_STATE}.tmp.$$"
sed "s/^current_phase: .*/current_phase: $NEXT_PHASE/" "$PIPELINE_STATE" > "$TEMP_FILE"
mv "$TEMP_FILE" "$PIPELINE_STATE"

# Build system message
case "$NEXT_PHASE" in
  "build") PHASE_LABEL="2/5: build" ;;
  "launch-strategy") PHASE_LABEL="3/5: launch-strategy" ;;
  "launch-coherence") PHASE_LABEL="4/5: launch-coherence" ;;
  "launch-execution") PHASE_LABEL="5/5: launch-execution" ;;
  *) PHASE_LABEL="$NEXT_PHASE" ;;
esac
SYSTEM_MSG="Pipeline [$PROJECT_NAME] — Phase $PHASE_LABEL | validate > build > launch-strategy > launch-coherence > launch-execution"

# Output JSON to block stop and inject next phase prompt
jq -n \
  --arg prompt "$NEXT_PROMPT" \
  --arg msg "$SYSTEM_MSG" \
  '{
    "decision": "block",
    "reason": $prompt,
    "systemMessage": $msg
  }'

exit 0
