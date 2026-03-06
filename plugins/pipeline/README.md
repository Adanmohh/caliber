# Caliber Pipeline

Pipeline controller that chains the **validate > build > launch** plugins into an automated, multi-phase business strategy workflow. 14 AI experts run in sequence across 5 phases.

## Prerequisites

Install all 4 plugins:

```bash
claude plugin install validate@<marketplace>
claude plugin install build@<marketplace>
claude plugin install launch@<marketplace>
claude plugin install pipeline@<marketplace>
```

Or load locally during development:

```bash
claude --plugin-dir ./validate --plugin-dir ./build --plugin-dir ./launch --plugin-dir ./pipeline
```

### Optional: Cross-session memory

Install [claude-mem](https://github.com/thedotmack/claude-mem) for persistent memory across pipeline phases:

```bash
claude plugin install claude-mem
```

Without claude-mem, each phase still works — but findings won't persist across sessions automatically.

## Commands

| Command | Description |
|---------|-------------|
| `/run <project name>` | Run the full 5-phase pipeline |
| `/resume <phase> [project]` | Resume from a specific phase |
| `/plugin <plugin> <project>` | Run a single plugin (validate, build, or launch) |
| `/status` | Check current pipeline state |
| `/cancel` | Cancel the active pipeline |

## How the Pipeline Works

The pipeline uses a **Stop hook loop pattern**: when one phase finishes and the agent tries to exit, the Stop hook intercepts the exit, checks pipeline state, and injects the next phase's prompt — automatically continuing the pipeline.

```
Phase 1: validate         Phase 2: build            Phases 3-5: launch
(3 experts)               (4 experts)               (7 experts, 3 sub-phases)

Value Mapper        -->   Product Strategist  -->   Strategy (parallel)
Business Modeler          Growth Designer            Offer Designer
Experiment Designer       Spec Writer                Copywriter
                          Product Designer           Funnel Architect

                                                    Coherence Audit
                                                     Growth Auditor

                                                    Execution (parallel)
                                                     Media Planner
                                                     SEO Strategist
                                                     AI Search Optimizer
```

### Phase transitions

```
validate --> build --> launch-strategy --> launch-coherence --> launch-execution
  (1/5)     (2/5)         (3/5)                (4/5)                 (5/5)
```

Each phase:
1. Retrieves prior phase findings from claude-mem (if installed)
2. Reads relevant skill files and reference materials
3. Runs its expert(s) — asking the user questions as needed
4. Outputs a tagged summary (e.g., `[VALIDATE:pipeline-complete:ProjectName]`)
5. Stop hook catches the exit and injects the next phase prompt

### State management

Pipeline state is stored in `.claude/pipeline.local.md` (gitignored). The pipeline is session-isolated — only the session that started the pipeline is affected by the Stop hook.

### Memory across phases

When claude-mem is installed, observations are auto-captured via PostToolUse hooks. Each new phase searches for prior observations using date-filtered queries and reads them by ID. This means:

- No explicit "save" calls needed — claude-mem captures automatically
- Phase handoffs work within a single session (Stop hook loop) or across sessions (claude-mem search)
- Without claude-mem, the Stop hook still chains phases within a single session

## Architecture

```
pipeline/
  .claude-plugin/plugin.json    # Plugin manifest
  commands/                     # /run, /resume, /plugin, /status, /cancel
  hooks/
    hooks.json                  # Stop + SessionStart hook config
    stop-hook.sh                # Phase transition logic
    session-start.sh            # Resume detection on session start
  scripts/
    setup-pipeline.sh           # Initialize pipeline state
    find-plugins.sh             # Discover validate/build/launch paths
```

The pipeline plugin contains no experts or skills itself — it only manages the pipeline flow across the three domain plugins.

## Usage Example

```
> /run BurnoutLab - online courses and AI tools for burnout recovery

# Phase 1: Validate runs (Value Mapper, Business Modeler, Experiment Designer)
# ...asks you questions about customers, market, assumptions...
# Phase 2: Build runs automatically after validate completes
# Phase 3a: Launch Strategy runs (Offer, Copy, Funnel - in parallel)
# Phase 3b: Growth Auditor coherence audit
# Phase 3c: Execution runs (Ads, SEO, AI Search - in parallel)
# Final report synthesizes all phases
```

## Plugin Ecosystem

| Plugin | Experts | Purpose |
|--------|---------|---------|
| **validate** | 3 | Validate ideas (value prop, business model, experiments) |
| **build** | 4 | Build it (strategy, growth, specs, UX design) |
| **launch** | 7 | Scale it (offer, copy, funnel, ads, SEO, AI search) |
| **pipeline** | 0 | Chain all plugins into automated pipeline |
