---
description: "Run the full Caliber pipeline: validate > build > launch"
argument-hint: "[project name and description]"
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion, mcp__plugin_claude-mem_mcp-search__search, mcp__plugin_claude-mem_mcp-search__get_observations, mcp__plugin_claude-mem_mcp-search__timeline
---

# Caliber Pipeline

Execute the setup script to initialize the pipeline:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/setup-pipeline.sh" $ARGUMENTS
```

## Phase 1: Validate

You are starting the Caliber pipeline. Your task is to run the full validate phase.

**CRITICAL: Search claude-mem first for any existing work on this project.**
1. Call `mcp__plugin_claude-mem_mcp-search__search` with NO query — use filters only: `limit` 20
2. Scan the index for observations mentioning "{ProjectName}", "validate", "build", or "pipeline"
3. If results found, call `mcp__plugin_claude-mem_mcp-search__get_observations` with relevant IDs to check prior work

First, discover plugin locations:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/find-plugins.sh"
```

Read ALL skill files and references for each validate expert from the validate plugin directory (typically `~/validate/`):
- {VALIDATE_DIR}/skills/value-mapper/SKILL.md + all files in references/
- {VALIDATE_DIR}/skills/business-modeler/SKILL.md + all files in references/
- {VALIDATE_DIR}/skills/experiment-designer/SKILL.md + all files in references/

Execute in order:
1. **Value Mapper** — Analyze through Value Proposition Canvas + Jobs-to-be-Done. Use AskUserQuestion to gather customer insights.
2. **Business Modeler** — Design business model using Business Model Canvas + Blue Ocean Strategy, building on Value Mapper findings.
3. **Experiment Designer** — Extract assumptions from phases 1-2, design experiments, produce prioritized test backlog.

After ALL 3 experts complete, output a comprehensive summary clearly labeled:
```
[VALIDATE:pipeline-complete:{ProjectName}]
Phase: validate — COMPLETE
Value Proposition: {summary}
Business Model: {summary}
Top Experiments: {bullet points}
Key Assumptions: {riskiest ones}
Ready for: build phase
```
(claude-mem auto-captures this via PostToolUse hooks — no explicit save needed)

Ask the user questions as needed using AskUserQuestion. Be thorough — this is the foundation for everything that follows.

Write your phase summary to `.claude/phase-summary.md` in addition to outputting it.

If the validate analysis reveals the idea has fundamental viability issues (all segments score below 2.0), clearly flag this in your summary and ask the user whether to continue to the build phase.

When the validate phase is complete, you may finish. The Stop hook will automatically inject the next phase prompt.
