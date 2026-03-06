# The Experiment Designer: Output Template

> **Stage-Gated Guidance:** Adapt outputs to the venture's current stage. For pre-launch/idea-stage ventures: use simulated data clearly labeled [SIMULATED], focus on assumptions over metrics, and note where real data is needed before acting.

## Purpose

This template defines the structured output format for every Experiment Designer
engagement. All outputs follow this exact structure to ensure consistency,
actionability, and machine-readability for cross-agent communication.

---

## Complete Output Structure

```
OUTPUT SECTIONS (in order):
===========================
1. Assumption Inventory
2. Prioritized Test Backlog
3. Experiment Cards (3-5 detailed)
4. Testing Roadmap
5. Evidence Dashboard
6. Pivot/Persevere Decision Framework
7. Quality Checklist
```

---

## Section 1: Assumption Inventory

### Purpose
Extract every testable assumption from the user's business model, value
proposition, or business plan. Categorize and score each one.

### Format

```
================================================================
ASSUMPTION INVENTORY
================================================================
Business: [Name/Description]
Source: [BMC / VPC / Business Plan / User Description]
Date: [YYYY-MM-DD]
Total Assumptions Extracted: [N]
================================================================

ID    | Category | Assumption                | Importance | Uncertainty | Risk Score | Evidence
      |          |                           | (1-5)      | (1-5)       | (IxU)      | Level
------+----------+---------------------------+------------+-------------+------------+---------
D-01  | Desir.   | [Assumption text]         | 5          | 5           | 25         | None
D-02  | Desir.   | [Assumption text]         | 5          | 4           | 20         | Weak
D-03  | Desir.   | [Assumption text]         | 4          | 5           | 20         | None
V-01  | Viab.    | [Assumption text]         | 4          | 4           | 16         | None
V-02  | Viab.    | [Assumption text]         | 3          | 5           | 15         | None
F-01  | Feas.    | [Assumption text]         | 4          | 3           | 12         | Weak
...   | ...      | ...                       | ...        | ...         | ...        | ...

================================================================
RISK DISTRIBUTION SUMMARY
================================================================
Critical (20-25):  [N] assumptions  --> Test immediately
High (15-19):      [N] assumptions  --> Test this sprint
Medium (10-14):    [N] assumptions  --> Test next sprint
Low (5-9):         [N] assumptions  --> Monitor
Negligible (1-4):  [N] assumptions  --> Accept risk
================================================================
```

### Scoring Instructions

**Importance (1-5):**
| Score | Criteria                                                    |
|-------|-------------------------------------------------------------|
| 5     | If wrong, entire business model fails                       |
| 4     | If wrong, business model is severely impaired               |
| 3     | If wrong, significant revenue or growth impact              |
| 2     | If wrong, minor operational inconvenience                   |
| 1     | If wrong, negligible impact                                 |

**Uncertainty (1-5):**
| Score | Criteria                                                    |
|-------|-------------------------------------------------------------|
| 5     | Pure speculation — zero evidence                            |
| 4     | Anecdotal — gut feel or 1-2 data points                     |
| 3     | Directional — some qualitative evidence                     |
| 2     | Supported — limited quantitative evidence                   |
| 1     | Validated — strong evidence from multiple sources           |

**Evidence Level:**
| Level       | Definition                                               |
|-------------|----------------------------------------------------------|
| None        | No evidence gathered                                     |
| Very Weak   | Desk research only (opinions, secondary data)            |
| Weak        | Exploration data (interviews, observations)              |
| Medium      | Interest signals (landing page, ad clicks, survey data)  |
| Strong      | Behavioral evidence (pre-sales, concierge, MVP usage)    |
| Very Strong | Market evidence (revenue, retention, referral data)      |

### Extraction Checklist

When extracting assumptions from user inputs, systematically check:

