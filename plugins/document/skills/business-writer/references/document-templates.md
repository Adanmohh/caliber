# Document Templates Reference

## Business Plan Template (15-25 pages)

### 1. Title Page
- Company name, logo placeholder, date, version, confidentiality notice

### 2. Executive Summary (1-2 pages)
- One-paragraph company description
- Problem statement (2-3 sentences)
- Solution overview (2-3 sentences)
- Target market and size (TAM/SAM/SOM)
- Business model summary (how you make money)
- Traction highlights (key metrics)
- The ask (funding amount, use of funds)

### 3. Problem (1-2 pages)
- Problem description with data
- Who experiences this problem (persona)
- Current alternatives and why they fail
- Cost of the problem (time, money, emotional)

### 4. Solution (2-3 pages)
- Product/service description
- Key features and benefits (table format)
- How it works (3-step process)
- Unique value proposition
- Competitive advantage / moat

### 5. Market Analysis (2-3 pages)
- TAM / SAM / SOM with sources
- Market trends and growth rate
- Customer segments (table)
- Competitive landscape (comparison matrix)

### 6. Business Model (1-2 pages)
- Revenue streams (table: stream, pricing, margin)
- Unit economics (CAC, LTV, LTV:CAC ratio)
- Pricing strategy and justification

### 7. Go-to-Market Strategy (1-2 pages)
- Launch strategy
- Customer acquisition channels
- Sales process / funnel
- Partnerships and distribution

### 8. Traction (1-2 pages)
- Key milestones achieved (timeline table)
- Metrics dashboard (MRR, users, growth rate)
- Customer testimonials or LOIs

### 9. Team (1 page)
- Founders and key hires (name, role, relevant experience)
- Advisory board
- Hiring plan

### 10. Financial Projections (2-3 pages)
- 3-year revenue projection (table)
- Key assumptions listed explicitly
- Monthly burn rate and runway
- Break-even analysis

### 11. The Ask (1 page)
- Funding amount
- Use of funds (pie chart as table)
- Expected milestones with this funding
- Timeline to next raise

---

## One-Pager Template

```
[COMPANY NAME] -- [Tagline]

THE PROBLEM
[2-3 sentences describing the pain point with a data point]

THE SOLUTION
[2-3 sentences on what you do differently]

HOW IT WORKS
1. [Step 1]  2. [Step 2]  3. [Step 3]

TRACTION
| Metric    | Value   |
|-----------|---------|
| [KPI 1]   | [Data]  |
| [KPI 2]   | [Data]  |
| [KPI 3]   | [Data]  |

MARKET OPPORTUNITY
[TAM] -> [SAM] -> [SOM] with one-line source

BUSINESS MODEL
[Revenue model in 1-2 sentences]

THE TEAM
[Founder names + one-line credentials]

THE ASK
[Amount] for [purpose] to reach [milestone]

[Contact info]
```

---

## Case Study Template (3-5 pages)

### Header
- Title: "How [Customer] achieved [Result] with [Product]"
- Customer logo placeholder, industry, company size

### At a Glance (sidebar/callout)
| Detail | Value |
|--------|-------|
| Industry | [Industry] |
| Company size | [Size] |
| Challenge | [One line] |
| Solution | [One line] |
| Key result | [Headline metric] |

### The Challenge (1 page)
- Customer background
- Specific problem they faced
- Impact of the problem (quantified)
- What they tried before

### The Approach (1 page)
- Why they chose your solution
- Implementation process
- Timeline and key decisions

### The Results (1-2 pages)
- Primary metric improvement (before/after table)
- Secondary benefits
- Direct quote from customer
- ROI calculation if applicable

### What's Next
- Future plans with your product
- Expansion opportunities

---

## SOP Template

### Header
| Field | Value |
|-------|-------|
| Document ID | SOP-[NUM] |
| Title | [Process Name] |
| Version | 1.0 |
| Effective Date | [Date] |
| Owner | [Role] |
| Last Review | [Date] |

### 1. Purpose
[Why this SOP exists -- 2-3 sentences]

### 2. Scope
- **Applies to:** [Roles/departments]
- **Does not cover:** [Exclusions]

### 3. Definitions
| Term | Definition |
|------|-----------|
| [Term] | [Definition] |

### 4. Procedures
#### Step 1: [Action]
- **Who:** [Role]
- **What:** [Detailed instruction]
- **When:** [Trigger/timing]
- **Output:** [Expected result]

#### Step 2: [Action]
[Repeat structure]

### 5. Roles and Responsibilities
| Role | Responsibility |
|------|---------------|
| [Role] | [What they do] |

### 6. Metrics and Review
- **Success metric:** [KPI]
- **Review frequency:** [Quarterly/Annual]
- **Escalation path:** [Who to contact if issues arise]

---

## Executive Summary Template (2-3 pages)

### Header
- Title: "Executive Summary: [Topic]"
- Date, author, distribution list

### 1. Situation Overview (half page)
- Current state of business/project/market
- Key context the reader needs
- Why this summary exists now

### 2. Key Findings (1 page)
| Finding | Evidence | Impact |
|---------|----------|--------|
| [Finding 1] | [Data point] | [Business impact] |
| [Finding 2] | [Data point] | [Business impact] |
| [Finding 3] | [Data point] | [Business impact] |

### 3. Analysis (half page)
- What the findings mean together
- Risks if no action is taken
- Opportunities identified

### 4. Recommendations (half page)
| Priority | Action | Owner | Timeline | Expected Result |
|----------|--------|-------|----------|----------------|
| 1 | [Action] | [Role] | [Date] | [Metric] |
| 2 | [Action] | [Role] | [Date] | [Metric] |
| 3 | [Action] | [Role] | [Date] | [Metric] |

### 5. Next Steps
- Immediate actions (this week)
- Short-term actions (this month)
- Decision points requiring approval

---

## Pandoc PDF Generation

### Basic Command

```bash
pandoc business-plan.md \
  --pdf-engine=xelatex \
  --toc --toc-depth=3 \
  --number-sections \
  -V geometry:margin=1in \
  -V fontsize=12pt \
  -V mainfont="Georgia" \
  -o business-plan.pdf
```

### Eisvogel Template (Professional PDFs)

The Eisvogel template adds title pages, colored headers, and professional formatting.

Install: Download `eisvogel.latex` to pandoc templates directory.
- Windows: `C:\Users\{USERNAME}\AppData\Roaming\pandoc\templates\`
- macOS: `~/.pandoc/templates/`

YAML frontmatter for Eisvogel:

```yaml
---
title: "Business Plan"
author: "Company Name"
date: "2026-03-06"
titlepage: true
titlepage-color: "2563eb"
titlepage-text-color: "ffffff"
titlepage-rule-color: "10b981"
titlepage-rule-height: 2
toc: true
toc-own-page: true
numbersections: true
geometry: margin=1in
fontsize: 12pt
---
```

Generate:
```bash
pandoc business-plan.md --template eisvogel --pdf-engine=xelatex -o business-plan.pdf
```

Note: Enclose color values in quotes (e.g., "2563eb") to prevent YAML truncation.
