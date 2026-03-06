# Caliber

> Most founders fail not from bad ideas, but from the gap between knowing what to build and actually building it. Caliber closes that gap.

**22 specialized AI agents organized into 9 independent plugins** that work alone or chain together into a complete idea-to-execution pipeline. Each agent brings deep framework expertise — not generic advice, but the same methodologies used by top strategists, growth engineers, and builders.

## The Problem

You have an idea. Now what?

Validation needs Osterwalder and Jobs-to-be-Done. Product strategy needs Reforge and Shape Up. Go-to-market needs Hormozi pricing, Copyhackers copy, Brunson funnels, and Dennis Yu media buying. Then you still need to build the landing page, write the pitch deck, design the slides, and record the demo.

That's 22 different disciplines. No solo founder or small team has all of them.

## The Solution

```
npx caliberos
```

One command. Pick the plugins you need. Each one works independently — or chain them all together.

```
STRATEGY PIPELINE                              EXECUTION PLUGINS
validate  >  build  >  launch                  craft | document | present | demo
3 experts    4 experts   7 experts              3 agents  2 agents   1 agent   2 agents
```

**Install one plugin** when you need a specific expert.
**Install all nine** when you want the full pipeline from idea to shipped product.

## Strategy Pipeline

Three plugins that chain together. Each builds on the previous phase's findings.

### validate — Is this idea worth building?

3 experts that pressure-test your idea before you write a line of code.

| Expert | Methodology | Output |
|--------|------------|--------|
| **Value Mapper** | Osterwalder VPC + Jobs-to-be-Done + Identity Jobs | Value proposition canvas, customer segments |
| **Business Modeler** | Business Model Canvas + Blue Ocean Strategy + AI-native patterns | Revenue model, competitive positioning, pricing |
| **Experiment Designer** | Strategyzer + ICE/RICE prioritization | Prioritized experiment backlog, test designs |

### build — What exactly should we ship?

4 experts that turn a validated idea into a buildable product spec.

| Expert | Methodology | Output |
|--------|------------|--------|
| **Product Strategist** | Reforge + Growth Loops + Cagan Transformed | Product strategy, growth model |
| **Growth Designer** | Teresa Torres + Hooked Model + PLG | Retention loops, engagement triggers |
| **Spec Writer** | Basecamp Shape Up | Buildable specs with appetite and scope |
| **Product Designer** | Don Norman + JTBD-driven UX + AI UX patterns | Wireframes, interaction design, accessibility |

### launch — How do we get customers?

7 experts that build your complete go-to-market engine. Runs in three waves: strategy first, coherence audit, then execution.

| Expert | Methodology | Output |
|--------|------------|--------|
| **Offer Designer** | Hormozi Value Equation + Grand Slam Offer | Irresistible offer stack, pricing, guarantees |
| **Copywriter** | Copyhackers + Ogilvy + Gary Vee | Landing page copy, email sequences, ad copy |
| **Funnel Architect** | Brunson + Suby + AI-native funnels | Conversion funnel architecture |
| **Growth Auditor** | Reforge Growth Loops + AI-era Four Fits | Coherence audit across all strategies |
| **Media Planner** | Dennis Yu Dollar-a-Day + Meta Advantage+ | Paid media plan, budget allocation |
| **SEO Strategist** | CXL + GEO methodology | Search strategy, content architecture |
| **AI Search Optimizer** | Entity SEO + LLM visibility | Optimization for ChatGPT, Perplexity, AI Overviews |

## Execution Plugins

Four plugins that turn strategy into tangible deliverables. Each works standalone.

### craft — Build it

| Agent | What it produces |
|-------|-----------------|
| **Landing Page Builder** | Deployable, conversion-optimized landing pages (React/HTML) |
| **MVP Scaffolder** | Full-stack prototypes with auth, database, API, deployment |
| **Component Designer** | Production-grade React + Tailwind UI components |

### document — Write it

| Agent | What it produces |
|-------|-----------------|
| **Business Writer** | Business plans, SOPs, case studies, executive summaries |
| **Pitch Deck Writer** | Investor pitch decks, sales proposals (Marp to PDF/PPTX) |

### present — Show it

| Agent | What it produces |
|-------|-----------------|
| **Slide Designer** | Professional presentations from any strategy output (Marp markdown) |

### demo — Film it

| Agent | What it produces |
|-------|-----------------|
| **Demo Producer** | Full product demo videos (Playwright recording + ElevenLabs voiceover + Remotion composition) |
| **Clip Maker** | Short social clips for Instagram Reels, TikTok, YouTube Shorts, LinkedIn |

## Orchestration

The **pipeline** plugin chains the strategy plugins into an automated workflow. Start it with `/run My business idea` and it walks you through all 14 strategy experts, each building on previous findings.

You can also run any single expert directly:

```
/value-mapper AI tool that helps nurses track patient vitals
/copywriter Write landing page copy for our course launch
/landing-page Build from our strategy outputs
/pitch-deck Create an investor pitch deck
/product-demo Record a walkthrough of our web app
```

## Install

### Interactive (recommended)

```bash
npx caliberos
```

### Direct plugin install

```bash
# Everything
claude plugin install caliber@Adanmohh/caliber

# Just what you need
claude plugin install validate@Adanmohh/caliber
claude plugin install launch@Adanmohh/caliber
claude plugin install craft@Adanmohh/caliber
```

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
- Optional: [claude-mem](https://github.com/nicobailon/claude-mem) for cross-session memory
- For demo plugin: Node.js, Playwright, Remotion, ffmpeg, ElevenLabs API key

## Links

- [GitHub](https://github.com/Adanmohh/caliber) | [Issues](https://github.com/Adanmohh/caliber/issues)

MIT License