- [ ] Customer segment assumptions (who are we serving?)
- [ ] Problem/pain assumptions (what problem do they have?)
- [ ] Solution assumptions (does our solution address the problem?)
- [ ] Channel assumptions (can we reach them?)
- [ ] Revenue assumptions (will they pay? how much?)
- [ ] Cost assumptions (can we deliver profitably?)
- [ ] Competition assumptions (why us over alternatives?)
- [ ] Growth assumptions (how do we acquire new customers?)
- [ ] Retention assumptions (will customers come back?)
- [ ] Partnership assumptions (will key partners collaborate?)
- [ ] Technology assumptions (can we build this?)
- [ ] Regulatory assumptions (is this allowed?)

---

## Section 2: Prioritized Test Backlog

### Purpose
Score and rank experiments for the top assumptions using ICE or RICE
frameworks. Present a clear, ordered list of what to test next.

### ICE Format (Use for Discovery Phase / < 10 experiments)

```
================================================================
PRIORITIZED TEST BACKLOG (ICE Scoring)
================================================================
Scoring: Impact (1-10) x Confidence (1-10) x Ease (1-10)
================================================================

Rank | Assumption | Experiment Type       | I  | C  | E  | ICE  | Sprint
-----+------------+-----------------------+----+----+----+------+-------
  1  | D-01       | Customer Interviews   | 8  | 7  | 9  | 504  | 1
  2  | D-03       | Landing Page Test     | 9  | 6  | 7  | 378  | 1
  3  | D-02       | Smoke Test (Ad)       | 7  | 6  | 8  | 336  | 1
  4  | V-01       | Pre-Sale Test         | 9  | 5  | 5  | 225  | 2
  5  | V-02       | Competitor Analysis   | 5  | 8  | 9  | 360  | 1 *
  ...

* Re-ranked due to dependency: V-02 desk research runs parallel to sprint 1
================================================================
```

### RICE Format (Use for Validation Phase / 10+ experiments)

```
================================================================
PRIORITIZED TEST BACKLOG (RICE Scoring)
================================================================
Scoring: (Reach x Impact x Confidence%) / Effort (person-weeks)
================================================================

Rank | Assumption | Experiment Type       | R   | I   | C%  | E   | RICE  | Sprint
-----+------------+-----------------------+-----+-----+-----+-----+-------+-------
  1  | D-01       | Landing Page (500 vis)| 500 | 1.0 | 80% | 1.0 | 400.0 | 1
  2  | D-02       | Survey (200 resp.)    | 200 | 0.5 | 80% | 0.5 | 160.0 | 1
  3  | D-03       | Interviews (15)       | 15  | 2.0 | 80% | 2.0 | 12.0  | 1
  4  | V-01       | Pre-Sale (100 leads)  | 100 | 3.0 | 50% | 2.0 | 75.0  | 2
  5  | F-01       | Prototype Test (20)   | 20  | 2.0 | 50% | 4.0 | 5.0   | 3
  ...

================================================================
```

### Scoring Calibration Rules

To prevent score inflation, enforce these constraints:

- Maximum 20% of experiments can score 8+ on Impact
- Maximum 20% of experiments can score 8+ on Confidence
- Confidence cannot be 8+ unless based on data from comparable experiments
- Ease 8+ requires the experiment can be completed in < 3 days
- If all ICE scores cluster within 10% of each other, force-rank and re-score

---

## Section 3: Experiment Cards (3-5 Detailed)

### Purpose
Provide fully detailed, ready-to-execute experiment cards for the top 3-5
prioritized experiments.

### Experiment Card Format

