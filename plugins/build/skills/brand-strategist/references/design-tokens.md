# Design Token Generation

## OKLCH Color Space

OKLCH (Lightness, Chroma, Hue) is the Tailwind v4 standard for perceptually uniform colors.

### Why OKLCH
- Perceptually uniform: equal steps in L look equally different to human eyes
- Unlike HSL where "50% lightness" varies wildly across hues
- Tailwind CSS v4 uses OKLCH natively via `@theme`
- Wide gamut: can express P3 colors for modern displays

### 11-Shade Palette Generation

From a single seed color, generate 50-950 scale:

```
Step 1: Convert seed hex to OKLCH
Step 2: Anchor seed at shade 500 (primary)
Step 3: Generate lightness curve:
  - 50:  L = 0.97 (near white)
  - 100: L = 0.93
  - 200: L = 0.85
  - 300: L = 0.76
  - 400: L = 0.66
  - 500: L = seed.L (anchor)
  - 600: L = 0.45
  - 700: L = 0.37
  - 800: L = 0.29
  - 900: L = 0.21
  - 950: L = 0.13 (near black)
Step 4: Chroma curve (peak at 500, taper at extremes):
  - Extremes (50, 950): C = seed.C * 0.15
  - Mid (300-700): C = seed.C * 0.85-1.0
  - 500: C = seed.C (full saturation)
Step 5: Hue: constant across all shades (seed.H)
```

### Output Format

```css
/* brand-primary palette from seed #2563eb */
--color-primary-50: oklch(0.97 0.02 264);
--color-primary-100: oklch(0.93 0.04 264);
--color-primary-200: oklch(0.85 0.08 264);
--color-primary-300: oklch(0.76 0.12 264);
--color-primary-400: oklch(0.66 0.15 264);
--color-primary-500: oklch(0.55 0.18 264);
--color-primary-600: oklch(0.45 0.16 264);
--color-primary-700: oklch(0.37 0.13 264);
--color-primary-800: oklch(0.29 0.10 264);
--color-primary-900: oklch(0.21 0.07 264);
--color-primary-950: oklch(0.13 0.04 264);
```

## Tailwind v4 @theme Directive

```css
@import "tailwindcss";

@theme {
  /* Colors - OKLCH */
  --color-brand-50: oklch(0.97 0.02 264);
  --color-brand-500: oklch(0.55 0.18 264);
  --color-brand-950: oklch(0.13 0.04 264);

  /* Accent palette */
  --color-accent-50: oklch(0.97 0.02 160);
  --color-accent-500: oklch(0.65 0.20 160);
  --color-accent-950: oklch(0.13 0.04 160);

  /* Neutral palette */
  --color-neutral-50: oklch(0.97 0.005 264);
  --color-neutral-500: oklch(0.55 0.01 264);
  --color-neutral-950: oklch(0.13 0.005 264);

  /* Typography */
  --font-display: "Inter", sans-serif;
  --font-body: "Source Sans 3", sans-serif;

  /* Font sizes (modular scale 1.25) */
  --text-xs: 0.75rem;    /* 12px */
  --text-sm: 0.875rem;   /* 14px */
  --text-base: 1rem;     /* 16px */
  --text-lg: 1.125rem;   /* 18px */
  --text-xl: 1.25rem;    /* 20px */
  --text-2xl: 1.5rem;    /* 24px */
  --text-3xl: 1.875rem;  /* 30px */
  --text-4xl: 2.25rem;   /* 36px */
  --text-5xl: 3rem;      /* 48px */

  /* Spacing scale */
  --spacing-px: 1px;
  --spacing-0: 0;
  --spacing-1: 0.25rem;
  --spacing-2: 0.5rem;
  --spacing-4: 1rem;
  --spacing-8: 2rem;
  --spacing-16: 4rem;

  /* Border radius */
  --radius-sm: 0.25rem;
  --radius-md: 0.5rem;
  --radius-lg: 1rem;
  --radius-full: 9999px;
}
```

## W3C DTCG Design Tokens (Style Dictionary)

