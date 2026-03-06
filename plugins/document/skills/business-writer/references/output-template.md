# Business Writer -- Output Template

> Adapt format to the requested document type. Use the Document Selection table in SKILL.md to pick the right template. Every document includes YAML frontmatter for pandoc export.

---

## OUTPUT STRUCTURE OVERVIEW

```
DOCUMENT TYPES:

1. Business Plan (15-25 pages)
2. Executive Summary (2-3 pages)
3. Case Study (3-5 pages)
4. SOP -- Standard Operating Procedure (variable)
5. One-Pager (1 page)
```

---

## DOCUMENT TYPE 1: BUSINESS PLAN

```yaml
---
title: "{Company Name} -- Business Plan"
author: "{Company Name}"
date: "{YYYY-MM-DD}"
geometry: margin=1in
fontsize: 11pt
---
```

### Section 1: Executive Summary

```
================================================================
EXECUTIVE SUMMARY
================================================================

Company:        {Company Name}
Industry:       {Industry / market domain}
Stage:          {Pre-revenue | Early revenue | Growth | Scale}
Founded:        {Year}
Location:       {City, Country}

Mission Statement:
{One sentence: who you serve, what you do, why it matters}

The Opportunity:
{2-3 sentences describing the market gap and why now}

The Solution:
{2-3 sentences describing product/service and key differentiator}

Business Model:
{1-2 sentences: how money is made, primary revenue stream}

Key Metrics:
| Metric              | Current        | 12-Month Target |
|---------------------|----------------|-----------------|
| Revenue (MRR/ARR)   | {$X}           | {$Y}            |
| Customers           | {N}            | {N}             |
| Growth Rate         | {X% MoM/YoY}  | {X% MoM/YoY}   |
| Unit Economics      | {LTV:CAC}      | {LTV:CAC}       |

Funding Ask:  {$Amount} for {purpose}
Use of Funds: {Top 3 allocation categories with percentages}

================================================================
```

### Section 2: Problem

```
================================================================
PROBLEM
================================================================

Problem Statement:
{Who has this problem, what the problem is, and what it costs them}

Current Alternatives:
| Alternative          | Limitation                          |
|---------------------|-------------------------------------|
| {Competitor/method} | {Why it falls short}                |
| {Competitor/method} | {Why it falls short}                |
| {Doing nothing}     | {Cost of inaction}                  |

Evidence of Problem Severity:
- {Statistic or data point with source}
- {Customer quote or research finding}
- {Market signal -- growth of related solutions, regulatory change}

================================================================
```

### Section 3: Solution

```
================================================================
SOLUTION
================================================================

Product/Service Description:
{What it is, how it works, key features (3-5 bullets)}

Value Proposition:
{Single sentence: For [target], who [need], our [product] [benefit]
unlike [alternative], because [differentiator]}

Key Features:
| Feature              | Benefit                | Evidence       |
|---------------------|------------------------|----------------|
| {Feature 1}         | {Outcome for user}     | {Data/source}  |
| {Feature 2}         | {Outcome for user}     | {Data/source}  |
| {Feature 3}         | {Outcome for user}     | {Data/source}  |

Differentiation:
{2-3 sentences: what makes this defensible and hard to copy}

================================================================
```

### Section 4: Market Analysis

```
================================================================
MARKET ANALYSIS
================================================================

Market Sizing (bottom-up):
| Level | Calculation                              | Value     |
|-------|------------------------------------------|-----------|
| TAM   | {Total addressable: segments x price}    | {$X}      |
| SAM   | {Serviceable: geographic/segment filter}  | {$X}      |
| SOM   | {Obtainable: realistic Year 1-3 capture}  | {$X}      |

Target Customer:
{2-3 sentence profile of primary buyer persona}

Market Trends:
1. {Trend with supporting data}
2. {Trend with supporting data}
3. {Trend with supporting data}

Competitive Landscape:
| Competitor    | Positioning    | Strength         | Weakness         |
|--------------|----------------|------------------|------------------|
| {Name}       | {Position}     | {Key strength}   | {Key weakness}   |
| {Name}       | {Position}     | {Key strength}   | {Key weakness}   |
| {Our product}| {Position}     | {Key strength}   | {Key weakness}   |

================================================================
```

### Section 5: Business Model

```
================================================================
BUSINESS MODEL
================================================================

Revenue Streams:
| Stream               | Model          | Pricing         | % of Revenue |
|---------------------|----------------|-----------------|--------------|
| {Primary stream}    | {SaaS/usage/...}| {$X/mo or unit}| {X%}         |
| {Secondary stream}  | {Model}        | {$X}            | {X%}         |

Unit Economics:
| Metric         | Value     | Benchmark      |
|---------------|-----------|----------------|
| CAC            | {$X}      | {Industry avg} |
| LTV            | {$X}      | {Industry avg} |
| LTV:CAC Ratio  | {X:1}     | {>3:1 target}  |
| Payback Period  | {X months}| {<12 months}   |
| Gross Margin    | {X%}      | {Industry avg} |

Pricing Strategy:
{2-3 sentences: pricing rationale, tiers if applicable}

================================================================
```