```
+================================================================+
|                  EXPERIMENT CARD #[N]                           |
|                  Priority: [1-5] of [total]                    |
|                  Assumption: [ID from inventory]               |
+================================================================+
|                                                                 |
| HYPOTHESIS                                                      |
| ----------------------------------------------------------------|
| We believe that [specific customer segment]                     |
| will [specific expected behavior]                               |
| when [specific condition or trigger]                            |
| because [evidence or reasoning supporting this belief].         |
|                                                                 |
| FALSIFICATION: This hypothesis is WRONG if                      |
| [specific metric] is below [specific threshold].                |
|                                                                 |
+----------------------------------------------------------------+
|                                                                 |
| TEST DESIGN                                                     |
| ----------------------------------------------------------------|
| Experiment Type: [from Strategyzer library]                     |
| Description:                                                    |
|   Step 1: [specific action]                                     |
|   Step 2: [specific action]                                     |
|   Step 3: [specific action]                                     |
|   Step 4: [specific action]                                     |
|                                                                 |
| Duration: [specific time box, e.g., "7 days max"]              |
| Budget: [specific dollar amount or "No budget needed"]          |
| Team: [who is responsible, e.g., "1 person, 4 hours/day"]      |
| Tools: [what is needed — generic descriptions, no brand names]  |
|                                                                 |
+----------------------------------------------------------------+
|                                                                 |
| METRICS                                                         |
| ----------------------------------------------------------------|
| Primary Metric: [the single most important measurement]         |
|   Data Source: [how this will be collected]                      |
|   Sample Size: [minimum for statistical validity]               |
|                                                                 |
| Secondary Metric(s):                                            |
|   - [additional measurement 1]                                  |
|   - [additional measurement 2]                                  |
|                                                                 |
+----------------------------------------------------------------+
|                                                                 |
| PASS/FAIL CRITERIA (set BEFORE experiment runs)                 |
| ----------------------------------------------------------------|
| VALIDATED:     [primary metric] >= [threshold]                  |
| INVALIDATED:   [primary metric] < [threshold]                   |
| INCONCLUSIVE:  [conditions, e.g., "sample size < minimum"]      |
|                                                                 |
| Threshold Rationale: [why this number, benchmarks used]         |
|                                                                 |
+----------------------------------------------------------------+
|                                                                 |
| EVIDENCE ASSESSMENT                                             |
| ----------------------------------------------------------------|
| Evidence Strength: [Very Weak / Weak / Medium / Strong / V.Strong]|
| Sufficient For: [what decision this evidence supports]          |
| Not Sufficient For: [what decisions require stronger evidence]  |
|                                                                 |
+----------------------------------------------------------------+
|                                                                 |
| RESULTS (completed after experiment)                            |
| ----------------------------------------------------------------|
| Status: [NOT STARTED / IN PROGRESS / COMPLETED]                 |
| Primary Metric Result: [actual number]                          |
| Secondary Metric Results: [actual numbers]                      |
| Outcome: [VALIDATED / INVALIDATED / INCONCLUSIVE]               |
| Key Insight: [most important learning]                          |
| Unexpected Finding: [anything surprising]                       |
| Recommended Next Action: [specific next step]                   |
|                                                                 |
+================================================================+
```

### Card Quality Standards

Each experiment card MUST include:
- [ ] A specific, falsifiable hypothesis (not "people will like it")
- [ ] A numeric pass/fail threshold defined BEFORE the experiment
- [ ] A maximum duration (time box)
- [ ] A minimum sample size for validity
- [ ] A clear description of what "INVALIDATED" looks like
- [ ] Evidence strength rating and what decisions it enables
- [ ] Step-by-step execution instructions (not just "run a landing page")

---

## Section 4: Testing Roadmap

### Purpose
Show the sequence of experiments across sprints, with dependencies
and parallel tracks clearly mapped.

### Format

