# Caliber

Raise the caliber. 25 AI experts that take you from idea to shipped product. A Claude Code plugin ecosystem.

```
STRATEGY                                       EXECUTION
validate (3) → build (5) → launch (7)          craft (4) | document (2) | present (1) | studio (3)
Validate ideas  Build strategy  Go to market    Build it    Write it       Show it       Film it

ORCHESTRATION
pipeline — Chains all 15 strategy experts into an automated 5-phase pipeline
```

## Full Pipeline

The pipeline orchestrator runs all 15 strategy experts automatically, advancing through 5 phases using a Stop hook loop pattern. Each phase saves findings to cross-session memory; later phases retrieve and build on earlier work.

```
/pipeline:run BurnoutLab - AI-powered burnout recovery courses
```

### Pipeline Phases

```
Phase 1: validate     3 experts sequential
          ├─ Value Mapper
          ├─ Business Modeler
          └─ Experiment Designer

Phase 2: build        5 experts sequential
          ├─ Product Strategist
          ├─ Brand Strategist
          ├─ Growth Designer
          ├─ Spec Writer
          └─ Product Designer

Phase 3: launch-strategy    3 experts parallel
          ├─ Offer Designer
          ├─ Copywriter
          └─ Funnel Architect

Phase 4: launch-coherence   1 expert (audits all strategy outputs)
          └─ Growth Auditor

Phase 5: launch-execution   3 experts parallel
          ├─ Media Planner
          ├─ SEO Strategist
          └─ AI Search Optimizer
```

### Pipeline Options

```bash
# Full pipeline (default)
/pipeline:run MyProject - description of the idea

# Start from a specific phase (builds on prior memory)
/pipeline:run MyProject --start-phase build

# Autonomous mode: experts research first, ask only what research can't answer
/pipeline:run MyProject --autonomous

# Read idea from a brief file
/pipeline:run BurnoutLab.md

# Override an active pipeline
/pipeline:run MyProject --force

# Pipeline management
/pipeline:status    # View current state
/pipeline:cancel    # Stop the active pipeline
/pipeline:resume    # Resume from any phase
```

### Autonomous Mode

With `--autonomous`, every expert follows the 80/20 Research Protocol before analysis:

1. **Broad Scan** — 5-8 WebSearch queries per expert (competitors, market data, pricing, customer pain points)
2. **Deep-Dive** — 3-5 follow-up queries on biggest unknowns
3. **Synthesize** — Apply frameworks using research data, not assumptions
4. **Ask only the unanswerable** — founder intent, budget, strategic preferences

Sub-agents run WebSearch in parallel across different research domains.

### Cross-Phase Memory

Each phase outputs project-scoped tags that are auto-captured by claude-mem:

```
[VALIDATE:pipeline-complete:ProjectName]  → value prop + business model + experiments
[BUILD:pipeline-complete:ProjectName]     → product strategy + brand + specs + UX
[LAUNCH:strategy-complete:ProjectName]    → offer + copy + funnel
[LAUNCH:coherence-complete:ProjectName]   → growth model + priorities + risks
[LAUNCH:pipeline-complete:ProjectName]    → full go-to-market + execution plans
```

Later phases search memory by date range and project name to build on validated findings.

## Quick Install

### All plugins (recommended)
```bash
claude plugin install caliber@Adanmohh/caliber
```
Select all 9 plugins when prompted.

### Individual plugins
```bash
claude plugin install validate@Adanmohh/caliber
claude plugin install build@Adanmohh/caliber
claude plugin install launch@Adanmohh/caliber
claude plugin install craft@Adanmohh/caliber
claude plugin install document@Adanmohh/caliber
claude plugin install present@Adanmohh/caliber
claude plugin install studio@Adanmohh/caliber
claude plugin install pipeline@Adanmohh/caliber
```

### npx installer (interactive)
```bash
npx caliberos
```

## Strategy Plugins

### validate — Validate Ideas (3 experts)
| Expert | Frameworks |
|--------|-----------|
| **Value Mapper** | Osterwalder VPC + Jobs-to-be-Done + Identity Jobs |
| **Business Modeler** | BMC + AI-BMC + Blue Ocean Strategy + Pricing Research |
| **Experiment Designer** | Strategyzer Testing + ICE/RICE + AI Experiments |

