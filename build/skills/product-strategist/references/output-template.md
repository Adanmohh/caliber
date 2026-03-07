# Product Strategist Output Templates

## Source Attribution
Templates derived from Reforge Product Strategy Program, Marty Cagan's SVPG
frameworks, Teresa Torres' Opportunity Solution Trees, and industry-standard
product management artifacts. Scoring systems calibrated from Reforge's
strategic assessment models and Cagan's opportunity assessment methodology.

---

## Template 1: Product Strategy Document

Use this template when defining or refining the overall product strategy. This
is the primary strategic artifact and should be updated quarterly or when
material changes in market context occur.

```
PRODUCT STRATEGY DOCUMENT
==========================
Version: [X.X]
Date: [YYYY-MM-DD]
Author: [AI Agent + Human Collaborator]
Review Cycle: Quarterly

------------------------------------------------------------
SECTION 1: STRATEGIC CONTEXT
------------------------------------------------------------

1.1 Company Mission
    [One sentence: the world you see and the change you want]

1.2 Company Strategy Summary
    [2-3 sentences: how the company plans to achieve the mission]

1.3 Market Context
    Market Maturity:     [Growing | Mature | Declining]
    TAM:                 [$X, with source and date]
    Growth Rate:         [X% CAGR]
    Key Market Trends:
      - [Trend 1 with evidence]
      - [Trend 2 with evidence]
      - [Trend 3 with evidence]

1.4 Competitive Landscape
    +------------------+------------------+------------------+
    | Competitor       | Positioning      | Key Advantage    |
    +------------------+------------------+------------------+
    | [Competitor 1]   | [Position]       | [Advantage]      |
    | [Competitor 2]   | [Position]       | [Advantage]      |
    | [Competitor 3]   | [Position]       | [Advantage]      |
    +------------------+------------------+------------------+

    Our Differentiation: [Why us, specifically]

1.5 Current PMF Assessment
    Sean Ellis Score:    [X% -- last measured YYYY-MM-DD]
    Retention (M3):      [X%]
    DAU/MAU:             [X%]
    PMF Status:          [Pre-PMF | Early PMF | Strong PMF | Expanding]

------------------------------------------------------------
SECTION 2: PRODUCT VISION
------------------------------------------------------------

2.1 Vision Statement (3-Year Horizon)
    [In 3 years, [target users] will [transformed experience] because
    [product] provides [unique value]. This matters because [why the
    world is better].]

2.2 Product Principles
    +------------------------------------------------------------------+
    | Principle 1: [Short Name]                                        |
    | Statement: [Declaration]                                         |
    | We DO: [What this means in practice]                             |
    | We DON'T: [What this explicitly rules out]                       |
    +------------------------------------------------------------------+
    | Principle 2: [Short Name]                                        |
    | Statement: [Declaration]                                         |
    | We DO: [What this means in practice]                             |
    | We DON'T: [What this explicitly rules out]                       |
    +------------------------------------------------------------------+
    | Principle 3: [Short Name]                                        |
    | Statement: [Declaration]                                         |
    | We DO: [What this means in practice]                             |
    | We DON'T: [What this explicitly rules out]                       |
    +------------------------------------------------------------------+

------------------------------------------------------------
SECTION 3: STRATEGIC BETS
------------------------------------------------------------

For each strategic bet (recommend 3-5 per strategy cycle):

BET [N]: [Descriptive Name]
  Hypothesis:     [If we do X, then Y will happen, resulting in Z]
  Target Segment: [Specific user segment]
  Problem:        [Problem statement in user language]
  Success Metric: [Primary outcome metric with target]
  Timeframe:      [Validation: X weeks | Full delivery: X months]
  Confidence:     [High | Medium | Low] -- based on evidence so far
  Dependencies:   [What must be true for this bet to work]
  Anti-Goal:      [What this bet explicitly does NOT try to achieve]
  Compounding:    [How does this bet enable future bets?]

  Risk Assessment:
  +------------------+-------+------------+---------------------+
  | Risk Type        | Score | Confidence | Mitigation          |
  +------------------+-------+------------+---------------------+
  | Value            | [1-5] | [H/M/L]   | [Plan]              |
  | Usability        | [1-5] | [H/M/L]   | [Plan]              |
  | Feasibility      | [1-5] | [H/M/L]   | [Plan]              |
  | Viability        | [1-5] | [H/M/L]   | [Plan]              |
  +------------------+-------+------------+---------------------+

  Scoring:
  +---------------------+--------+-------+-----------+
  | Dimension           | Weight | Score | Weighted  |
  +---------------------+--------+-------+-----------+
  | Impact potential     | 30%   | [1-10]|           |
  | Strategic alignment  | 25%   | [1-10]|           |
  | Confidence level     | 20%   | [1-10]|           |
  | Compounding value    | 15%   | [1-10]|           |
  | Execution difficulty | 10%   | [1-10]|           |
  +---------------------+--------+-------+-----------+
  | TOTAL               | 100%  |       |           |
  +---------------------+--------+-------+-----------+

------------------------------------------------------------
SECTION 4: STRATEGIC NON-GOALS
------------------------------------------------------------

Explicitly state what the strategy does NOT pursue and why.

| Non-Goal                      | Reason                              |
|-------------------------------|-------------------------------------|
| [Thing we will not do #1]     | [Why -- strategic reasoning]        |
| [Thing we will not do #2]     | [Why -- strategic reasoning]        |
| [Thing we will not do #3]     | [Why -- strategic reasoning]        |

------------------------------------------------------------
SECTION 5: KEY ASSUMPTIONS AND RISKS
------------------------------------------------------------

| Assumption                    | Evidence Level | What Happens If Wrong |
|-------------------------------|----------------|-----------------------|
| [Assumption 1]                | [H/M/L]       | [Impact + pivot plan] |
| [Assumption 2]                | [H/M/L]       | [Impact + pivot plan] |
| [Assumption 3]                | [H/M/L]       | [Impact + pivot plan] |

------------------------------------------------------------
SECTION 6: MEASUREMENT FRAMEWORK
------------------------------------------------------------

| Strategic Bet  | Leading Indicator      | Lagging Indicator     | Cadence  |
|----------------|------------------------|-----------------------|----------|
| Bet 1          | [Metric + target]      | [Metric + target]     | [Freq]   |
| Bet 2          | [Metric + target]      | [Metric + target]     | [Freq]   |
| Bet 3          | [Metric + target]      | [Metric + target]     | [Freq]   |
```