```
================================================================
TESTING ROADMAP
================================================================
Sprint Duration: 2 weeks each
Total Planned Sprints: [N]
================================================================

SPRINT 1 (Weeks 1-2): DISCOVERY
================================
Goal: Validate core desirability assumptions

  Track A (Desk Research):      Track B (Exploration):
  [Exp #1: Competitor Analysis] [Exp #2: Customer Interviews x15]
  Days 1-3                      Days 1-10
  Assumption: D-01              Assumption: D-02, D-03
       |                              |
       v                              v
  Results feed into Sprint 2    Results feed into Sprint 2

  Track C (Interest):
  [Exp #3: Search Trend Analysis]
  Days 1-2
  Assumption: V-01
       |
       v
  Results feed into Sprint 2

Sprint 1 Decision Gate:
  - IF D-01, D-02, D-03 validated --> Proceed to Sprint 2
  - IF D-01 invalidated --> PIVOT (revisit customer segment)
  - IF D-02 invalidated --> Redesign value proposition
  - IF D-03 invalidated --> Explore alternative solutions

SPRINT 2 (Weeks 3-4): VALIDATION
==================================
Goal: Validate solution interest and willingness to pay

  Track A (Pitch):              Track B (Smoke Test):
  [Exp #4: Landing Page Test]   [Exp #5: Ad Campaign]
  Days 1-14                     Days 1-14
  Assumption: D-04              Assumption: D-05
  Depends on: Sprint 1 results  Depends on: Sprint 1 results
       |                              |
       v                              v
  Results feed into Sprint 3    Results feed into Sprint 3

Sprint 2 Decision Gate:
  - IF D-04, D-05 validated --> Proceed to Sprint 3
  - IF D-04 invalidated --> PIVOT (revisit solution design)
  - IF D-05 invalidated --> Test different channels

SPRINT 3 (Weeks 5-8): DEEP VALIDATION
=======================================
Goal: Validate value delivery and unit economics

  [Exp #6: Concierge MVP]
  Weeks 5-8
  Assumptions: D-06, V-01, V-02
  Depends on: Sprint 2 results

Sprint 3 Decision Gate:
  - IF all validated --> Proceed to build MVP
  - IF V-01 invalidated --> PIVOT (revisit pricing/revenue model)
  - IF D-06 invalidated --> PIVOT (revisit value proposition)

================================================================
DEPENDENCY MAP
================================================================

  [Exp 1] --+
             +--> [Exp 4] --+--> [Exp 6]
  [Exp 2] --+               |
             +--> [Exp 5] --+
  [Exp 3] -------> [Exp 5]

Legend: --> = "results required before starting"
================================================================
```

---

## Section 5: Evidence Dashboard

### Purpose
Track the cumulative state of evidence across all assumptions. This is
a living document updated after each experiment completes.

### Format

```
================================================================
EVIDENCE DASHBOARD
================================================================
Last Updated: [YYYY-MM-DD]
Overall Confidence: [Low / Medium / High]
================================================================

DESIRABILITY ASSUMPTIONS
-------------------------
D-01: "Customers have problem X"
  Evidence Level: [====------] Strong (4/5)
  Experiments Run: Interview x15, Survey x200
  Status: VALIDATED
  Key Evidence: 12/15 interviewees described problem unprompted

D-02: "Customers will pay $29/mo"
  Evidence Level: [==--------] Medium (2/5)
  Experiments Run: Landing page (conversion 4.2%)
  Status: IN PROGRESS
  Key Evidence: Above 2% threshold but below 5% target
  Next Test: Pre-sale experiment (Sprint 3)

D-03: "Target segment is reachable via social media"
  Evidence Level: [=---------] Weak (1/5)
  Experiments Run: Ad campaign (CTR 0.8%)
  Status: AT RISK
  Key Evidence: Below 1.5% CTR threshold
  Next Test: Alternative channel test (Sprint 2)

VIABILITY ASSUMPTIONS
----------------------
V-01: "CAC < $50"
  Evidence Level: [----------] None (0/5)
  Experiments Run: None
  Status: NOT TESTED
  Next Test: Channel cost analysis (Sprint 2)

FEASIBILITY ASSUMPTIONS
-------------------------
F-01: "Technology can be built in 3 months"
  Evidence Level: [=---------] Weak (1/5)
  Experiments Run: Technical spike (2 days)
  Status: MONITORING
  Key Evidence: Core algorithm works in prototype

================================================================
AGGREGATE SCORECARD
================================================================

                Validated  In Progress  At Risk  Not Tested
Desirability:   [3]        [2]          [1]      [0]
Viability:      [0]        [1]          [0]      [2]
Feasibility:    [0]        [0]          [0]      [1]
                ----       ----         ----     ----
Total:          3          3            1        3

Go/No-Go Readiness: 30% (3 of 10 critical assumptions validated)
================================================================
```

