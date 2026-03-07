# Craft Plugin

Build production deliverables: landing pages, MVPs, UI components, and test products. 4 AI builder agents. Part of the Caliber ecosystem.

## Agents

| Agent | Role | Output |
|-------|------|--------|
| Landing Page Builder | Builds conversion-optimized landing pages | Deployable React (Vite) or plain HTML pages |
| MVP Scaffolder | Scaffolds full-stack applications | React + FastAPI + Neon PostgreSQL project with auth, DB, API |
| Component Designer | Creates polished UI components | React + Tailwind components with variants and dark mode |
| Tester | Strategy-informed testing with Playwright | Persona-based QA test suites |

## Install

```bash
claude plugin install craft@Adanmohh/caliber
```

## Usage

```bash
# Build a landing page
/craft:landing-page SaaS product for burnout prevention, targeting HR managers

# Scaffold an MVP
/craft:mvp Marketplace for freelance designers with project bidding and payments

# Create a component
/craft:component Pricing card with 3 tiers, toggle for monthly/annual, dark mode

# Run tests
/craft:test Run persona-based QA on the landing page
```

## Pipeline Position

```
validate --> build --> craft --> document / present / studio
                       ^^^
                   YOU ARE HERE
```

**Receives input from:**
- build plugin (Spec Writer, Product Designer, Growth Designer)
- launch plugin (Copywriter, Offer Designer, Funnel Architect)

**Passes output to:**
- document plugin (product details for business plans, pitch decks)
- studio plugin (app URLs for product demo recordings)
- present plugin (product screenshots for slide decks)

## Agents in Detail

### Landing Page Builder
Takes copy briefs and offer specs, outputs complete landing pages. Supports React (Vite) or plain HTML. Follows the Hero -> Problem -> Solution -> Social Proof -> CTA conversion structure. Targets < 2s load time and 90+ Lighthouse score.

### MVP Scaffolder
Takes product specs, outputs a working full-stack application. Default stack: React + FastAPI + Neon PostgreSQL + Tailwind + TypeScript. Includes auth, database migrations, API routes, seed data, and deployment config.

### Component Designer
Takes UI requirements, outputs polished React components. Uses Tailwind CSS and class-variance-authority for variants. Every component includes dark mode, accessibility (ARIA, keyboard nav), responsive design, and a Storybook story file.

### Tester
Strategy-informed testing with Playwright. Runs persona-based QA that tests from the perspective of target customer segments identified during validation. Catches UX issues that unit tests miss.