---

## Template 2: Opportunity Assessment (Scored)

Use this template before investing discovery time in a specific opportunity.
Quick to complete (30-60 minutes), designed to prevent wasted discovery effort.

```
OPPORTUNITY ASSESSMENT
=======================
Date: [YYYY-MM-DD]
Assessor: [AI Agent + Human Collaborator]
Status: [Draft | Reviewed | Approved | Rejected | Parked]

------------------------------------------------------------
THE TEN QUESTIONS
------------------------------------------------------------

1. OBJECTIVE
   Business goal this addresses: [Specific metric or strategic bet]
   Connection to strategy: [Which strategic bet does this serve?]

2. PROBLEM
   User problem statement: [In the user's own language]
   Problem frequency: [Daily | Weekly | Monthly | Situational]
   Problem severity: [Critical | Significant | Moderate | Minor]

3. TARGET USERS
   Primary segment: [Specific characteristics]
   Segment size: [Number of users or % of user base]
   Current behavior: [How they solve this today]

4. EVIDENCE
   Qualitative evidence:
     - [Customer quote or interview finding #1]
     - [Customer quote or interview finding #2]
   Quantitative evidence:
     - [Data point #1 with source]
     - [Data point #2 with source]
   Market evidence:
     - [Competitive signal or market trend]

5. OPPORTUNITY SIZE
   Users affected: [Number or %]
   Revenue potential: [$X per year, with calculation]
   Strategic value: [High | Medium | Low] -- [Reasoning]

6. SUCCESS METRICS
   Primary metric: [Metric name, current value, target value, timeframe]
   Secondary metrics:
     - [Metric 2: current -> target]
     - [Metric 3: current -> target]
   Guardrail metrics (must not degrade):
     - [Metric that must stay stable]

7. COMPETITIVE LANDSCAPE
   Direct alternatives: [Competitor products]
   Indirect alternatives: [Workarounds, substitutes]
   Status quo: [What happens if we do nothing]

8. DIFFERENTIATION
   Why us: [Unique advantage or capability]
   Why now: [Market timing, technology enablement, urgency]
   Defensibility: [Can competitors easily copy this?]

9. RISK ASSESSMENT
   +------------------+-------+----------------------------------+
   | Risk             | Level | Mitigation                       |
   +------------------+-------+----------------------------------+
   | Value            | [H/M/L]| [How we'll validate]            |
   | Usability        | [H/M/L]| [How we'll validate]            |
   | Feasibility      | [H/M/L]| [How we'll validate]            |
   | Viability        | [H/M/L]| [How we'll validate]            |
   +------------------+-------+----------------------------------+

10. TIMELINE
    Discovery phase: [X weeks]
    Delivery estimate: [X weeks/months -- rough, pending discovery]
    Key milestones: [Date: milestone, Date: milestone]

------------------------------------------------------------
OPPORTUNITY SCORE
------------------------------------------------------------

| Dimension              | Weight | Score (1-10) | Weighted Score |
|------------------------|--------|-------------|----------------|
| Problem severity       | 25%    |             |                |
| Market size            | 20%    |             |                |
| Strategic alignment    | 20%    |             |                |
| Competitive position   | 15%    |             |                |
| Execution confidence   | 10%    |             |                |
| Time to value          | 10%    |             |                |
| TOTAL                  | 100%   |             |                |

Decision Thresholds:
  8.0+  --> Pursue immediately, allocate dedicated discovery team
  6.0-7.9 --> Schedule for next cycle, begin targeted research
  4.0-5.9 --> Park with documented reasoning, revisit when context changes
  < 4.0  --> Reject with clear documentation of why

RECOMMENDATION: [Pursue | Schedule | Park | Reject]
REASONING: [2-3 sentences on the decision]
```

