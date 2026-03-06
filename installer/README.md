# Caliber

> Most founders fail not from bad ideas, but from the gap between knowing what to build and actually building it. Caliber closes that gap.

**23 specialized AI agents organized into 8 independent plugins** that work alone or chain together into a complete idea-to-execution pipeline. Each agent brings deep framework expertise — not generic advice, but proven methodologies that top strategists and builders actually use.

## The Problem

You have an idea. Now what?

Validation needs value proposition mapping and jobs-to-be-done analysis. Product strategy needs growth loops and product operating models. Go-to-market needs offer design, conversion copywriting, funnel architecture, and paid media planning. Then you still need to build the landing page, write the pitch deck, design the slides, and record the demo.

That's 23 different disciplines. No solo founder or small team has all of them.

## The Solution

```
npx caliberos
```

One command. Pick the plugins you need. Each one works independently — or chain them all together.

```
STRATEGY PIPELINE                              EXECUTION PLUGINS
validate  >  build  >  launch                  craft | document | present | demo
3 experts    4 experts   7 experts              4 agents  2 agents   1 agent   2 agents
```

**Install one plugin** when you need a specific expert.
**Install all eight** when you want the full pipeline from idea to shipped product.

## Strategy Pipeline

Three plugins that chain together. Each builds on the previous phase's findings.

### validate — Is this idea worth building?

3 experts that pressure-test your idea before you write a line of code.

| Expert | What they do | Output |
|--------|-------------|--------|
| **Value Mapper** | Maps value propositions against customer jobs, pains, and gains | Value proposition canvas, customer segments |
| **Business Modeler** | Designs revenue models, competitive positioning, and pricing strategy | Business model canvas, pricing model, blue ocean map |
| **Experiment Designer** | Designs and prioritizes validation experiments | Prioritized experiment backlog, test designs |

### build — What exactly should we ship?

4 experts that turn a validated idea into a buildable product spec.

| Expert | What they do | Output |
|--------|-------------|--------|
| **Product Strategist** | Defines product strategy, growth loops, and operating model | Product strategy doc, growth model |
| **Growth Designer** | Designs retention loops, engagement triggers, and product-led growth | Habit loops, activation flows, retention curves |
| **Spec Writer** | Shapes buildable specs with clear appetite and scope | Shaped pitches, fat-marker sketches, scope tables |
| **Product Designer** | Creates accessible UI/UX driven by user jobs and AI interaction patterns | Wireframes, interaction design, component specs |

### launch — How do we get customers?

7 experts that build your complete go-to-market engine. Runs in three waves: strategy first, coherence audit, then execution.

| Expert | What they do | Output |
|--------|-------------|--------|
| **Offer Designer** | Designs irresistible offers with pricing, guarantees, and bonuses | Offer stack, value equation score, pricing tiers |
| **Copywriter** | Writes conversion copy from voice-of-customer research | Landing page copy, email sequences, ad copy |
| **Funnel Architect** | Architects conversion funnels with AI-native qualification | Funnel blueprint, lead magnets, email flows |
| **Growth Auditor** | Audits all strategies for coherence and prioritizes actions | Gap analysis, prioritized roadmap, growth loop map |
| **Media Planner** | Plans paid media with budget allocation and creative testing | Channel plan, budget splits, ad creative briefs |
| **SEO Strategist** | Designs search strategy with technical SEO and content architecture | Keyword map, content clusters, technical audit |
| **AI Search Optimizer** | Optimizes visibility in AI-powered search and assistants | Entity map, structured data plan, citation strategy |

## Execution Plugins

Four plugins that turn strategy into tangible deliverables. Each works standalone.

### craft — Build it

| Agent | What it produces |
|-------|-----------------|
| **Landing Page Builder** | Deployable, conversion-optimized landing pages (React/HTML) |
| **MVP Scaffolder** | Full-stack prototypes with auth, database, API, deployment |
| **Component Designer** | Production-grade UI components with variants and accessibility |
| **Tester** | Strategy-informed testing with Playwright (persona-based QA) |

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
| **Demo Producer** | Full product demo videos (browser recording + voiceover + composition) |
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
