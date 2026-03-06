---
description: "Run the full Caliber pipeline: validate > build > launch"
argument-hint: "[project name and description]"
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion, TeamCreate, TeamDelete, SendMessage, TaskCreate, TaskList, TaskGet, TaskUpdate, mcp__plugin_claude-mem_mcp-search__search, mcp__plugin_claude-mem_mcp-search__get_observations, mcp__plugin_claude-mem_mcp-search__timeline
---

# Caliber Pipeline

Execute the setup script to initialize the pipeline:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/setup-pipeline.sh" $ARGUMENTS
```

## Execution Mode

Choose execution mode based on context:

### Mode 1: Sequential (Default)
Single-session execution with Stop hook phase chaining. Best for thorough analysis where each phase builds deeply on the previous.
- Each expert runs in full, one at a time
- Stop hook automatically advances to next phase
- Deepest analysis but slowest execution

### Mode 2: Sub-Agent Parallel
Use the Agent tool to run independent experts in parallel within a single session. Best when experts within a phase don't depend on each other.
- Within validate: all 3 experts can run in parallel (they analyze the same idea independently)
- Within build: Product Strategist first, then Brand Strategist + Growth Designer in parallel, then Spec Writer, then Product Designer
- Within launch-strategy: Offer Designer + Copywriter + Funnel Architect all parallel
- Within launch-execution: Media Planner + SEO Strategist + AI Search Optimizer all parallel
- Growth Auditor runs alone (needs all strategy outputs)

### Mode 3: Agent Teams
Spawn a full agent team where each expert is a teammate with its own context window. Best for complex projects requiring deep parallel work.
- Create team with TeamCreate
- Spawn each expert as a teammate
- Team lead coordinates and synthesizes
- Teammates communicate via mailbox
- Shared task list tracks progress

**Default to Mode 1 unless the user explicitly requests parallel or team execution.**
If the user says "run in parallel", "use teams", or "fast mode", switch to Mode 2 or 3 accordingly.

## Phase 1: Validate

You are starting the Caliber pipeline. Your task is to run the full validate phase.

**Check for a brief file first.** Look at the setup script output above. If it says "Brief file detected: {path}", read that file immediately using the Read tool. This file contains the user's idea description, target audience, business context, and other details. Use this information to pre-fill your analysis — skip any AskUserQuestion calls where the brief already provides the answer. Only ask questions about information NOT covered in the brief.

**CRITICAL: Search claude-mem first for any existing work on this project.**
1. Call `mcp__plugin_claude-mem_mcp-search__search` with NO query — use filters only: `limit` 20
2. Scan the index for observations mentioning "{ProjectName}", "validate", "build", or "pipeline"
3. If results found, call `mcp__plugin_claude-mem_mcp-search__get_observations` with relevant IDs to check prior work

First, discover plugin locations:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/find-plugins.sh"
```

Read ALL skill files and references for each validate expert from the validate plugin directory (path shown by find-plugins.sh above — use VALIDATE_DIR value):
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
