# launch

Strategy and execution for go-to-market. 7 AI experts that take validated products and turn them into revenue through coordinated strategy and execution.

Part of the **validate > build > launch** pipeline.

## Team Roster

### Strategy (3 experts)

| Expert | Frameworks | Focus |
|--------|-----------|-------|
| **Offer Designer** | Hormozi Value Equation, Grand Slam Offer, $100M Money Models | Offer design, pricing, guarantees, bonuses |
| **Copywriter** | Copyhackers, Ogilvy Principles, Gary Vee Content Systems | Conversion copy, messaging, content strategy |
| **Funnel Architect** | Brunson Value Ladder, Suby 8-Phase System, AI-native funnels | Conversion architecture, lead generation, email sequences |

### Coherence (1 expert)

| Expert | Frameworks | Focus |
|--------|-----------|-------|
| **Growth Auditor** | Reforge Growth Loops, RACECAR Framework, Retention Curves, Channel-Model Fit | Coherence audits, growth loops, prioritization |

### Execution (3 experts)

| Expert | Frameworks | Focus |
|--------|-----------|-------|
| **Media Planner** | Dennis Yu Dollar-a-Day, 3x3 Grid | Paid media campaigns, budget allocation |
| **SEO Strategist** | CXL Experimentation-Driven SEO | Technical SEO, search intent mapping, organic traffic |
| **AI Search Optimizer** | CXL AI SEO, Entity SEO, LLM Visibility | AI search optimization, structured data, AI Overview inclusion |

## Orchestration Flow

The `full-team` command runs all 7 experts in a structured three-phase process:

```
Phase 1: Strategy (Parallel)
  Offer Designer ──┐
  Copywriter ────────┼──> Independent analysis
  Funnel Architect ──┘

Phase 2: Coherence Audit (Sequential)
  Growth Auditor ──> Reviews all Phase 1 outputs
                      Flags gaps, conflicts, misalignments
                      Produces prioritized action roadmap

Phase 3: Execution (Parallel, prioritized by Growth Auditor)
  Media Planner ─────┐
  SEO Strategist ──┼──> Plans based on Growth Auditor priorities
  AI Search Optimizer ─────┘
```

## Installation

```bash
claude plugin install launch@<marketplace>
# Or load locally:
claude --plugin-dir ./launch
```

## Usage

### Individual experts

```
/offer-designer Design a SaaS offer at $99/mo for project management
/copywriter Write landing page copy for our AI writing tool
/funnel-architect Build a webinar funnel for a $2k coaching program
/growth-auditor Audit these strategy outputs for coherence
/media-planner Plan Facebook ads with a $3k/mo budget
/seo-strategist Create an SEO strategy for our e-commerce site
/ai-search-optimizer Optimize our brand for ChatGPT Search and Perplexity
```

### Full team orchestration

```
/full-team We have a validated B2B SaaS product for HR teams at $149/mo.
We need a complete go-to-market strategy covering offer packaging,
messaging, funnel architecture, and channel execution.
```

## Pipeline Position

```
validate          build          launch
(discover &  --> (design &     --> (go-to-market
 validate)       ship)            & grow)
```

The launch plugin takes validated products from the product stage and builds the complete go-to-market engine: strategy first, coherence check, then coordinated execution across paid, organic, and AI search channels.

## Full Pipeline

To run the full automated pipeline (validate > build > launch), install the **pipeline** plugin. See the [pipeline README](../pipeline/README.md) for details.
