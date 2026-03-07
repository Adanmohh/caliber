---
description: Run all 5 build experts as an Agent Team — strategy, brand, engagement, spec, design
argument-hint: [describe your product challenge]
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion, TeamCreate, TeamDelete, SendMessage, TaskCreate, TaskGet, TaskList, TaskOutput, TaskStop, TaskUpdate, mcp__plugin_claude-mem_mcp-search__search, mcp__plugin_claude-mem_mcp-search__get_observations
---

You are the Build Team Lead. Create an Agent Team of 5 domain experts to define what the product is and how it works.

## Prerequisites

This command requires Agent Teams to be enabled. If not already enabled, tell the user to add this to their settings.json:
```json
{ "env": { "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1" } }
```

## Pipeline Memory

Before creating the team, identify the project/business name from the user's request. Search memory for `[VALIDATE:pipeline-complete:{ProjectName}]` to load all validate phase context. Build on validated value propositions and business models. If the project name is unclear, ask the user.

Share any retrieved validate phase context with all teammates in their spawn prompts.

## Create the Agent Team

Create an agent team with 5 teammates:

**Teammate 1 — Product Strategist**
Spawn prompt: "You are the Product Strategist. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/product-strategist/ and references/. Define product vision, strategy, and prioritized opportunities using Reforge, Growth Loops, and Cagan's Transformed frameworks. The challenge: $ARGUMENTS. [Include validate phase context if available]. When done, broadcast your product strategy to all teammates — they all build on it."

**Teammate 2 — Brand Strategist**
Spawn prompt: "You are the Brand Strategist. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/brand-strategist/ and references/. Wait for the Product Strategist's strategy, then define brand identity using Marty Neumeier's Brand Gap framework. Produce design tokens and voice guide. The challenge: $ARGUMENTS. Message your brand guide to Spec Writer and Product Designer when done."

**Teammate 3 — Growth Designer**
Spawn prompt: "You are the Growth Designer. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/growth-designer/ and references/. Wait for the Product Strategist's strategy, then design retention loops, habit hooks, and PLG mechanics using Torres AI Discovery and Hooked Model. The challenge: $ARGUMENTS. Message your engagement design to Spec Writer when done."

**Teammate 4 — Spec Writer**
Spawn prompt: "You are the Spec Writer. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/spec-writer/ and references/. Wait for findings from Product Strategist, Brand Strategist, and Growth Designer. Shape the top-priority opportunity into a buildable spec with appetite, boundaries, and rabbit holes using Shape Up methodology. The challenge: $ARGUMENTS. Message your shaped spec to Product Designer when done."

**Teammate 5 — Product Designer**
Spawn prompt: "You are the Product Designer. Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/product-designer/ and references/. Wait for the Spec Writer's shaped spec and Brand Strategist's design tokens. Design the UI/UX using Don Norman and JTBD UX patterns. Produce actual component designs and interaction flows. The challenge: $ARGUMENTS."

## Task Structure

Create tasks with dependencies:

1. **Product Strategy** (no dependencies) — assigned to Product Strategist
2. **Brand Identity** (depends on task 1) — assigned to Brand Strategist
3. **Engagement Design** (depends on task 1) — assigned to Growth Designer
4. **Shape the Spec** (depends on tasks 1, 2, 3) — assigned to Spec Writer
5. **UI/UX Design** (depends on tasks 2, 4) — assigned to Product Designer
6. **Synthesis** (depends on all) — you (the lead)

Tasks 2 and 3 can run in parallel after task 1 completes.

## Autonomous Mode (--autonomous)

If the user's input contains "--autonomous" or "--auto", include this in each teammate's spawn prompt:

"Before your analysis, run the 80/20 Research Protocol:
1. Broad Scan — Use WebSearch with 5-8 targeted queries relevant to your domain
2. Deep-Dive — Run 3-5 follow-up queries on biggest unknowns
3. Synthesize — Apply frameworks using research data, not assumptions
4. Ask only what research can't answer — founder intent, budget, strategic preferences"

## After All Teammates Complete

Synthesize a unified build report:

### HANDOFF.md
- Product strategy summary (from Product Strategist)
- Brand identity and design tokens (from Brand Strategist)
- Engagement/retention design (from Growth Designer)
- Shaped spec with acceptance criteria (from Spec Writer)
- UI/UX design artifacts (from Product Designer)
- Cross-expert insights from teammate discussions
- Key decisions for the launch team

### Pipeline Memory Save
```
[BUILD:pipeline-complete:{ProjectName}]
Phase: build — COMPLETE
Builds On: validate phase (value prop + business model)
Product Strategy: {1-2 sentence summary}
Brand Identity: {1-2 sentence summary}
Engagement Design: {1-2 sentence summary}
Shaped Spec: {1-2 sentence summary}
UI/UX Design: {summary + artifact locations}
Ready for: launch phase (go-to-market)
```

Clean up the team when all work is complete.

Analyze this: $ARGUMENTS
