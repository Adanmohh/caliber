# Craft Plugin

Build production deliverables: landing pages, MVPs, and UI components. Part of the Caliber ecosystem.

## Agents

| Agent | Role | Output |
|-------|------|--------|
| Landing Page Builder | Builds conversion-optimized landing pages | Deployable HTML/React/Next.js pages |
| MVP Scaffolder | Scaffolds full-stack applications | Complete project with auth, DB, API, deployment |
| Component Designer | Creates polished UI components | React + Tailwind components with variants and dark mode |

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
```

## Pipeline Position

```
explore --> product --> craft --> launch --> exploit
                        ^^^
                    YOU ARE HERE
```

**Receives input from:**
- product plugin (Spec Writer, Product Designer, Growth Designer)
- launch plugin (Copywriter, Offer Designer, Funnel Architect)

**Passes output to:**
- launch plugin (pages and components ready for marketing integration)
- exploit plugin (deployed artifacts for growth and optimization)

## Agents in Detail

### Landing Page Builder
Takes copy briefs and offer specs, outputs complete landing pages. Supports HTML, React, and Next.js. Follows the Hero -> Problem -> Solution -> Social Proof -> CTA conversion structure. Targets < 2s load time and 90+ Lighthouse score.

### MVP Scaffolder
Takes product specs, outputs a working full-stack application. Default stack: Next.js + Supabase + Tailwind + TypeScript. Includes auth, database migrations, API routes, seed data, and deployment config. The output runs with `npm install && npm run dev`.

### Component Designer
Takes UI requirements, outputs polished React components. Uses Tailwind CSS and class-variance-authority for variants. Every component includes dark mode, accessibility (ARIA, keyboard nav), responsive design, and a Storybook story file.
