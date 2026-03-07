# Organtic

**The AI-native organization. 25 experts from idea to launch.**

Organtic plugs a team of specialized AI agents into [Claude Code](https://docs.anthropic.com/en/docs/claude-code). Each agent applies named frameworks — Osterwalder VPC, Hormozi Value Equation, Reforge Growth Loops — not generic advice. Run them individually, as coordinated Agent Teams, or chain them into a full strategy pipeline.

```
npx organtic
```

```
EXPLORE                                        EXPLOIT
validate  >  build  >  launch                  craft  document  present  studio
3 experts    5 experts   7 experts             4 agents  2 agents  1 agent  3 agents
```

---

## Install

```bash
# Interactive installer (recommended)
npx organtic

# Or add the marketplace directly in Claude Code
/plugin marketplace add Adanmohh/organtic
```

Then start Claude Code. Plugins auto-install on first launch.

## Usage

```bash
# Single expert
/value-mapper AI tool that helps nurses track patient vitals

# Full Agent Team (experts run as parallel Claude Code instances)
/validate:full-team My SaaS idea for project management

# Full pipeline (chains all 15 explore experts)
/pipeline:run BurnoutLab - AI-powered burnout recovery courses
```

---

## Explore: Strategy Pipeline

Three plugins that chain together. Each phase builds on previous findings.

### validate — Is this worth building?

| Expert | Frameworks | Output |
|--------|-----------|--------|
| Value Mapper | Osterwalder VPC, Jobs-to-be-Done | Value proposition canvas, customer segments |
| Business Modeler | Business Model Canvas, Blue Ocean Strategy | Revenue model, competitive positioning |
| Experiment Designer | Strategyzer Testing, ICE/RICE | Prioritized experiment backlog |

### build — What are we shipping?

| Expert | Frameworks | Output |
|--------|-----------|--------|
| Product Strategist | Reforge, Cagan's Transformed | Product strategy, growth loops |
| Brand Strategist | Neumeier Brand Gap, Design Tokens | Brand identity system |
| Growth Designer | Torres Discovery, Hooked Model, PLG | Retention loops, activation flows |
| Spec Writer | Shape Up methodology | Shaped pitches, scope tables |
| Product Designer | Don Norman, JTBD UX, AI UX Patterns | Wireframes, interaction design |

### launch — How do we get customers?

| Expert | Frameworks | Output |
|--------|-----------|--------|
| Offer Designer | Hormozi Value Equation, Grand Slam Offer | Offer stack, pricing tiers |
| Copywriter | Copyhackers, Ogilvy, Gary Vee | Landing page copy, email sequences |
| Funnel Architect | Brunson Value Ladder, Suby 8-Phase | Funnel blueprint, lead magnets |
| Growth Auditor | Reforge Racecar, Channel-Model Fit | Gap analysis, prioritized roadmap |
| Media Planner | Dennis Yu Dollar-a-Day, 3x3 Grid | Channel plan, budget allocation |
| SEO Strategist | CXL Technical SEO, Search Intent Mapping | Keyword map, content clusters |
| AI Search Optimizer | CXL Entity SEO, LLM Visibility | Entity map, citation strategy |

---

## Exploit: Execution Plugins

Four standalone plugins that turn strategy into deliverables.

### craft — Build it

| Agent | Output |
|-------|--------|
| Landing Page Builder | Conversion-optimized pages (React/HTML) |
| MVP Scaffolder | Full-stack prototype with auth, DB, API |
| Component Designer | Production UI components (React + Tailwind) |
| Tester | Persona-based QA with Playwright |

### document — Write it

| Agent | Output |
|-------|--------|
| Business Writer | Business plans, SOPs, case studies |
| Pitch Deck Writer | Investor decks, sales proposals (Marp to PDF) |

### present — Show it

| Agent | Output |
|-------|--------|
| Slide Designer | Professional decks from strategy outputs |

### studio — Film it

| Agent | Output |
|-------|--------|
| Demo Producer | Product demo videos (Playwright + ElevenLabs + Remotion) |
| Clip Maker | Social clips for Reels, TikTok, Shorts, LinkedIn |
| Content Creator | Branded social images and short-form video |

---

## Pipeline

The pipeline orchestrator chains all 15 explore experts automatically:

```
Phase 1: validate         3 experts    Is this worth building?
Phase 2: build            5 experts    What are we shipping?
Phase 3: launch-strategy  3 experts    Offer + copy + funnels
Phase 4: launch-audit     1 expert     Coherence check across all outputs
Phase 5: launch-execution 3 experts    Media + SEO + AI search
```

```bash
/pipeline:run MyProject - description of the idea
/pipeline:run MyProject --start-phase build    # Resume from a phase
/pipeline:run MyProject --autonomous           # Research-first mode
/pipeline:status                               # Check progress
/pipeline:cancel                               # Stop
```

---

## Agent Teams

Commands ending in `:full-team` spawn multiple Claude Code instances that coordinate through shared task lists and message each other directly.

```bash
/validate:full-team My idea
/build:full-team Continue from validation
/launch:full-team Go to market
```

Requires `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1` in `~/.claude/settings.json`.

---

## Cross-Session Memory

Each expert outputs project-scoped tags auto-captured by [claude-mem](https://github.com/thedotmack/claude-mem). Later phases search memory by project name to build on earlier findings — no manual copy-pasting between sessions.

```bash
/plugin install claude-mem@thedotmack
```

---

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
- Optional: [claude-mem](https://github.com/thedotmack/claude-mem) for cross-session memory
- For studio: Node.js, Playwright, Remotion, ffmpeg, ElevenLabs API key

## Links

[GitHub](https://github.com/Adanmohh/organtic) | [Issues](https://github.com/Adanmohh/organtic/issues)

MIT License
