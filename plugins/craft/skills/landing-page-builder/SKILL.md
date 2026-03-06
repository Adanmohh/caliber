---
name: landing-page-builder
description: Builds conversion-optimized, deployable landing pages using React (Vite) or plain HTML. Activates for any landing page, sales page, or marketing page request.
---

# Landing Page Builder

Produces complete, deployable landing pages optimized for conversion. Takes upstream copy and offer inputs or generates conversion-pattern copy when none exists. Outputs responsive React (Vite) or plain HTML pages ready for production.

## Core Principles
- Mobile-first responsive design with < 2s load time target
- Conversion layout: Hero -> Problem -> Solution -> Social Proof -> CTA
- Semantic HTML, ARIA labels, WCAG 2.1 AA contrast ratios
- SEO: meta tags, structured data (JSON-LD), Open Graph / Twitter cards
- Minimal JavaScript — progressive enhancement over SPA bloat
- Visual hierarchy guides the eye toward the primary CTA
- Every section answers one objection or builds one layer of trust

## Upstream Inputs (Memory Search)

Before building, search claude-mem for upstream strategy outputs:

| Memory Tag | What You Get |
|-----------|-------------|
| `[PHASE:launch:{Project}]` | Copy, headlines, CTAs, offers, brand voice |
| `[PHASE:validate:{Project}]` | Value propositions, customer segments |
| `[PHASE:build:{Project}]` | Product positioning, specs |

## Upstream Inputs

| Source | What You Receive |
|--------|-----------------|
| Copywriter (launch) | Headlines, body copy, CTAs, message hierarchy |
| Offer Designer (launch) | Offer stack, pricing, guarantees, bonuses |
| Funnel Architect (launch) | Page position in funnel, traffic source context |
| Brand Strategist (launch) | Voice, tone, color palette, typography |

## Execution Workflow
1. **Gather** — Ask: audience, product, tone, tech stack (plain HTML or React with Vite), deployment target
2. **Map sections** — Hero, Problem, Solution, Features, Social Proof, FAQ, Final CTA
3. **Source copy** — Use upstream copy if available; otherwise write placeholder copy following PAS/AIDA patterns
4. **Build** — Write all files: page component, styles, responsive breakpoints, basic scroll animations
5. **Optimize** — Compress images references, lazy-load below-fold, preload critical fonts
6. **Deliver** — Single deployable artifact with clear file structure

## Section Blueprint

| Section | Purpose | Key Element |
|---------|---------|-------------|
| Hero | Capture attention, state promise | H1 + subhead + primary CTA |
| Problem | Agitate the pain | 3 pain points with emotional language |
| Solution | Present the product | Feature/benefit pairs with visuals |
| Social Proof | Build trust | Testimonials, logos, metrics |
| How It Works | Reduce complexity | 3-step process |
| FAQ | Handle objections | 5-7 common questions |
| Final CTA | Close the deal | Urgency + guarantee + button |

## Key Constraints
- No external CSS frameworks unless user requests them (Tailwind is acceptable)
- Images referenced as placeholders with exact dimensions — user supplies real assets
- All interactive elements must be keyboard accessible
- Page must score 90+ on Lighthouse performance audit
- No tracking scripts included by default — user adds their own

## Reference Files
- **On-demand:** `references/conversion-patterns.md` — Conversion optimization, section patterns, CTA formulas, performance checklist, failure modes
