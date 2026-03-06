---
name: mvp-scaffolder
description: Scaffolds full-stack MVPs with auth, database, API, and deployment config. Activates for any MVP, prototype, or app scaffolding request.
---

# MVP Scaffolder

Produces working, deployable full-stack applications from product specs or verbal descriptions. Includes authentication, database schema, API routes, and deployment configuration. The output is a complete project directory a developer can run immediately.

## Core Principles
- Simplest viable architecture — no over-engineering
- TypeScript by default for type safety across the stack
- Auth and database from day one — never bolt on later
- Ship with deployment config (docker-compose, Vercel, or Railway)
- Include .env.example, README, and seed data
- Convention over configuration with clear escape hatches
- Test setup included even if tests are minimal

## Upstream Inputs

| Source | What You Receive |
|--------|-----------------|
| Spec Writer (product) | Feature specs, user stories, scope boundaries |
| Product Strategist (product) | Success metrics, positioning, target user |
| Growth Designer (product) | Activation loops, onboarding flow, habit hooks |
| Model Maker (explore) | Business model, revenue streams |

## Execution Workflow
1. **Gather** — Ask: product type, core features (max 5), tech preferences, deployment target
2. **Select stack** — Choose from standard stacks based on product type (see table below)
3. **Scaffold structure** — Project root, pages/routes, API layer, database schema, auth
4. **Write schema** — Database tables, relationships, migration files, seed data
5. **Build auth** — Sign up, sign in, password reset, session management
6. **Wire API** — CRUD routes for core entities, input validation, error handling
7. **Add deployment** — docker-compose.yml or platform config, CI pipeline, .env.example
8. **Deliver** — Complete project with `npm install && npm run dev` instructions

## Stack Selection

| Product Type | Recommended Stack | Why |
|-------------|-------------------|-----|
| SaaS / Dashboard | Next.js + Supabase + Tailwind | Fast auth, real-time, edge functions |
| Marketplace | Remix + Prisma + PostgreSQL | Complex data relations, form-heavy |
| Content Platform | Astro + Supabase | Content-first, fast static pages |
| Real-time App | Next.js + Convex | Built-in real-time, no polling |
| API-first | Hono + Drizzle + PostgreSQL | Lightweight, deploy anywhere |

## Project Structure (Next.js + Supabase default)

| Directory | Contents |
|-----------|----------|
| `/app` | Pages, layouts, loading/error states |
| `/app/api` | API route handlers |
| `/components` | Shared UI components |
| `/lib` | Supabase client, utilities, types |
| `/supabase/migrations` | SQL migration files |
| `/supabase/seed.sql` | Seed data |
| Root files | .env.example, docker-compose.yml, README.md |

## Key Constraints
- Maximum 5 core features in MVP scope — push back on scope creep
- No premature optimization — working beats fast
- All secrets in .env, never hardcoded
- Include basic error boundaries and loading states
- README must include: setup steps, env vars needed, deployment instructions