### Evidence Level Visualization

```
Evidence Level Scale:
[----------] None     (0/5) - No experiments run
[=---------] Very Weak(1/5) - Desk research only
[==--------] Weak     (2/5) - Qualitative data (interviews)
[====------] Medium   (3/5) - Quantitative interest signals
[======----] Strong   (4/5) - Behavioral evidence (pre-sales, usage)
[==========] V.Strong (5/5) - Market evidence (revenue, retention)
```

---

## Section 6: Pivot/Persevere Decision Framework

### Purpose
After each testing sprint, provide a structured decision recommendation
based on accumulated evidence.

### Format

```
================================================================
PIVOT / PERSEVERE ANALYSIS
================================================================
Sprint Completed: [N]
Date: [YYYY-MM-DD]
================================================================

EVIDENCE SUMMARY
-----------------
Assumptions Tested This Sprint: [N]
  - Validated: [N] ([list IDs])
  - Invalidated: [N] ([list IDs])
  - Inconclusive: [N] ([list IDs])

Cumulative Evidence:
  - Total assumptions: [N]
  - Validated: [N] ([%])
  - Invalidated: [N] ([%])
  - Remaining: [N] ([%])

CRITICAL INVALIDATIONS
-----------------------
[List any invalidated assumptions with Risk Score >= 15]

  [ID]: [Assumption text]
  Evidence: [What the experiment showed]
  Severity: [Does this kill the model or just wound it?]
  Pivot Options:
    Option A: [Specific alternative direction]
    Option B: [Specific alternative direction]

RECOMMENDATION
--------------
[ ] PERSEVERE - Continue current direction
    Rationale: [Why the evidence supports continuing]
    Next Sprint Focus: [What to test next]

[ ] PIVOT - Change direction
    Pivot Type: [Zoom-in / Zoom-out / Customer Segment / etc.]
    Rationale: [Why the evidence demands change]
    New Hypothesis: [What the pivot tests instead]
    New Sprint 1 Experiments: [What to test first in new direction]

[ ] KILL - Abandon this idea
    Rationale: [Why the core assumptions are fundamentally wrong]
    Evidence: [Specific data points]
    Recommendation: [What to do instead]

CONFIDENCE IN RECOMMENDATION: [Low / Medium / High]
Based on: [N] experiments, [N] data points, [N] customer interactions
================================================================
```

### Decision Criteria

| Signal                               | Recommendation           |
|--------------------------------------|--------------------------|
| All D assumptions validated          | PERSEVERE to viability   |
| Core D assumption invalidated        | PIVOT or KILL            |
| D validated, V invalidated           | PIVOT (revenue model)    |
| D+V validated, F invalidated         | PIVOT (technology)       |
| All assumptions validated            | GO — build and scale     |
| 3+ critical assumptions invalidated  | KILL — save resources    |
| Mixed signals, small sample          | PERSEVERE — test more    |
| Metrics trending down over sprints   | PIVOT                    |

---

## Section 7: Quality Checklist

### Pre-Delivery Checklist

Before delivering any Experiment Designer output, verify all items:

**Assumption Inventory:**
- [ ] All BMC/VPC building blocks checked for assumptions
- [ ] Every assumption categorized (D/V/F)
- [ ] Every assumption scored (Importance x Uncertainty)
- [ ] No duplicate assumptions
- [ ] Assumptions are specific and falsifiable (not vague)
- [ ] Risk distribution summary included
- [ ] At least 8-15 assumptions extracted (fewer = incomplete extraction)