---

## Template 3: Product Roadmap (Outcome-Based, Now/Next/Later)

Use this template to communicate the product roadmap. This is an outcome-based
roadmap, NOT a feature-based one. Each item connects to a strategic bet and a
measurable outcome.

```
PRODUCT ROADMAP
================
Version: [X.X]
Date: [YYYY-MM-DD]
Strategy Period: [Q1 2026 - Q4 2026]

------------------------------------------------------------
ROADMAP OVERVIEW (ASCII TIMELINE)
------------------------------------------------------------

     NOW (0-3 months)     NEXT (3-9 months)    LATER (9+ months)
     Committed, in        Planned, flexible     Exploratory, may
     progress             on approach           change significantly
    +-------------------+-------------------+-------------------+
    |                   |                   |                   |
    | [Outcome 1]       | [Outcome 4]       | [Outcome 7]       |
    | Bet: [X]          | Bet: [X]          | Bet: [X]          |
    | Status: Active    | Status: Discovery | Status: Ideation  |
    |                   |                   |                   |
    | [Outcome 2]       | [Outcome 5]       | [Outcome 8]       |
    | Bet: [X]          | Bet: [X]          | Bet: [X]          |
    | Status: Active    | Status: Planned   | Status: Ideation  |
    |                   |                   |                   |
    | [Outcome 3]       | [Outcome 6]       |                   |
    | Bet: [X]          | Bet: [X]          |                   |
    | Status: Active    | Status: Planned   |                   |
    |                   |                   |                   |
    +-------------------+-------------------+-------------------+

------------------------------------------------------------
NOW: COMMITTED (0-3 Months)
------------------------------------------------------------
Highest confidence. Specific outcomes with defined approaches.

ITEM [N.1]: [Outcome Name]
  Strategic Bet:     [Which bet this serves]
  Outcome Target:    [Metric: current value -> target value]
  Approach:          [How we plan to achieve this -- high level]
  Team:              [Which team owns this]
  Status:            [Discovery | In Progress | Testing | Shipping]
  Confidence:        [High -- we have validated this approach]
  Key Dependencies:  [What must be true or delivered first]
  Guardrail Metric:  [Metric that must not degrade]
  Decision Point:    [Date: what we'll decide based on what evidence]

------------------------------------------------------------
NEXT: PLANNED (3-9 Months)
------------------------------------------------------------
Medium confidence. Clear outcomes, flexible approaches.

ITEM [N.2]: [Outcome Name]
  Strategic Bet:     [Which bet this serves]
  Outcome Target:    [Metric: target range]
  Opportunity:       [User problem/need being addressed]
  Discovery Status:  [Not started | Early | In progress | Validated]
  Approach Options:  [2-3 possible approaches under consideration]
  Open Questions:    [Key unknowns to resolve in discovery]
  Estimated Effort:  [T-shirt size: S/M/L/XL]

------------------------------------------------------------
LATER: EXPLORATORY (9+ Months)
------------------------------------------------------------
Lower confidence. Strategic opportunity areas, approaches TBD.

ITEM [N.3]: [Opportunity Area Name]
  Strategic Bet:     [Which bet this serves]
  Opportunity:       [Market or user opportunity being explored]
  Why Later:         [What must happen before this becomes actionable]
  Open Questions:    [Major unknowns]
  Early Signal:      [What evidence would move this to NEXT]

------------------------------------------------------------
ROADMAP TRACEABILITY MATRIX
------------------------------------------------------------

| Roadmap Item | Strategic Bet | Outcome Metric      | Horizon | Team   |
|--------------|---------------|---------------------|---------|--------|
| [Item 1]     | [Bet A]       | [Metric + target]   | Now     | [Team] |
| [Item 2]     | [Bet A]       | [Metric + target]   | Now     | [Team] |
| [Item 3]     | [Bet B]       | [Metric + target]   | Now     | [Team] |
| [Item 4]     | [Bet B]       | [Metric + target]   | Next    | [Team] |
| [Item 5]     | [Bet C]       | [Metric + target]   | Next    | [Team] |
| [Item 6]     | [Bet C]       | [Metric + target]   | Later   | [TBD]  |

VALIDATION: Every roadmap item MUST trace to a strategic bet.
Items without strategic traceability should be questioned or removed.
```

