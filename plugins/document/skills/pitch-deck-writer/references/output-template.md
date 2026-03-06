# Pitch Deck Writer -- Output Template

> Every deck is a complete Marp markdown file ready for PDF/PPTX export. Adapt slide count and structure to the deck type (see Deck Selection in SKILL.md).

---

## OUTPUT STRUCTURE OVERVIEW

```
DECK TYPES:

1. Investor Deck -- Sequoia Template (10-12 slides)
2. YC Demo Day Deck (8 slides)
3. Sales Deck (8-10 slides)
4. Partnership Deck (6-8 slides)
```

---

## INVESTOR DECK -- SEQUOIA TEMPLATE

````markdown
---
marp: true
theme: default
paginate: true
style: |
  :root {
    --color-primary: {#hex-brand-primary};
    --color-accent: {#hex-brand-accent};
    --color-bg: {#hex-background};
    --color-text: {#hex-text};
  }
  section {
    background: var(--color-bg);
    color: var(--color-text);
    font-family: '{Display Font}', sans-serif;
    padding: 60px;
  }
  h1 {
    color: var(--color-primary);
    font-size: 2.2em;
  }
  h2 {
    color: var(--color-accent);
    font-size: 1.6em;
  }
  table {
    font-size: 0.85em;
    width: 100%;
  }
---

<!-- _class: lead -->

# {Company Name}

## {Tagline: one sentence value proposition}

{Founder Name} | {founder@email.com}
{Date}

<!-- Speaker notes: Introduce yourself, state the problem in one sentence, build curiosity. Target: 30 seconds. -->

---

# The Problem

{2-3 bullet points describing the pain}

- {Who has this problem}
- {What it costs them (time, money, opportunity)}
- {Why existing solutions fail}

<!-- Speaker notes: Make the audience feel the pain. Use a specific story or statistic. Target: 60 seconds. -->

---

# The Solution

**{Product name}** {one-sentence description}

- {Key capability 1 and its benefit}
- {Key capability 2 and its benefit}
- {Key capability 3 and its benefit}

<!-- Speaker notes: Demo or screenshot moment. Show, don't tell. Target: 90 seconds. -->

---

# Why Now

- {Market shift or technology enabler}
- {Regulatory change or cultural trend}
- {Competitive gap opening}

<!-- Speaker notes: Create urgency. Why is this the right time? Target: 45 seconds. -->

---

# Market Size

| Level | Calculation | Value |
|-------|------------|-------|
| TAM | {Total addressable market} | ${X}B |
| SAM | {Serviceable segment} | ${X}M |
| SOM | {Realistic Year 1-3 capture} | ${X}M |

**Bottom-up:** {N customers} x ${price} x {frequency} = ${SOM}

<!-- Speaker notes: Walk through the bottom-up calculation. Investors trust bottom-up over top-down. Target: 60 seconds. -->

---

# Business Model

| Revenue Stream | Model | Price |
|---------------|-------|-------|
| {Primary} | {SaaS / usage / marketplace} | ${X}/mo |
| {Secondary} | {Model} | ${X} |

**Unit Economics:**
CAC ${X} | LTV ${X} | LTV:CAC {X}:1 | Payback {X} months

<!-- Speaker notes: Explain path to profitability. Address margin structure. Target: 60 seconds. -->

---

# Traction

| Metric | Value | Growth |
|--------|-------|--------|
| {MRR / ARR} | ${X} | {X% MoM} |
| {Customers / Users} | {N} | {X% MoM} |
| {Retention / NRR} | {X%} | {trend} |
| {Key engagement metric} | {value} | {trend} |

> "{Customer quote about the product}"
> -- {Name}, {Title}, {Company}

<!-- Speaker notes: If pre-revenue, show proxies: waitlist, LOIs, pilots, engagement. Target: 60 seconds. -->

---

# Competition

|  | {Our Product} | {Competitor 1} | {Competitor 2} |
|--|--------------|---------------|---------------|
| {Axis 1: key differentiator} | {Strong} | {Weak} | {Medium} |
| {Axis 2: key differentiator} | {Strong} | {Medium} | {Weak} |
| {Axis 3} | {Strong} | {Weak} | {Weak} |

**Our Advantage:** {One sentence on defensibility}

<!-- Speaker notes: Use unique axes that highlight YOUR strengths. Avoid feature checklists. Target: 45 seconds. -->

---

# Team

| Name | Role | Key Credential |
|------|------|---------------|
| {Name} | CEO | {Relevant experience in one line} |
| {Name} | CTO | {Relevant experience in one line} |
| {Name} | {Role} | {Relevant experience in one line} |

**Why Us:** {One sentence on founder-market fit}

<!-- Speaker notes: Highlight domain expertise and what makes this team uniquely positioned. Target: 45 seconds. -->

---

# The Ask

**Raising: ${Amount} {Seed / Series A}**

| Use of Funds | Allocation |
|-------------|-----------|
| {Category 1: e.g., Engineering} | {X%} |
| {Category 2: e.g., Go-to-market} | {X%} |
| {Category 3: e.g., Operations} | {X%} |

**Milestones this round unlocks:**
1. {Milestone with target metric}
2. {Milestone with target metric}
3. {Milestone with target metric}

<!-- Speaker notes: Be specific about what the money buys and what milestones it unlocks. Target: 60 seconds. -->

---

<!-- _class: lead -->

# Thank You

**{Founder Name}**
{founder@email.com} | {website.com}

<!-- Speaker notes: Open for Q&A. Have appendix slides ready for deep-dive questions. -->

---

# Appendix

_Additional slides for Q&A -- not presented in main deck._

<!-- Add appendix slides below as needed: detailed financials, product roadmap, customer case studies, technical architecture -->
````

---

## EXPORT COMMANDS

```bash
# PDF (recommended for email)
npx @marp-team/marp-cli {filename}.md --pdf --allow-local-files

# PPTX (for editing)
npx @marp-team/marp-cli {filename}.md --pptx --allow-local-files

# HTML (for web sharing)
npx @marp-team/marp-cli {filename}.md --html --allow-local-files

# Preview (for development)
npx @marp-team/marp-cli {filename}.md --preview
```

---

## QUALITY CHECKLIST

```
================================================================
QUALITY CHECKLIST
================================================================

STORY ARC:
- [ ] Problem -> Solution -> Proof -> Ask flow is clear
- [ ] Each slide builds on the previous one
- [ ] Opening creates urgency, closing creates action

CONTENT:
- [ ] Max 6 lines of text per slide
- [ ] One idea per slide
- [ ] Every number is specific (not "large market" but "$4.2B TAM")
- [ ] Market sizing uses bottom-up calculation
- [ ] Traction shows real metrics or credible proxies

SPEAKER NOTES:
- [ ] Every content slide has speaker notes
- [ ] Notes include timing cues
- [ ] Notes include transition phrases

VISUAL:
- [ ] Marp frontmatter includes theme and pagination
- [ ] CSS variables use brand colors
- [ ] Title slides use `<!-- _class: lead -->`
- [ ] Tables are used for data, not prose
- [ ] Competition uses 2x2 or comparison matrix (not feature checklist)

TECHNICAL:
- [ ] File renders with `npx @marp-team/marp-cli --preview`
- [ ] PDF export produces correct slide count
- [ ] No broken image references
- [ ] Slide separators (`---`) are correct

ASK SLIDE:
- [ ] Amount is specific
- [ ] Use of funds has percentage breakdown
- [ ] Milestones are measurable

================================================================
```