### Section 6: Financial Projections

```
================================================================
FINANCIAL PROJECTIONS
================================================================

Assumptions:
- {Growth rate assumption and basis}
- {Churn rate assumption and basis}
- {Pricing assumption and basis}
- {Cost structure assumption and basis}

3-Year Projection:
| Metric            | Year 1       | Year 2       | Year 3       |
|-------------------|-------------|-------------|-------------|
| Revenue           | {$X}        | {$X}        | {$X}        |
| COGS              | {$X}        | {$X}        | {$X}        |
| Gross Profit      | {$X}        | {$X}        | {$X}        |
| Operating Expenses| {$X}        | {$X}        | {$X}        |
| Net Income        | {$X}        | {$X}        | {$X}        |
| Cash Balance      | {$X}        | {$X}        | {$X}        |

Key Milestones:
| Quarter | Milestone                    | Revenue Impact |
|---------|------------------------------|---------------|
| Q{N}    | {Milestone}                  | {$X or %}     |
| Q{N}    | {Milestone}                  | {$X or %}     |

================================================================
```

### Section 7: Team

```
================================================================
TEAM
================================================================

| Name         | Role           | Relevant Experience              |
|-------------|----------------|----------------------------------|
| {Name}      | {CEO/CTO/...}  | {Key credential in 1 sentence}   |
| {Name}      | {Role}         | {Key credential in 1 sentence}   |

Key Hires Planned:
| Role              | Timeline    | Impact                          |
|-------------------|-------------|----------------------------------|
| {Role}            | {Quarter}   | {Why this hire matters}          |

Advisors (if applicable):
| Name         | Expertise      | Contribution                     |
|-------------|----------------|----------------------------------|
| {Name}      | {Domain}       | {What they bring}                |

================================================================
```

### Section 8: Next Steps

```
================================================================
NEXT STEPS
================================================================

1. {Action item with owner and deadline}
2. {Action item with owner and deadline}
3. {Action item with owner and deadline}

================================================================
```

---

## DOCUMENT TYPE 2: EXECUTIVE SUMMARY

```yaml
---
title: "{Topic} -- Executive Summary"
author: "{Company Name}"
date: "{YYYY-MM-DD}"
geometry: margin=1in
fontsize: 11pt
---
```

```
================================================================
EXECUTIVE SUMMARY
================================================================

Purpose:    {Why this document exists}
Audience:   {Who reads this}
Date:       {YYYY-MM-DD}

SITUATION:
{2-3 sentences: current state, relevant context}

KEY FINDINGS:
| # | Finding                              | Impact       | Confidence |
|---|--------------------------------------|-------------|------------|
| 1 | {Finding}                            | {High/Med/Low}| {High/Med/Low} |
| 2 | {Finding}                            | {High/Med/Low}| {High/Med/Low} |
| 3 | {Finding}                            | {High/Med/Low}| {High/Med/Low} |

ANALYSIS:
{3-5 paragraphs of supporting detail, each with data}

RECOMMENDATIONS:
| Priority | Action                    | Owner    | Timeline  | Expected Outcome |
|----------|--------------------------|----------|-----------|-----------------|
| 1        | {Action}                 | {Name}   | {Date}    | {Outcome}        |
| 2        | {Action}                 | {Name}   | {Date}    | {Outcome}        |
| 3        | {Action}                 | {Name}   | {Date}    | {Outcome}        |

RISKS:
- {Risk 1 and mitigation}
- {Risk 2 and mitigation}

NEXT STEPS:
1. {Immediate action}
2. {Follow-up action}

================================================================
```

---

## DOCUMENT TYPE 3: CASE STUDY

```yaml
---
title: "Case Study: {Customer Name}"
author: "{Company Name}"
date: "{YYYY-MM-DD}"
geometry: margin=1in
fontsize: 11pt
---
```

```
================================================================
CASE STUDY: {Customer Name}
================================================================

HEADLINE: {Result-driven headline: "How {Customer} achieved {outcome}"}

SNAPSHOT:
| Field           | Value                          |
|-----------------|--------------------------------|
| Customer        | {Company name and description} |
| Industry        | {Industry}                     |
| Challenge       | {One sentence}                 |
| Solution        | {Product/service used}         |
| Key Result      | {Primary metric improvement}   |
| Timeline        | {Duration}                     |

---

CHALLENGE:
{2-3 paragraphs: What the customer was struggling with,
what they had tried before, what was at stake}

SOLUTION:
{2-3 paragraphs: How the product/service was implemented,
key features used, integration with existing workflows}

RESULTS:

| Metric               | Before        | After         | Change       |
|----------------------|--------------|---------------|-------------|
| {KPI 1}             | {Value}       | {Value}       | {+/-X%}     |
| {KPI 2}             | {Value}       | {Value}       | {+/-X%}     |
| {KPI 3}             | {Value}       | {Value}       | {+/-X%}     |

CUSTOMER QUOTE:
"{Direct quote from the customer about the experience}"
-- {Name}, {Title}, {Company}

KEY TAKEAWAYS:
1. {Takeaway relevant to similar prospects}
2. {Takeaway relevant to similar prospects}
3. {Takeaway relevant to similar prospects}

================================================================
```