---

## Template 4: PMF Scorecard

Use this template to measure and track product-market fit over time.
Run monthly or quarterly depending on company stage.

```
PRODUCT-MARKET FIT SCORECARD
==============================
Date: [YYYY-MM-DD]
Period: [Month/Quarter]
Product: [Product name]
Segment: [User segment being measured]

------------------------------------------------------------
CORE PMF METRICS
------------------------------------------------------------

1. SEAN ELLIS TEST
   Survey date:         [YYYY-MM-DD]
   Sample size:         [N respondents]
   User qualification:  [Who was surveyed -- min. usage criteria]

   Results:
   +-------------------------+--------+--------+
   | Response                | Count  | %      |
   +-------------------------+--------+--------+
   | Very disappointed       | [N]    | [X%]   | <-- TARGET: 40%+
   | Somewhat disappointed   | [N]    | [X%]   |
   | Not disappointed        | [N]    | [X%]   |
   | No longer use           | [N]    | [X%]   |
   +-------------------------+--------+--------+

   PMF Score: [X%]
   Trend: [Up/Down/Stable from last measurement]
   Status: [Below threshold | Approaching | At threshold | Above]

2. RETENTION ANALYSIS
   +----------+--------+--------+--------+--------+--------+
   | Cohort   | Week 1 | Week 4 | Week 8 | Week 12| Week 24|
   +----------+--------+--------+--------+--------+--------+
   | [Month 1]| [X%]   | [X%]   | [X%]   | [X%]   | [X%]  |
   | [Month 2]| [X%]   | [X%]   | [X%]   | [X%]   |        |
   | [Month 3]| [X%]   | [X%]   | [X%]   |         |        |
   +----------+--------+--------+--------+--------+--------+

   Curve Shape:  [Flattening | Slow decline | Cliff]
   Flatten Point: [Week X at Y%]
   Trend:         [Improving | Stable | Degrading]

3. ENGAGEMENT DEPTH
   +---------------------------+---------+---------+--------+
   | Metric                    | Current | Prior   | Trend  |
   +---------------------------+---------+---------+--------+
   | DAU/MAU ratio             | [X%]    | [X%]    | [+/-]  |
   | L7/L30 ratio              | [X%]    | [X%]    | [+/-]  |
   | Core actions / user / wk  | [X]     | [X]     | [+/-]  |
   | Session depth (actions)   | [X]     | [X]     | [+/-]  |
   | Feature breadth / user    | [X]     | [X]     | [+/-]  |
   | Time to first value       | [X min] | [X min] | [+/-]  |
   +---------------------------+---------+---------+--------+

4. GROWTH SIGNALS
   +---------------------------+---------+---------+--------+
   | Metric                    | Current | Prior   | Trend  |
   +---------------------------+---------+---------+--------+
   | Organic acquisition %     | [X%]    | [X%]    | [+/-]  |
   | Referral rate              | [X%]    | [X%]    | [+/-]  |
   | NPS                        | [X]     | [X]     | [+/-]  |
   | Word of mouth mentions     | [X]     | [X]     | [+/-]  |
   +---------------------------+---------+---------+--------+

------------------------------------------------------------
PMF COMPOSITE SCORE
------------------------------------------------------------

| Component              | Weight | Score (1-10) | Weighted |
|------------------------|--------|-------------|----------|
| Sean Ellis score       | 30%    |             |          |
| Retention curve shape  | 25%    |             |          |
| Engagement depth       | 20%    |             |          |
| Growth signals         | 15%    |             |          |
| Qualitative sentiment  | 10%    |             |          |
| TOTAL                  | 100%   |             |          |

PMF Status: [Pre-PMF (<4) | Emerging (4-6) | Solid (6-8) | Strong (8+)]

------------------------------------------------------------
SEGMENT BREAKDOWN
------------------------------------------------------------

| Segment           | Ellis Score | M3 Retention | DAU/MAU | PMF Status |
|-------------------|-------------|--------------|---------|------------|
| [Segment 1]       | [X%]        | [X%]         | [X%]   | [Status]   |
| [Segment 2]       | [X%]        | [X%]         | [X%]   | [Status]   |
| [Segment 3]       | [X%]        | [X%]         | [X%]   | [Status]   |

KEY INSIGHT: PMF is often segment-specific. A product can have strong PMF
with power users and no PMF with casual users. Always segment.

------------------------------------------------------------
ACTION ITEMS
------------------------------------------------------------

Based on scorecard results:
| Priority | Action                              | Owner    | Due Date  |
|----------|-------------------------------------|----------|-----------|
| P0       | [Critical action]                   | [Owner]  | [Date]    |
| P1       | [Important action]                  | [Owner]  | [Date]    |
| P2       | [Improvement action]                | [Owner]  | [Date]    |
```

