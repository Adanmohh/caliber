---
name: mvp-scaffolder
description: Scaffolds full-stack MVPs with React frontend, FastAPI backend, and Neon PostgreSQL. Activates for any MVP, prototype, or app scaffolding request.
---

# MVP Scaffolder

Produces working, deployable full-stack applications. The standard stack is React (Vite) + FastAPI (Python) + Neon PostgreSQL. Includes authentication, database schema, API routes, and deployment configuration.

## Core Principles
- React (Vite) frontend + FastAPI backend + Neon PostgreSQL — this is THE stack
- Neon MCP is MANDATORY — Claude manages database directly via MCP tools
- TypeScript for frontend, Python for backend
- Auth (JWT) and database from day one
- Ship with Docker + deployment config (Railway or Fly.io)
- Include .env.example, README, and seed data
- Maximum 5 core features — push back on scope creep

## Upstream Inputs (Memory Search)

Before starting, search claude-mem for upstream strategy outputs:

| Memory Tag | What You Get |
|-----------|-------------|
| `[PHASE:validate:{Project}]` | User segments, value propositions, business models |
| `[PHASE:build:{Project}]` | Product strategy, specs, user stories, scope boundaries |
| `[PHASE:launch:{Project}]` | Offer stack, pricing, copy, brand voice |

## Stack Architecture

```
React (Vite) ──> FastAPI ──> Neon PostgreSQL
   │                │              │
   ├─ Tailwind CSS  ├─ Pydantic   ├─ Managed via Neon MCP
   ├─ React Router  ├─ JWT Auth   ├─ Serverless driver
   └─ Tanstack Query└─ SQLAlchemy └─ Free unlimited projects
```

## Execution Workflow
1. **Gather** — Ask: product type, core features (max 5), deployment target
2. **Create Neon DB** — Use Neon MCP to create project + database
3. **Scaffold backend** — FastAPI app with routers, Pydantic models, JWT auth
4. **Write schema** — SQL migrations via Neon MCP, seed data
5. **Scaffold frontend** — React (Vite) with Tailwind, React Router, API client
6. **Wire API** — Connect frontend to FastAPI endpoints via Tanstack Query
7. **Add deployment** — Dockerfile for backend, Vercel/Netlify for frontend
8. **Deliver** — Complete project with setup instructions

## Neon MCP Requirement

The Neon MCP server MUST be configured. It provides:
- `create_project` — Create a new Neon project (free, unlimited)
- `run_sql` — Execute SQL directly (schema, migrations, seeds)
- `get_connection_string` — Get DATABASE_URL for FastAPI

If Neon MCP is not available, instruct the user to install it:
```
Add to .claude/settings.json or MCP config:
"@neondatabase/mcp-server-neon" with NEON_API_KEY
```

## Project Structure

| Directory | Contents |
|-----------|----------|
| `/frontend` | React (Vite) app with Tailwind |
| `/frontend/src/pages` | Page components with React Router |
| `/frontend/src/components` | Shared UI components |
| `/frontend/src/api` | API client (fetch wrapper + Tanstack Query hooks) |
| `/backend` | FastAPI application |
| `/backend/app/routers` | API route modules |
| `/backend/app/models` | Pydantic models (request/response) |
| `/backend/app/db.py` | Neon connection + SQLAlchemy setup |
| `/backend/app/auth.py` | JWT authentication |
| Root files | .env.example, docker-compose.yml, README.md |

## Key Constraints
- Maximum 5 core features in MVP scope
- All secrets in .env, never hardcoded
- Frontend and backend are separate deployable units
- CORS configured for frontend origin
- Include basic error handling and loading states
- README must include: setup steps, env vars, deployment instructions

## Reference Files
- **On-demand:** `references/fullstack-patterns.md` — FastAPI patterns, Neon setup, JWT auth, React patterns, deployment configs, failure modes
