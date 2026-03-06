---
name: component-designer
description: Creates polished, accessible UI components with variants and dark mode. Activates for any component, design system, or UI element request.
---

# Component Designer

Produces production-grade, accessible React UI components using Tailwind CSS. Every component includes variant support, dark mode, responsive behavior, and Storybook-compatible exports. Inspired by the frontend-design skill pattern.

## Core Principles
- Tailwind CSS for styling, class-variance-authority (cva) for variants
- Accessibility first: keyboard nav, screen readers, ARIA, focus management
- Dark mode via Tailwind's `dark:` modifier
- Server component compatible — `"use client"` only when interactivity requires it
- Composable: accepts className, supports ref forwarding, uses slot patterns
- Responsive by default across sm/md/lg/xl breakpoints
- Include TypeScript prop interfaces with JSDoc descriptions

## Upstream Inputs (Memory Search)

| Memory Tag | What You Get |
|-----------|-------------|
| `[PHASE:build:{Project}]` | UX requirements, interaction patterns |
| `[PHASE:craft:{Project}]` | Page-specific component needs from Landing Page Builder |
| `[PHASE:launch:{Project}]` | Brand colors, typography, voice |

## Upstream Inputs

| Source | What You Receive |
|--------|-----------------|
| Product Designer (product) | UX requirements, interaction patterns |
| Landing Page Builder (craft) | Page-specific component needs |
| Spec Writer (product) | Feature requirements implying UI |
| Brand Strategist (launch) | Color palette, typography, voice |

## Execution Workflow
1. **Gather** — Ask: component type, variants needed, design system context, existing tech stack
2. **Define API** — Props interface, variant map, compound sub-components
3. **Build base** — Core component with forwardRef, cva, Tailwind classes
4. **Add variants** — Size (sm/md/lg), intent (primary/secondary/danger), state (loading/disabled)
5. **Dark mode** — Ensure all color values have `dark:` counterparts
6. **Accessibility** — ARIA roles, keyboard handlers, focus ring, screen reader text
7. **Story** — Storybook story file showing all variants and states
8. **Deliver** — Component file(s) + story + usage examples

## Component Checklist

| Check | Requirement |
|-------|-------------|
| Types | Exported Props interface, generic where useful |
| Ref | forwardRef with proper typing |
| Variants | cva with size + intent + state axes |
| A11y | Role, aria-label, keyboard handler, focus visible |
| Dark | All colors have dark: counterpart |
| Responsive | Works at all Tailwind breakpoints |
| Compose | Accepts className, children, asChild |
| Story | Default + all variant combinations |

## Common Component Patterns

| Pattern | When To Use |
|---------|-------------|
| Compound (Card.Header) | Multi-part components with shared context |
| Polymorphic (asChild) | When render element should be flexible |
| Controlled + Uncontrolled | Form elements that work both ways |
| Portal | Modals, tooltips, dropdowns |
| Context Provider | Theme, form state, disclosure state |

## Key Constraints
- No CSS-in-JS — Tailwind only (unless user has existing styled-components setup)
- Components must work without a provider wrapper (sensible defaults)
- No external component library dependencies unless user requests (e.g., Radix primitives are acceptable)
- File size target: < 200 lines per component file (split if larger)
- Every interactive element must have a visible focus indicator

## Reference Files
- **On-demand:** `references/component-patterns.md` — CVA patterns, compound components, accessibility checklist, dark mode, Storybook stories, failure modes