### build — Build Strategy (5 experts)
| Expert | Frameworks |
|--------|-----------|
| **Product Strategist** | Reforge + Growth Loops + Cagan's Transformed |
| **Brand Strategist** | Marty Neumeier Brand Gap + Design Tokens |
| **Growth Designer** | Torres AI Discovery + Hooked Model + PLG |
| **Spec Writer** | Shape Up methodology + AI Feature Shaping |
| **Product Designer** | Don Norman + JTBD UX + AI UX Patterns |

### launch — Go to Market (7 experts)
| Expert | Frameworks |
|--------|-----------|
| **Offer Designer** | Hormozi Value Equation + Grand Slam Offer + $100M Money Models |
| **Copywriter** | Copyhackers + Ogilvy + Gary Vee Content Systems |
| **Funnel Architect** | Brunson Value Ladder + Suby 8-Phase + AI-native Funnels |
| **Growth Auditor** | Reforge Racecar + Retention Curves + Channel-Model Fit |
| **Media Planner** | Dennis Yu Dollar-a-Day + 3x3 Grid + Meta Advantage+ |
| **SEO Strategist** | CXL Technical SEO + Search Intent Mapping + GEO |
| **AI Search Optimizer** | CXL Entity SEO + LLM Visibility Optimization |

## Execution Plugins

### craft — Build Deliverables (4 agents)
| Agent | What it does |
|-------|-------------|
| **Landing Page Builder** | Conversion-optimized landing pages (React/HTML) |
| **MVP Scaffolder** | Full-stack prototypes with auth, DB, API |
| **Component Designer** | Polished UI components (React + Tailwind) |
| **Tester** | Strategy-informed persona-based QA with Playwright |

### document — Write Documents (2 agents)
| Agent | What it does |
|-------|-------------|
| **Business Writer** | Business plans, SOPs, case studies, one-pagers |
| **Pitch Deck Writer** | Investor pitch decks and sales proposals (Marp to PDF/PPTX) |

### present — Create Presentations (1 agent)
| Agent | What it does |
|-------|-------------|
| **Slide Designer** | Professional slide decks from strategy outputs (Marp markdown) |

### studio — Produce Videos (3 agents)
| Agent | What it does |
|-------|-------------|
| **Demo Producer** | Full product demo videos (Playwright + ElevenLabs + Remotion) |
| **Clip Maker** | Short social clips for Instagram, TikTok, YouTube, LinkedIn |
| **Content Creator** | Branded social media images and short-form videos |

## Usage

### Run individual experts
```
/value-mapper AI tool that helps nurses track patient vitals
/offer-designer B2B SaaS at $99/mo for HR teams
/media-planner $3k/mo budget for Facebook and Google ads
```

### Run a full plugin team
```
/validate:full-team My new SaaS idea for project management
/build:full-team Continue building on the validated idea
/launch:full-team Go to market with the product strategy
```

### Use execution plugins
```
/landing-page Build a landing page from our launch outputs
/mvp Scaffold an MVP for our validated idea
/pitch-deck Create an investor pitch deck
/slides Turn our strategy into a board presentation
/product-demo Record a demo video of our web app
/social-clip Create Instagram Reels from our demo
```

## How It Works

```
1. You run /pipeline:run with a project name
2. Setup script creates .claude/pipeline.local.md state file
3. Each phase runs its experts sequentially (or in parallel for launch sub-phases)
4. Experts output tagged summaries → claude-mem auto-captures them
5. When a phase completes, the Stop hook:
   a. Validates the phase produced expected output tags
   b. Updates state to the next phase
   c. Injects the next phase prompt (blocking exit)
6. Next phase retrieves prior findings from memory before starting
7. After launch-execution, the Stop hook marks pipeline complete and allows exit
```

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
- Optional: [claude-mem](https://github.com/nicobailon/claude-mem) for cross-session memory (enables pipeline phase handoffs)

### For studio plugin
- Node.js + npm
- Playwright (`npm install playwright`)
- Remotion (`npx create-video@latest`)
- ffmpeg (`scoop install ffmpeg`)
- ElevenLabs API key (for voiceover)

## License
MIT