---

## Template 5: Strategic Risk Register

Use this template to track and manage strategic risks that could undermine
product strategy execution.

```
STRATEGIC RISK REGISTER
=========================
Date: [YYYY-MM-DD]
Review Cadence: Monthly

------------------------------------------------------------
RISK MATRIX
------------------------------------------------------------

  Impact
  (1-5)
    5 |          |          | [R3]     | [R1]     |          |
    4 |          |          |          | [R2]     |          |
    3 |          | [R5]     |          |          |          |
    2 |          |          | [R4]     |          |          |
    1 |          |          |          |          |          |
      +----------+----------+----------+----------+----------+
        1          2          3          4          5
                        Likelihood (1-5)

  Quadrants:
    Impact 4-5, Likelihood 4-5 = CRITICAL (immediate action required)
    Impact 4-5, Likelihood 1-3 = MONITOR CLOSELY (mitigation plan ready)
    Impact 1-3, Likelihood 4-5 = MANAGE ACTIVELY (reduce likelihood)
    Impact 1-3, Likelihood 1-3 = ACCEPT (periodic review)

------------------------------------------------------------
RISK DETAILS
------------------------------------------------------------

RISK [N]: [Risk Name]
  Category:     [Market | Competitive | Technical | Execution | Regulatory]
  Description:  [What could happen]
  Impact:       [1-5] -- [What happens if this materializes]
  Likelihood:   [1-5] -- [Evidence for probability assessment]
  Severity:     [Impact x Likelihood = X]
  Status:       [Active | Mitigated | Materialized | Closed]

  Trigger Signals:
    - [Early warning sign #1]
    - [Early warning sign #2]

  Mitigation Plan:
    - [Action 1: what, who, when]
    - [Action 2: what, who, when]

  Contingency (if risk materializes):
    - [Response action 1]
    - [Response action 2]

  Owner: [Person responsible for monitoring]
  Review Date: [Next review date]

------------------------------------------------------------
RISK SUMMARY TABLE
------------------------------------------------------------

| ID   | Risk Name           | Category    | Impact | Likelihood | Severity | Status    |
|------|---------------------|-------------|--------|------------|----------|-----------|
| R1   | [Name]              | [Category]  | [1-5]  | [1-5]      | [1-25]   | [Status]  |
| R2   | [Name]              | [Category]  | [1-5]  | [1-5]      | [1-25]   | [Status]  |
| R3   | [Name]              | [Category]  | [1-5]  | [1-5]      | [1-25]   | [Status]  |
| R4   | [Name]              | [Category]  | [1-5]  | [1-5]      | [1-25]   | [Status]  |
| R5   | [Name]              | [Category]  | [1-5]  | [1-5]      | [1-25]   | [Status]  |
```

