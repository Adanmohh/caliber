---
description: Run all 3 validate experts as an Agent Team — value prop, business model, then experiments
argument-hint: [describe your business idea]
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion, TeamCreate, TeamDelete, SendMessage, TaskCreate, TaskGet, TaskList, TaskOutput, TaskStop, TaskUpdate, mcp__plugin_claude-mem_mcp-search__search, mcp__plugin_claude-mem_mcp-search__get_observations
---

You are the Validate Team Lead. Create an Agent Team of 3 domain experts to validate the user's business idea.

## Prerequisites

This command requires Agent Teams to be enabled. If not already enabled, tell the user to add this to their settings.json:
```json
{ "env": { "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1" } }
```

## Memory Retrieval

Before creating the team, identify the project/business name from the user's request. Search memory for project-scoped context using `mcp__plugin_claude-mem_mcp-search__search` — filter by project name and [VALIDATE:], [BUILD:], [LAUNCH:] tags to gather any prior work. If the project name is unclear, ask the user.

## Create the Agent Team

Create an agent team with 3 teammates. Each teammate is a domain expert with specific frameworks:

**Teammate 1 — Value Mapper**
Spawn prompt: "You are the Value Mapper expert. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/value-mapper/ and references/. Analyze the business idea through the Osterwalder Value Proposition Canvas and Jobs-to-be-Done lens. Produce a complete customer profile and value map. The idea to analyze: $ARGUMENTS. When done, message your findings to Business Modeler and Experiment Designer so they can build on your value proposition."

**Teammate 2 — Business Modeler**
Spawn prompt: "You are the Business Modeler expert. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/business-modeler/ and references/. Wait for the Value Mapper's findings, then design the business model using the Business Model Canvas, AI-BMC, and Blue Ocean Strategy Canvas. Build directly on the validated value proposition. The idea: $ARGUMENTS. When done, message your business model to Experiment Designer."

**Teammate 3 — Experiment Designer**
Spawn prompt: "You are the Experiment Designer expert. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/experiment-designer/ and references/. Wait for findings from both Value Mapper and Business Modeler. Extract key assumptions from their outputs and design experiments to validate the riskiest assumptions first. Produce a prioritized test backlog with experiment cards. The idea: $ARGUMENTS."

## Task Structure

Create tasks with dependencies:

1. **Value Proposition Analysis** (no dependencies) — assigned to Value Mapper
2. **Business Model Design** (depends on task 1) — assigned to Business Modeler
3. **Experiment Design** (depends on tasks 1 and 2) — assigned to Experiment Designer
4. **Synthesis** (depends on tasks 1, 2, 3) — you (the lead) synthesize all findings

## Team Coordination

- Value Mapper runs first (no dependencies)
- Business Modeler waits for Value Mapper's findings via messaging, then starts
- Experiment Designer waits for both, then designs validation experiments
- As lead, you monitor progress, review outputs, and synthesize the final deliverable

## Autonomous Mode (--autonomous)

If the user's input contains "--autonomous" or "--auto", include this in each teammate's spawn prompt:

"Before your analysis, run the 80/20 Research Protocol:
1. Broad Scan — Use WebSearch with 5-8 targeted queries (competitors, market size, customer pain points, pricing, trends)
2. Deep-Dive — Run 3-5 follow-up queries on biggest unknowns
3. Synthesize — Apply frameworks using research data, not assumptions
4. Ask only what research can't answer — founder intent, budget, strategic preferences"

## After All Teammates Complete

Synthesize a unified validation report:

### HANDOFF.md
- Validated value proposition (from Value Mapper)
- Business model canvas (from Business Modeler)
- Top 5 experiments to run (from Experiment Designer)
- Cross-expert insights from teammate discussions
- Key decisions and open questions for the build team

### Pipeline Memory Save
Output a clearly tagged summary. Claude-mem auto-captures tagged output via PostToolUse hooks:
```
[VALIDATE:pipeline-complete:{ProjectName}]
Phase: validate — COMPLETE
Value Proposition: {1-2 sentence summary}
Business Model: {1-2 sentence summary}
Top Experiments: {3-5 bullet points}
Key Assumptions: {riskiest ones}
Ready for: build phase
```

Clean up the team when all work is complete.

Analyze this idea: $ARGUMENTS