```json
{
  "$schema": "https://design-tokens.github.io/community-group/format/",
  "brand": {
    "color": {
      "primary": {
        "$type": "color",
        "$value": "oklch(0.55 0.18 264)",
        "$description": "Primary brand color"
      },
      "accent": {
        "$type": "color",
        "$value": "oklch(0.65 0.20 160)",
        "$description": "Accent/CTA color"
      },
      "surface": {
        "$type": "color",
        "$value": "oklch(0.99 0.002 264)",
        "$description": "Default surface/background"
      },
      "on-surface": {
        "$type": "color",
        "$value": "oklch(0.15 0.01 264)",
        "$description": "Text on surface"
      }
    },
    "font": {
      "display": {
        "$type": "fontFamily",
        "$value": ["Inter", "sans-serif"],
        "$description": "Display/heading font"
      },
      "body": {
        "$type": "fontFamily",
        "$value": ["Source Sans 3", "sans-serif"],
        "$description": "Body text font"
      }
    },
    "spacing": {
      "xs": { "$type": "dimension", "$value": "0.25rem" },
      "sm": { "$type": "dimension", "$value": "0.5rem" },
      "md": { "$type": "dimension", "$value": "1rem" },
      "lg": { "$type": "dimension", "$value": "2rem" },
      "xl": { "$type": "dimension", "$value": "4rem" }
    },
    "borderRadius": {
      "sm": { "$type": "dimension", "$value": "0.25rem" },
      "md": { "$type": "dimension", "$value": "0.5rem" },
      "lg": { "$type": "dimension", "$value": "1rem" },
      "full": { "$type": "dimension", "$value": "9999px" }
    }
  }
}
```

## Semantic Light/Dark Theme Pattern

Use semantic aliases — components never reference mode-specific values:

```css
/* Light mode (default) */
:root {
  --surface: var(--color-neutral-50);
  --on-surface: var(--color-neutral-950);
  --surface-elevated: white;
  --primary: var(--color-brand-500);
  --on-primary: white;
  --accent: var(--color-accent-500);
  --border: var(--color-neutral-200);
  --muted: var(--color-neutral-400);
}

/* Dark mode */
@media (prefers-color-scheme: dark) {
  :root {
    --surface: var(--color-neutral-950);
    --on-surface: var(--color-neutral-50);
    --surface-elevated: var(--color-neutral-900);
    --primary: var(--color-brand-400);
    --on-primary: var(--color-neutral-950);
    --accent: var(--color-accent-400);
    --border: var(--color-neutral-800);
    --muted: var(--color-neutral-600);
  }
}
```

## Typography Scale

### Modular Scale (1.25 ratio — "Major Third")

| Name | Size | Line Height | Weight | Use |
|------|------|-------------|--------|-----|
| xs | 0.75rem (12px) | 1rem | 400 | Captions, labels |
| sm | 0.875rem (14px) | 1.25rem | 400 | Secondary text |
| base | 1rem (16px) | 1.5rem | 400 | Body text |
| lg | 1.125rem (18px) | 1.75rem | 400 | Lead text |
| xl | 1.25rem (20px) | 1.75rem | 600 | H4 |
| 2xl | 1.5rem (24px) | 2rem | 600 | H3 |
| 3xl | 1.875rem (30px) | 2.25rem | 700 | H2 |
| 4xl | 2.25rem (36px) | 2.5rem | 700 | H1 |
| 5xl | 3rem (48px) | 1 | 800 | Display/Hero |

### Font Pairing Rules
- Maximum 2 families: 1 display + 1 body
- Display font: used for headings, hero text, brand marks
- Body font: used for paragraphs, UI labels, form inputs
- Both must support the project's target languages (check character coverage)
- Test at multiple sizes (12px through 48px) before committing

## Voice Guide Template

```markdown
# [Brand Name] Voice Guide

## Core Voice Attributes
- [Attribute 1]: [description + example]
- [Attribute 2]: [description + example]
- [Attribute 3]: [description + example]

## Tone Matrix

| Context | Formality | Energy | Warmth |
|---------|-----------|--------|--------|
| Marketing site | Medium | High | High |
| Product UI | Low | Medium | Medium |
| Error messages | Low | Low | High |
| Email/comms | Medium | Medium | High |
| Social media | Low | High | High |
| AI agent chat | Low-Medium | Medium | High |

## Do / Don't

| Do | Don't |
|----|-------|
| [example] | [example] |

## Content Principles
1. [Principle]: [explanation]
2. [Principle]: [explanation]
3. [Principle]: [explanation]

## AI Agent Voice
- LLM Voice Card: [see brand-frameworks.md template]
- Agent personality traits defined
- Transparency guidelines for AI disclosure
```

## Generating Brand Assets Checklist

1. [ ] Brand Strategy Brief (markdown)
2. [ ] `brand-tokens.json` — W3C DTCG format
3. [ ] `theme.css` — Tailwind v4 @theme with OKLCH palettes (primary + accent + neutral)
4. [ ] `dark-theme.css` — Semantic light/dark aliases
5. [ ] `voice-guide.md` — Voice attributes, tone matrix, do/don't, AI voice card
6. [ ] `typography-scale.css` — Font sizes, weights, line-heights