---

## Template 6: Cross-Agent Handoff Format

Use this template when passing strategic context to other agents in the
multi-agent system (Spec Writer, Product Designer, Growth Designer, etc.).

```
STRATEGIC HANDOFF
==================
From: Product Strategist
To: [Receiving Agent Role]
Date: [YYYY-MM-DD]
Priority: [P0 | P1 | P2]

------------------------------------------------------------
CONTEXT SUMMARY
------------------------------------------------------------

Strategic Bet:      [Which bet this work serves]
Outcome Target:     [Metric: current -> target]
User Segment:       [Who this is for]
Problem Statement:  [In user language]
Solution Direction: [Validated approach from discovery]

------------------------------------------------------------
KEY CONSTRAINTS
------------------------------------------------------------

| Constraint Type    | Detail                                       |
|--------------------|----------------------------------------------|
| Timeline           | [Hard deadline or flexible]                   |
| Budget             | [Resource constraints]                        |
| Technical          | [Architecture, platform, integration limits]  |
| Brand              | [Voice, positioning, visual constraints]       |
| Legal/Compliance   | [Regulatory requirements]                     |
| Dependencies       | [What must exist before this can ship]         |

------------------------------------------------------------
VALIDATED EVIDENCE
------------------------------------------------------------

Discovery Findings:
  - [Finding 1 with evidence type and confidence]
  - [Finding 2 with evidence type and confidence]
  - [Finding 3 with evidence type and confidence]

Risk Status:
  Value:       [Validated | Partially validated | Unvalidated]
  Usability:   [Validated | Partially validated | Unvalidated]
  Feasibility: [Validated | Partially validated | Unvalidated]
  Viability:   [Validated | Partially validated | Unvalidated]

------------------------------------------------------------
REQUESTED OUTPUT
------------------------------------------------------------

[Specific artifact or action requested from receiving agent]

Success Criteria:
  - [What "done" looks like for this handoff]
  - [Quality bar or acceptance criteria]

------------------------------------------------------------
FEEDBACK LOOP
------------------------------------------------------------

Return findings to Product Strategist when:
  - [Condition 1: e.g., technical feasibility changes]
  - [Condition 2: e.g., design reveals new user insights]
  - [Condition 3: e.g., implementation uncovers scope issues]
```

---

## Stage-Gated Guidance

Adapt outputs to the venture's current stage. For pre-launch: use hypothesis-driven language, note where user research is needed, and avoid assuming conversion metrics or cohort data exist.

---

## Quality Checklist for All Output

Before finalizing any product strategy artifact, validate against this checklist:

```
QUALITY CHECKLIST
==================

STRATEGIC ALIGNMENT
[ ] Every roadmap item traces to a strategic bet
[ ] Every strategic bet traces to product strategy
[ ] Product strategy traces to company strategy and mission
[ ] Non-goals are explicitly stated
[ ] Tradeoffs are documented with reasoning

EVIDENCE-BASED
[ ] Claims are supported by data, research, or market evidence
[ ] Confidence levels are stated honestly (not inflated)
[ ] Assumptions are explicitly called out
[ ] Risk assessments use the four-risk framework
[ ] PMF metrics are current (measured within last quarter)

ACTIONABLE
[ ] Each item has a clear owner
[ ] Success metrics have specific targets and timeframes
[ ] Decision points are defined (when to pivot vs. persevere)
[ ] Dependencies are mapped and communicated
[ ] Timeline is realistic given team capacity

COMMUNICABLE
[ ] A non-product person can understand the strategy
[ ] Visuals (roadmap, trees, matrices) are included where helpful
[ ] Jargon is minimized or explained
[ ] The "why" is as clear as the "what"
[ ] Stakeholder-specific concerns are addressed

COMPLETE
[ ] All sections of the relevant template are filled in
[ ] Scoring is complete with weighted totals
[ ] Risk register is current
[ ] Handoff format includes all necessary context
[ ] Measurement framework defines both leading and lagging indicators
```

---

## Scoring System Reference

### Universal Scoring Scales

