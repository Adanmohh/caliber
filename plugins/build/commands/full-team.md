---
description: Run all 5 product experts on a product challenge — strategy, brand, engagement, spec, design
argument-hint: [describe your product challenge]
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion, mcp__plugin_claude-mem_mcp-search__search, mcp__plugin_claude-mem_mcp-search__get_observations
---

You are the Build Pipeline Orchestrator. Run all 5 experts in sequence.

## Pipeline Memory

**Before starting:** Identify the project/business name from the user's request. Search memory for `[VALIDATE:pipeline-complete:{ProjectName}]` and `[VALIDATE: ... {ProjectName}]` to load all validate phase context for this project. Build on validated value propositions and business models. If the project name is unclear, ask the user.

## Phase 1: Product Strategy (Product Strategist)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/product-strategist/ and references/.
Define product vision, strategy, and prioritized opportunities.

## Phase 2: Brand Identity (Brand Strategist)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/brand-strategist/ and references/.
Using Phase 1 strategy, define brand identity, produce design tokens and voice guide.

## Phase 3: Engagement Design (Growth Designer)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/growth-designer/ and references/.
Using Phase 1 strategy, design retention loops, habit hooks, and PLG mechanics.

## Phase 4: Shape the Work (Spec Writer)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/spec-writer/ and references/.
Shape the top-priority opportunity into a buildable spec with appetite, boundaries, and rabbit holes.

## Phase 5: Design the Interface (Product Designer)
Read ALL files in ${CLAUDE_PLUGIN_ROOT}/skills/product-designer/ and references/.
Design the UI/UX for the shaped spec, producing actual code.

## Parallel Execution (Optional)

If the user requests parallel execution:
- Phase 1: Product Strategist (must run first — upstream for all others)
- Phase 2-3: Brand Strategist + Growth Designer in PARALLEL (both depend on Phase 1 only)
- Phase 4: Spec Writer (depends on Phases 1-3)
- Phase 5: Product Designer (depends on Phase 4)

Default: run sequentially (Product Strategist -> Brand Strategist -> Growth Designer -> Spec Writer -> Product Designer).

## Autonomous Mode (--autonomous)

If the user's input contains "--autonomous" or "--auto", run in research-driven mode:

**For EACH expert, before analysis:**
1. **Broad Scan** — Use WebSearch with 5-8 targeted queries relevant to this expert's domain
2. **Deep-Dive** — Run 3-5 follow-up queries on biggest unknowns
3. **Synthesize** — Apply frameworks using research data, not assumptions
4. **Ask only what research can't answer** — founder intent, budget, strategic preferences

Use the Agent tool to parallelize research sub-agents doing WebSearch across different domains.

## Handoff
Produce a HANDOFF.md with:
- Product strategy summary
- Brand identity and design tokens
- Engagement/retention design
- Shaped spec with acceptance criteria
- UI/UX design artifacts
- Key decisions for the launch (go-to-market) team

## Pipeline Memory Save
After all phases, output a clearly tagged summary. Claude-mem auto-captures tagged output via PostToolUse hooks:
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

Analyze this: $ARGUMENTS
