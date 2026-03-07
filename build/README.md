# Build Plugin

Product vision and build pipeline with 5 AI experts. Part of the validate > build > launch pipeline.

## Experts

| Expert | Frameworks | Focus |
|--------|-----------|-------|
| **Product Strategist** | Reforge, Marty Cagan (Inspired/Empowered) | Product vision, strategy, roadmaps, feature prioritization |
| **Brand Strategist** | Marty Neumeier (Brand Gap, Zag, Brand Flip) | Brand identity, positioning, design tokens, voice guide |
| **Growth Designer** | Torres (Continuous Discovery), Hooked Model, Product-Led Growth | Retention loops, habit hooks, onboarding, PLG mechanics |
| **Spec Writer** | Basecamp Shape Up | Shaping work into buildable specs with appetite and boundaries |
| **Product Designer** | Don Norman, JTBD-driven UX | Production-grade UI/UX with actual HTML/CSS/JS code |

## Installation

```bash
claude plugin install Adanmohh/organtic build
# Or load locally:
claude --plugin-dir ./build
```

## Usage

### Individual Commands

```
/product-strategist Define strategy for a B2B SaaS analytics platform
/brand-strategist Define brand identity for a B2B SaaS analytics platform
/growth-designer Design retention loops for a freemium project management tool
/spec-writer Shape a spec for team collaboration features
/product-designer Design a dashboard UI for key metrics
```

### Full Pipeline

```
/full-team Build a complete product plan for an AI-powered writing assistant
```

Runs all 5 experts in sequence: Strategy > Brand > Engagement > Spec > Design, then produces a HANDOFF.md for the launch (go-to-market) team.

## Pipeline Flow

```
validate (research) --> build (this plugin) --> launch (go-to-market)
                        |
                        +-- 1. Product Strategist: vision & priorities
                        +-- 2. Brand Strategist: brand identity & design tokens
                        +-- 3. Growth Designer: retention & engagement
                        +-- 4. Spec Writer: shaped, buildable spec
                        +-- 5. Product Designer: production UI/UX code
```

## Full Pipeline

To run the full automated pipeline, install the **pipeline** plugin. See the [pipeline README](../pipeline/README.md) for details.
