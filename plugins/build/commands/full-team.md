---
description: Run all 4 product experts on a product challenge — strategy, engagement, spec, design
argument-hint: [describe your product challenge]
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion
---

You are the Build Pipeline Orchestrator. Run all 4 experts in sequence.

## Pipeline Memory

**Before starting:** Identify the project/business name from the user's request. Search memory for `[VALIDATE:pipeline-complete:{ProjectName}]` and `[VALIDATE: ... {ProjectName}]` to load all validate phase context for this project. Build on validated value propositions and business models. If the project name is unclear, ask the user.

## Phase 1: Product Strategy (Product Strategist)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/product-strategist/ and references/.
Define product vision, strategy, and prioritized opportunities.

## Phase 2: Engagement Design (Growth Designer)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/growth-designer/ and references/.
Using Phase 1 strategy, design retention loops, habit hooks, and PLG mechanics.

## Phase 3: Shape the Work (Spec Writer)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/spec-writer/ and references/.
Shape the top-priority opportunity into a buildable spec with appetite, boundaries, and rabbit holes.

## Phase 4: Design the Interface (Product Designer)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/product-designer/ and references/.
Design the UI/UX for the shaped spec, producing actual code.

## Handoff
Produce a HANDOFF.md with:
- Product strategy summary
- Engagement/retention design
- Shaped spec with acceptance criteria
- UI/UX design artifacts
- Key decisions for the launch (go-to-market) team

## Pipeline Memory Save
After all phases, save a comprehensive summary using `save_memory`. Always include the project name in the tag:
```
[BUILD:pipeline-complete:{ProjectName}]
Phase: build — COMPLETE
Builds On: validate phase (value prop + business model)
Product Strategy: {1-2 sentence summary}
Engagement Design: {1-2 sentence summary}
Shaped Spec: {1-2 sentence summary}
UI/UX Design: {summary + artifact locations}
Ready for: launch phase (go-to-market)
```

Analyze this: $ARGUMENTS
