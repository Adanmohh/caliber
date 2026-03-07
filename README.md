# Organtic

The AI-native organization. 25 experts from idea to launch.

Organtic is a team of 25 AI experts that plug into Claude Code. Run them individually or chain all 15 strategy experts through an automated pipeline — a full consulting engagement from validation to go-to-market. Each expert applies named frameworks. Not generic advice.

The name: **organic + agentic**. An organization that grows with your project.

## The Team

```
                              ORGANTIC
       ┌──────────────────────────────────────────────────────┐
       │                   STRATEGY TEAM                      │
       │                                                      │
       │  validate (3)  ──→  build (5)  ──→  launch (7)      │
       │  Is this worth      What are we      How do we       │
       │  building?          building?        bring it to     │
       │                                      market?         │
       ├──────────────────────────────────────────────────────┤
       │                  EXECUTION TEAM                      │
       │                                                      │
       │  craft (4)    document (2)    present (1)  studio (3)│
       │  Build it     Write it up     Show it      Film it   │
       └──────────────────────────────────────────────────────┘

       ORCHESTRATION
       pipeline — Chains all 15 strategy experts automatically
```

## How It Works

Install Organtic plugins into Claude Code. Each plugin adds a team of domain experts to your workspace. You invoke them with slash commands — `/value-mapper`, `/offer-designer`, `/media-planner` — or run an entire team at once with `/validate:full-team`.

Every expert reads your project context, applies specific frameworks (Osterwalder VPC, Hormozi Value Equation, Reforge Growth Loops — not vague "best practices"), asks clarifying questions, and produces structured deliverables. They work like senior consultants who happen to be available 24/7.

The pipeline chains all 15 strategy experts into an automated engagement. Phase outputs are tagged and stored in cross-session memory. Later phases retrieve earlier findings and build on them. You go from "I have an idea" to a complete go-to-market strategy without switching contexts.

## Quick Start

```bash
# Add the marketplace and install plugins
/plugin marketplace add Adanmohh/organtic
/plugins   # select which teams to install

# Or install everything from your terminal
npx organtic
```

Run your first expert:

```
/value-mapper AI tool that helps nurses track patient vitals
```

Or run the full pipeline:

```
/pipeline:run BurnoutLab - AI-powered burnout recovery courses
```

## The Pipeline

The pipeline orchestrator runs all 15 strategy experts automatically across 5 phases. Each phase saves findings to cross-session memory. Later phases retrieve and build on earlier work.

```
Phase 1: validate           3 experts, sequential
          ├─ Value Mapper
          ├─ Business Modeler
          └─ Experiment Designer

Phase 2: build              5 experts, sequential
          ├─ Product Strategist
          ├─ Brand Strategist
          ├─ Growth Designer
          ├─ Spec Writer
          └─ Product Designer

Phase 3: launch-strategy    3 experts, parallel
          ├─ Offer Designer
          ├─ Copywriter
          └─ Funnel Architect

Phase 4: launch-coherence   1 expert (audits all strategy outputs)
          └─ Growth Auditor

Phase 5: launch-execution   3 experts, parallel
          ├─ Media Planner
          ├─ SEO Strategist
          └─ AI Search Optimizer
```

### Pipeline Options

```bash
# Full pipeline
/pipeline:run MyProject - description of the idea

# Start from a specific phase (builds on prior memory)
/pipeline:run MyProject --start-phase build

# Autonomous mode: experts research before asking questions
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

## Autonomous Mode

With `--autonomous`, every expert follows the 80/20 Research Protocol before analysis:

1. **Broad Scan** — 5-8 web searches per expert across competitors, market data, pricing, and customer pain points
2. **Deep-Dive** — 3-5 follow-up queries on the biggest unknowns
3. **Synthesize** — Apply frameworks using research data, not assumptions
4. **Ask only the unanswerable** — founder intent, budget constraints, strategic preferences

Sub-agents run searches in parallel across different research domains. The result: experts that come to you with findings instead of questions.

## Strategy Team (15 experts)

### validate — Is this worth building?

| Expert | Frameworks |
|--------|-----------|
| **Value Mapper** | Osterwalder VPC + Jobs-to-be-Done + Identity Jobs |
| **Business Modeler** | BMC + AI-BMC + Blue Ocean Strategy + Pricing Research |
| **Experiment Designer** | Strategyzer Testing + ICE/RICE + AI Experiments |

### build — What are we building?

| Expert | Frameworks |
|--------|-----------|
| **Product Strategist** | Reforge + Growth Loops + Cagan's Transformed |
| **Brand Strategist** | Marty Neumeier Brand Gap + Design Tokens |
| **Growth Designer** | Torres AI Discovery + Hooked Model + PLG |
| **Spec Writer** | Shape Up methodology + AI Feature Shaping |
| **Product Designer** | Don Norman + JTBD UX + AI UX Patterns |

### launch — How do we bring it to market?

| Expert | Frameworks |
|--------|-----------|
| **Offer Designer** | Hormozi Value Equation + Grand Slam Offer + $100M Money Models |
| **Copywriter** | Copyhackers + Ogilvy + Gary Vee Content Systems |
| **Funnel Architect** | Brunson Value Ladder + Suby 8-Phase + AI-native Funnels |
| **Growth Auditor** | Reforge Racecar + Retention Curves + Channel-Model Fit |
| **Media Planner** | Dennis Yu Dollar-a-Day + 3x3 Grid + Meta Advantage+ |
| **SEO Strategist** | CXL Technical SEO + Search Intent Mapping + GEO |
| **AI Search Optimizer** | CXL Entity SEO + LLM Visibility Optimization |

## Execution Team (10 agents)

### craft — Build it

| Agent | What it produces |
|-------|-----------------|
| **Landing Page Builder** | Conversion-optimized landing pages (React/HTML) |
| **MVP Scaffolder** | Full-stack prototypes with auth, DB, and API |
| **Component Designer** | Polished UI components (React + Tailwind) |
| **Tester** | Strategy-informed persona-based QA with Playwright |

### document — Write it up

| Agent | What it produces |
|-------|-----------------|
| **Business Writer** | Business plans, SOPs, case studies, one-pagers |
| **Pitch Deck Writer** | Investor pitch decks and sales proposals (Marp to PDF/PPTX) |

### present — Show it

| Agent | What it produces |
|-------|-----------------|
| **Slide Designer** | Professional slide decks from strategy outputs (Marp markdown) |

### studio — Film it

| Agent | What it produces |
|-------|-----------------|
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

### Use execution agents

```
/landing-page Build a landing page from our launch outputs
/mvp Scaffold an MVP for our validated idea
/pitch-deck Create an investor pitch deck
/slides Turn our strategy into a board presentation
/product-demo Record a demo video of our web app
/social-clip Create Instagram Reels from our demo
```

## Cross-Session Memory

Each phase outputs project-scoped tags that are auto-captured by claude-mem:

```
[VALIDATE:pipeline-complete:ProjectName]  → value prop + business model + experiments
[BUILD:pipeline-complete:ProjectName]     → product strategy + brand + specs + UX
[LAUNCH:strategy-complete:ProjectName]    → offer + copy + funnel
[LAUNCH:coherence-complete:ProjectName]   → growth model + priorities + risks
[LAUNCH:pipeline-complete:ProjectName]    → full go-to-market + execution plans
```

Later phases search memory by date range and project name to build on validated findings. No manual copy-pasting between sessions.

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