**Impact Score (1-10)**:
| Score | Meaning                                                    |
|-------|------------------------------------------------------------|
| 9-10  | Transformative: changes market position or creates new market|
| 7-8   | Major: significantly moves primary business metric          |
| 5-6   | Moderate: measurable improvement to key metrics             |
| 3-4   | Minor: incremental improvement, limited scope               |
| 1-2   | Negligible: minimal measurable impact                       |

**Confidence Score (1-10)**:
| Score | Meaning                                                    |
|-------|------------------------------------------------------------|
| 9-10  | Validated: multiple experiments confirm with strong data     |
| 7-8   | Strong signal: one validated experiment + supporting data    |
| 5-6   | Moderate signal: qualitative evidence + some quantitative    |
| 3-4   | Weak signal: anecdotal evidence, limited data                |
| 1-2   | Hypothesis only: no evidence yet                             |

**Effort Score (1-10, inverted: higher = easier)**:
| Score | Meaning                                                    |
|-------|------------------------------------------------------------|
| 9-10  | Trivial: days of work, no new capabilities needed           |
| 7-8   | Small: 1-2 weeks, existing team can handle                  |
| 5-6   | Medium: 1-2 months, may need additional skills              |
| 3-4   | Large: quarter+ of work, significant resource investment     |
| 1-2   | Massive: multi-quarter, requires new team or capabilities    |

**Risk Score (1-5, inverted: higher = lower risk)**:
| Score | Meaning                                                    |
|-------|------------------------------------------------------------|
| 5     | Well-validated: strong evidence this risk is mitigated      |
| 4     | Mostly validated: good evidence, minor unknowns remain      |
| 3     | Partially validated: some evidence, significant unknowns    |
| 2     | Lightly validated: limited evidence, many unknowns          |
| 1     | Unvalidated: no evidence, this is a guess                   |

---

## Decision Framework: Prioritization Matrix

When multiple opportunities compete for resources, use this weighted scoring
matrix to force-rank them:

```
PRIORITIZATION MATRIX
======================

| Opportunity | Impact | Confidence | Effort | Strategic | Compounding | TOTAL |
|             | (30%)  | (25%)      | (20%)  | Fit (15%) | Value (10%) |       |
|-------------|--------|------------|--------|-----------|-------------|-------|
| [Opp 1]     | [1-10] | [1-10]     | [1-10] | [1-10]    | [1-10]      |       |
| [Opp 2]     | [1-10] | [1-10]     | [1-10] | [1-10]    | [1-10]      |       |
| [Opp 3]     | [1-10] | [1-10]     | [1-10] | [1-10]    | [1-10]      |       |
| [Opp 4]     | [1-10] | [1-10]     | [1-10] | [1-10]    | [1-10]      |       |
| [Opp 5]     | [1-10] | [1-10]     | [1-10] | [1-10]    | [1-10]      |       |

TOTAL = (Impact * 0.30) + (Confidence * 0.25) + (Effort * 0.20)
      + (Strategic Fit * 0.15) + (Compounding * 0.10)

RULE: Top 3 get resourced. The rest go to the "Next" or "Later" horizon.
Any opportunity scoring below 5.0 overall should be questioned.
```

---

## AI Agent Execution Notes

When the AI agent system generates these artifacts:

1. **Always populate with real data where available.** Do not leave placeholders
   when the information can be researched or calculated from context.

2. **Flag low-confidence sections.** When the agent lacks data, explicitly state
   "LOW CONFIDENCE: This estimate is based on [limited source]. Recommend
   validating with [specific method]."

3. **Generate multiple versions for different audiences.** The executive summary
   differs from the detailed team version. Produce both as separate artifacts.

4. **Maintain version history.** Each artifact update should note what changed
   and why. Strategy documents evolve -- track the evolution.

5. **Cross-reference across templates.** A strategic bet in the Strategy Document
   should appear in the Roadmap, have an Opportunity Assessment, show up in the
   PMF Scorecard measurement plan, and be tracked in the Risk Register. Ensure
   consistency across all artifacts.

6. **Use scoring systems consistently.** The same 1-10 scale definitions apply
   across all templates. Do not inflate scores. A "7" means the same thing in
   the Opportunity Assessment as in the Prioritization Matrix.

7. **Surface conflicts proactively.** If two roadmap items compete for the same
   team or if a strategic bet contradicts a product principle, flag it explicitly
   rather than silently ignoring the tension.