---

## DOCUMENT TYPE 4: STANDARD OPERATING PROCEDURE (SOP)

```yaml
---
title: "SOP: {Process Name}"
author: "{Department / Team}"
date: "{YYYY-MM-DD}"
version: "{1.0}"
---
```

```
================================================================
SOP: {Process Name}
================================================================

PURPOSE:       {What this procedure accomplishes}
SCOPE:         {Who follows this, when it applies}
OWNER:         {Role responsible for maintaining this SOP}
LAST REVIEWED: {YYYY-MM-DD}
REVIEW CYCLE:  {Quarterly | Semi-annual | Annual}

---

PREREQUISITES:
- {Tool, access, or knowledge needed before starting}
- {Tool, access, or knowledge needed before starting}

---

PROCEDURE:

Step 1: {Action Title}
  - Action:    {What to do}
  - Tool:      {System or tool used}
  - Output:    {What this step produces}
  - Time Est:  {X minutes}

Step 2: {Action Title}
  - Action:    {What to do}
  - Tool:      {System or tool used}
  - Output:    {What this step produces}
  - Time Est:  {X minutes}

Step 3: {Action Title}
  - Action:    {What to do}
  - Tool:      {System or tool used}
  - Output:    {What this step produces}
  - Time Est:  {X minutes}

[Continue as needed]

---

DECISION POINTS:

| At Step | Condition              | If YES          | If NO            |
|---------|------------------------|-----------------|------------------|
| {N}     | {Condition to check}   | {Proceed to X}  | {Do Y instead}   |

---

EXCEPTIONS:
| Scenario                  | Handling                          |
|---------------------------|-----------------------------------|
| {Exception case}          | {What to do differently}          |

---

QUALITY CHECKS:
- [ ] {Verification item}
- [ ] {Verification item}
- [ ] {Verification item}

---

REVISION HISTORY:
| Version | Date       | Author   | Changes           |
|---------|-----------|----------|-------------------|
| 1.0     | {Date}    | {Name}   | Initial release   |

================================================================
```

---

## DOCUMENT TYPE 5: ONE-PAGER

```yaml
---
title: "{Company Name} -- One-Pager"
author: "{Company Name}"
date: "{YYYY-MM-DD}"
geometry: margin=0.75in
fontsize: 10pt
---
```

```
================================================================
{COMPANY NAME} -- ONE-PAGER
================================================================

TAGLINE: {One sentence value proposition}

THE PROBLEM:
{2-3 sentences: pain point with supporting data}

THE SOLUTION:
{2-3 sentences: what the product does differently}

HOW IT WORKS:
1. {Step 1} -> 2. {Step 2} -> 3. {Step 3}

TRACTION:
| Metric        | Value           |
|--------------|-----------------|
| {KPI}        | {Number}        |
| {KPI}        | {Number}        |
| {KPI}        | {Number}        |

MARKET:
{TAM: $X | SAM: $X | SOM: $X}

BUSINESS MODEL:
{Revenue model in one sentence, key unit economics}

TEAM:
{Founder names, titles, and one-line credentials}

THE ASK:
{What you need: funding amount, partnership type, or next step}

CONTACT: {Email} | {URL}

================================================================
```

---

## QUALITY CHECKLIST

Before delivering any document, verify:

```
================================================================
QUALITY CHECKLIST
================================================================

STRUCTURE:
- [ ] Executive summary / snapshot can stand alone
- [ ] Clear section hierarchy (H1 > H2 > H3)
- [ ] Tables used for all comparisons and data sets
- [ ] YAML frontmatter present for pandoc export

EVIDENCE:
- [ ] Every claim has a supporting data point or source
- [ ] Financial projections include stated assumptions
- [ ] Gaps marked as [DATA NEEDED] with request to user
- [ ] No unsupported superlatives ("best," "largest," "fastest")

ACTIONABILITY:
- [ ] Numbered next steps with owners and timelines
- [ ] Recommendations are specific (not "improve marketing")
- [ ] Clear call to action appropriate to audience

CLARITY:
- [ ] Active voice throughout
- [ ] No unexplained jargon or acronyms
- [ ] Consistent tense and terminology
- [ ] Proofread for typos and formatting

SCORING (target 4+ on each):
| Dimension      | Score [1-5] |
|---------------|------------|
| Evidence       | {score}    |
| Structure      | {score}    |
| Actionability  | {score}    |
| Clarity        | {score}    |
| Visual Data    | {score}    |

================================================================
```