**Prioritized Test Backlog:**
- [ ] Scoring framework specified (ICE or RICE)
- [ ] All scores justified (no unexplained 10s)
- [ ] Score inflation check: <= 20% of items score 8+ on any dimension
- [ ] Experiments mapped to specific assumptions
- [ ] Sprint assignments included
- [ ] Dependencies noted

**Experiment Cards:**
- [ ] 3-5 cards provided (minimum 3)
- [ ] Every card has a specific, falsifiable hypothesis
- [ ] Every card has a numeric pass/fail threshold set BEFORE the experiment
- [ ] Every card has a maximum duration (time box)
- [ ] Every card has a minimum sample size
- [ ] Every card has step-by-step execution instructions
- [ ] Evidence strength rated and decision scope defined
- [ ] Cheapest sufficient experiment selected (not over-engineered)

**Testing Roadmap:**
- [ ] Sprint structure defined (2-week sprints recommended)
- [ ] Parallel tracks identified where possible
- [ ] Dependencies mapped
- [ ] Decision gates defined at each sprint boundary
- [ ] Pivot triggers specified at each gate

**Evidence Dashboard:**
- [ ] All assumptions listed with current evidence level
- [ ] Status clearly marked (Validated / In Progress / At Risk / Not Tested)
- [ ] Aggregate scorecard included
- [ ] Go/No-Go readiness percentage calculated

**Pivot/Persevere Framework:**
- [ ] Recommendation provided (Persevere / Pivot / Kill)
- [ ] Rationale tied to specific evidence
- [ ] If Pivot: type specified and new direction proposed
- [ ] Confidence in recommendation stated

**Overall Quality:**
- [ ] Desirability assumptions tested before viability
- [ ] Viability assumptions tested before feasibility
- [ ] No experiment recommended without a matching assumption
- [ ] Evidence escalation followed (cheap before expensive)
- [ ] All pass/fail criteria use industry benchmarks where available
- [ ] Real examples referenced where relevant
- [ ] Output is immediately actionable (not vague advice)

---

## Formatting Standards

### For AI Agent Systems

When this output is consumed by other agents in a multi-agent system:

1. **Structured Data:** Use the exact table and card formats above so
   downstream agents can parse assumption IDs, scores, and statuses.

2. **Signal Emission:** After each experiment result, emit one of:
   - `SIGNAL: VALIDATED [Assumption ID] [Evidence Level] [Confidence %]`
   - `SIGNAL: INVALIDATED [Assumption ID] [Evidence Level] [Confidence %]`
   - `SIGNAL: INCONCLUSIVE [Assumption ID] [Reason]`

3. **Cross-References:** Always reference assumption IDs (D-01, V-02, etc.)
   rather than prose descriptions when communicating results.

4. **Decision Gates:** Emit decision gate signals after each sprint:
   - `GATE: PERSEVERE [Sprint N] [Rationale Summary]`
   - `GATE: PIVOT [Sprint N] [Pivot Type] [New Direction]`
   - `GATE: KILL [Sprint N] [Rationale Summary]`

5. **Artifact Creation:** All outputs should be generated as structured
   artifacts that can be referenced, updated, and shared across the
   agent system.

---

## Sources and Attribution

- Bland, D.J. & Osterwalder, A. (2019). "Testing Business Ideas." Wiley.
- Strategyzer Test Card: https://www.strategyzer.com/library/validate-your-ideas-with-the-test-card
- Strategyzer Learning Card methodology
- Ellis, S. & Brown, M. (2017). "Hacking Growth." Crown Business.
- Intercom RICE framework: https://www.intercom.com/blog/rice-simple-prioritization-for-product-managers/
- Ries, E. (2011). "The Lean Startup." Crown Business.
- Osterwalder, A. & Pigneur, Y. (2010). "Business Model Generation." Wiley.
