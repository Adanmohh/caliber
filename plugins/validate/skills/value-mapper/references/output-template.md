# Value Mapper — Output Template

> **Stage-Gated Guidance:** Adapt outputs to the venture's current stage. For pre-launch/idea-stage ventures: use simulated data clearly labeled [SIMULATED], focus on assumptions over metrics, and note where real data is needed before acting.

This template defines the structured output format for every Value Mapper
engagement. Each section is mandatory. Scoring systems, quality checklists,
and handoff protocols ensure consistency and downstream usability.

---

## OUTPUT STRUCTURE OVERVIEW

```
COMPLETE VALUE ARCHITECT OUTPUT:

1. Engagement Summary
2. Customer Profile Analysis
3. Job Map
4. Value Proposition Canvas
5. Fit Assessment (scored)
6. Key Hypotheses to Validate
7. Simulated Interview Findings (always include; label simulated data as [SIMULATED])
8. Competitive Landscape
9. Recommendations
10. Handoff to Next Phase
11. Quality Checklist
```

---

## SECTION 1: ENGAGEMENT SUMMARY

```
================================================================
ENGAGEMENT SUMMARY
================================================================

Date:           [YYYY-MM-DD]
Domain:         [Product/market domain]
Client/User:    [Who requested this analysis]
Objective:      [What the user wants to achieve]

Scope:
- Customer segments analyzed: [Number and names]
- Competitors evaluated:      [Number]
- Data sources used:          [List]
- Research methods:           [Web mining | Simulated interviews |
                               Existing data | Survey data]

Key Finding (one sentence):
[The single most important insight from this analysis]

Confidence Level: [High | Medium | Low]
Rationale:        [Why this confidence level]
================================================================
```

---

## SECTION 2: CUSTOMER PROFILE ANALYSIS

Complete one Customer Profile per segment. If multiple segments, number
them (Segment 1, Segment 2, etc.).

```
================================================================
CUSTOMER PROFILE — SEGMENT [N]: [Segment Name]
================================================================

SEGMENT DESCRIPTION:
[2-3 sentences describing who this customer is, their context, and
why they matter to the value proposition]

Estimated Segment Size: [Range or order of magnitude]
Current Solutions Used:  [What they hire today]
Willingness to Switch:   [High | Medium | Low] — based on forces analysis

---

CUSTOMER JOBS (ranked by Importance):

| #  | Job Statement                              | Type       | Imp | Sat | Opp Score | Source      |
|----|-------------------------------------------|------------|-----|-----|-----------|-------------|
| J1 | [Verb + object + context]                 | Functional | [1-5]|[1-5]| [calc]   | [evidence]  |
| J2 | [Verb + object + context]                 | Functional | [1-5]|[1-5]| [calc]   | [evidence]  |
| J3 | [How customer wants to feel]              | Emotional  | [1-5]|[1-5]| [calc]   | [evidence]  |
| J4 | [How customer wants to be perceived]      | Social     | [1-5]|[1-5]| [calc]   | [evidence]  |
| J5 | [Additional job if relevant]              | [Type]     | [1-5]|[1-5]| [calc]   | [evidence]  |

Opportunity Score formula: Imp + MAX(Imp - Sat, 0)
Interpretation: 8-10 = Underserved | 5-7 = Served | 0-4 = Overserved

---

CUSTOMER PAINS (ranked by severity):

| #  | Pain Description                           | Severity   | Imp | Sat | Opp Score | Source      |
|----|-------------------------------------------|------------|-----|-----|-----------|-------------|
| P1 | [Specific negative experience]            | Extreme    | [1-5]|[1-5]| [calc]   | [evidence]  |
| P2 | [Specific negative experience]            | Extreme    | [1-5]|[1-5]| [calc]   | [evidence]  |
| P3 | [Specific negative experience]            | Moderate   | [1-5]|[1-5]| [calc]   | [evidence]  |
| P4 | [Specific negative experience]            | Moderate   | [1-5]|[1-5]| [calc]   | [evidence]  |
| P5 | [Specific negative experience]            | Minor      | [1-5]|[1-5]| [calc]   | [evidence]  |

Severity definitions:
- Extreme: Blocks the job entirely or causes serious harm
- Moderate: Makes the job harder, slower, or more expensive
- Minor:   Annoys but doesn't materially affect outcomes

---

CUSTOMER GAINS (ranked by desirability):

| #  | Gain Description                           | Type       | Imp | Sat | Opp Score | Source      |
|----|-------------------------------------------|------------|-----|-----|-----------|-------------|
| G1 | [Desired outcome or benefit]              | Required   | [1-5]|[1-5]| [calc]   | [evidence]  |
| G2 | [Desired outcome or benefit]              | Expected   | [1-5]|[1-5]| [calc]   | [evidence]  |
| G3 | [Desired outcome or benefit]              | Desired    | [1-5]|[1-5]| [calc]   | [evidence]  |
| G4 | [Desired outcome or benefit]              | Desired    | [1-5]|[1-5]| [calc]   | [evidence]  |
| G5 | [Desired outcome or benefit]              | Unexpected | [1-5]|[1-5]| [calc]   | [evidence]  |

Gain types:
- Required:   Without this, the solution doesn't work at all
- Expected:   Basic gains customers assume they will get
- Desired:    Gains customers would love but don't expect
- Unexpected: Gains beyond what customers imagine
================================================================
```

---

## SECTION 2B: NON-CONSUMPTION ANALYSIS

Analyze the people who choose to do nothing or use unsuitable workarounds
rather than adopt existing solutions. Non-consumers often have the strongest
unmet needs and represent untapped market opportunity.

```
================================================================
NON-CONSUMPTION ANALYSIS
================================================================

WHO CHOOSES NOT TO CONSUME:
[2-3 sentences describing the non-consumption population and their
context — why they are aware of solutions but choose not to adopt]

REASONS FOR NON-CONSUMPTION:

| # | Barrier                                    | Type          | Addressability |
|---|-------------------------------------------|---------------|----------------|
| 1 | [Specific reason people don't adopt]       | [Cost/Complexity/Access/Trust/Awareness] | [High/Medium/Low] |
| 2 | [Specific reason]                          | [Type]        | [Addressability] |
| 3 | [Specific reason]                          | [Type]        | [Addressability] |
| 4 | [Specific reason]                          | [Type]        | [Addressability] |

Barrier types:
- Cost: Price exceeds perceived value or budget
- Complexity: Too difficult to learn, set up, or use
- Access: Not available in their channel, region, or format
- Trust: Skepticism about claims, safety, or reliability
- Awareness: Don't know solutions exist or that the problem is solvable

Addressability:
- High: Our value proposition directly removes this barrier
- Medium: Addressable with modifications to our offering
- Low: Structural barrier we cannot easily overcome

ESTIMATED NON-CONSUMPTION MARKET SIZE:
[Order of magnitude or range — how many people are not consuming?]

IMPLICATION FOR VALUE PROPOSITION:
[1-2 sentences: what would we need to change to capture non-consumers?]
================================================================
```

---

## SECTION 3: JOB MAP

Break the main job into process steps using the Universal Job Map framework.

```
================================================================
JOB MAP — [Main Job Statement]
================================================================

+--------+--------+--------+--------+--------+--------+--------+--------+
| DEFINE | LOCATE | PREPARE| CONFIRM| EXECUTE| MONITOR| MODIFY | CONCLUDE|
+--------+--------+--------+--------+--------+--------+--------+--------+

STEP 1: DEFINE
- What the customer determines: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

STEP 2: LOCATE
- What the customer gathers/finds: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

STEP 3: PREPARE
- What the customer sets up: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

STEP 4: CONFIRM
- What the customer verifies: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

STEP 5: EXECUTE
- What the customer does: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

STEP 6: MONITOR
- What the customer tracks: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

STEP 7: MODIFY
- What the customer adjusts: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

STEP 8: CONCLUDE
- What the customer finalizes: [Description]
- Key outcome: [Outcome statement]
- Current pain at this step: [Pain, if any]

HIGHEST-OPPORTUNITY STEPS: [List the 2-3 steps with the most pain]
================================================================
```

---

## SECTION 4: VALUE PROPOSITION CANVAS

```
================================================================
VALUE PROPOSITION CANVAS
================================================================

+------------------------------------+-----------------------------------+
|           VALUE MAP                |         CUSTOMER PROFILE          |
+------------------------------------+-----------------------------------+
|                                    |                                   |
| PRODUCTS & SERVICES:               | CUSTOMER JOBS:                    |
| 1. [Product/service]  [Critical]   | 1. [J1] (Opp: [score])           |
| 2. [Product/service]  [Important]  | 2. [J2] (Opp: [score])           |
| 3. [Product/service]  [Nice-have]  | 3. [J3] (Opp: [score])           |
|                                    |                                   |
| PAIN RELIEVERS:                    | PAINS:                            |
| PR1: [How product relieves P1]     | P1: [Pain] (Opp: [score])        |
|      Match Strength: [1-5]         |                                   |
| PR2: [How product relieves P2]     | P2: [Pain] (Opp: [score])        |
|      Match Strength: [1-5]         |                                   |
| PR3: [How product relieves P3]     | P3: [Pain] (Opp: [score])        |
|      Match Strength: [1-5]         |                                   |
|                                    |                                   |
| GAIN CREATORS:                     | GAINS:                            |
| GC1: [How product creates G1]     | G1: [Gain] (Opp: [score])        |
|      Match Strength: [1-5]         |                                   |
| GC2: [How product creates G2]     | G2: [Gain] (Opp: [score])        |
|      Match Strength: [1-5]         |                                   |
| GC3: [How product creates G3]     | G3: [Gain] (Opp: [score])        |
|      Match Strength: [1-5]         |                                   |
+------------------------------------+-----------------------------------+

GAPS IDENTIFIED:
- [High-opportunity element with no corresponding reliever/creator]
- [High-opportunity element with weak match strength (< 3)]

COVERAGE SUMMARY:
- Pains addressed: [X of Y] high-opportunity pains covered
- Gains addressed: [X of Y] high-opportunity gains covered
- Average Match Strength: [Weighted average]
================================================================
```

---

## SECTION 5: FIT ASSESSMENT

```
================================================================
FIT ASSESSMENT
================================================================

FIT TYPE: [Problem-Solution Fit | Product-Market Fit | Business Model Fit]

SCORING:

| Element | Opp Score | Match Strength | Weighted Score |
|---------|-----------|----------------|----------------|
| [J1]    | [8-10]    | [1-5]          | [Opp x Match]  |
| [P1]    | [8-10]    | [1-5]          | [Opp x Match]  |
| [P2]    | [8-10]    | [1-5]          | [Opp x Match]  |
| [G1]    | [8-10]    | [1-5]          | [Opp x Match]  |
| [G2]    | [8-10]    | [1-5]          | [Opp x Match]  |
|---------|-----------|----------------|----------------|
| TOTALS  | [Sum]     |                | [Sum]          |

WEIGHTED FIT SCORE = (Sum of Weighted Scores / Sum of Opp Scores) x 20

FIT SCORE: [0-100]

INTERPRETATION:
- 80-100: STRONG FIT — Proceed to market testing with confidence
- 60-79:  MODERATE FIT — Iterate on value map before testing
- 40-59:  WEAK FIT — Revisit customer profile or pivot value map
- 0-39:   NO FIT — Fundamental rethink needed

DECISION TREE RESULT:
1. Validated customer jobs?          [YES/NO]
2. Top pains rated Importance >= 4?  [YES/NO]
3. Pain relievers address top pains? [YES/NO]
4. Match Strength >= 3 for each?     [YES/NO]
5. Fit Score >= 60?                  [YES/NO]

RECOMMENDATION: [Proceed | Iterate | Pivot | Research More]

WEAKEST LINKS:
1. [The element or match that drags the score down most]
2. [Second weakest element]

SPECIFIC IMPROVEMENT ACTIONS:
1. [Concrete action to improve fit — e.g., "Add real-time alerting
   to address P2 (currently Match Strength 2, needs 4+)"]
2. [Second action]
3. [Third action]
================================================================
```

---

## SECTION 6: KEY HYPOTHESES TO VALIDATE

```
================================================================
KEY HYPOTHESES TO VALIDATE
================================================================

Hypotheses are ranked by RISK (how much damage if wrong) x UNCERTAINTY
(how little evidence we have).

| # | Hypothesis                                 | Risk  | Uncertainty | Priority | Method        |
|---|-------------------------------------------|-------|-------------|----------|---------------|
| H1| [Statement of belief about customer]      | [1-5] | [1-5]       | [RxU]    | [Validation]  |
| H2| [Statement of belief about value]         | [1-5] | [1-5]       | [RxU]    | [Validation]  |
| H3| [Statement of belief about willingness]   | [1-5] | [1-5]       | [RxU]    | [Validation]  |
| H4| [Statement of belief about adoption]      | [1-5] | [1-5]       | [RxU]    | [Validation]  |
| H5| [Statement of belief about competition]   | [1-5] | [1-5]       | [RxU]    | [Validation]  |

Risk scale: 1=minor if wrong, 5=fatal if wrong
Uncertainty scale: 1=strong evidence, 5=pure assumption

Priority = Risk x Uncertainty (max 25)
- 20-25: CRITICAL — validate immediately before any development
- 12-19: HIGH — validate before significant investment
- 6-11:  MEDIUM — validate during development
- 1-5:   LOW — monitor but don't block on this

Recommended Validation Methods:
- Interview:    1:1 discovery or switch interview (Level 3)
- Survey:       Quantitative validation at scale (Level 2)
- Landing Page: Fake-door test measuring click-through (Level 4)
- Prototype:    Interactive mockup testing (Level 4)
- Concierge:    Manual service delivery to test value (Level 4)
- A/B Test:     Controlled experiment with real users (Level 5)
- Sales Test:   Attempt to sell before building (Level 4-5)

VALIDATION SEQUENCE:
[Ordered list of which hypotheses to test first, second, third,
with rationale for the sequence]
================================================================
```

---

## SECTION 7: SIMULATED INTERVIEW FINDINGS

**Always produce this section.** When real interview data exists, use it.
When no real data is available, generate simulated research findings and
clearly label every simulated insight with **[SIMULATED]**. Simulated
findings serve as testable hypotheses, not validated conclusions. Always
note which findings require real-world validation before acting on them.

```
================================================================
SIMULATED INTERVIEW FINDINGS
================================================================

Interviews Conducted: [Number]
Personas Used:        [List names and segments]

CROSS-INTERVIEW SYNTHESIS:

| Finding                    | Persona 1 | Persona 2 | Persona 3 | Frequency |
|---------------------------|-----------|-----------|-----------|-----------|
| [Job/Pain/Gain]           | [Y/N]     | [Y/N]     | [Y/N]     | [X of Y]  |
| [Job/Pain/Gain]           | [Y/N]     | [Y/N]     | [Y/N]     | [X of Y]  |
| [Job/Pain/Gain]           | [Y/N]     | [Y/N]     | [Y/N]     | [X of Y]  |

UNIVERSAL FINDINGS (appeared in all interviews):
1. [Finding] — Confidence: [High/Medium]
2. [Finding] — Confidence: [High/Medium]

SEGMENT-SPECIFIC FINDINGS:
- Segment A only: [Finding]
- Segment B only: [Finding]

CONTRADICTIONS BETWEEN PERSONAS:
- [Persona X said Y, but Persona Z said the opposite]
  Implication: [What this might mean]

SURPRISING INSIGHTS:
- [Anything unexpected that warrants further investigation]

LIMITATIONS OF SIMULATED FINDINGS:
- [Specific areas where simulation is least reliable]
- [Demographic or contextual blind spots]

CONFIDENCE SUMMARY:
- High-confidence findings: [X of Y total]
- Medium-confidence findings: [X of Y total]
- Low-confidence findings: [X of Y total]
================================================================
```

---

## SECTION 8: COMPETITIVE LANDSCAPE

```
================================================================
COMPETITIVE LANDSCAPE
================================================================

COMPETITIVE SET (JTBD-defined — includes non-obvious alternatives):

| Competitor        | Type        | Primary Job Addressed        | Threat Score |
|------------------|-------------|------------------------------|-------------|
| [Name]           | Direct      | [Job]                        | [1.0-5.0]   |
| [Name]           | Direct      | [Job]                        | [1.0-5.0]   |
| [Name]           | Indirect    | [Job]                        | [1.0-5.0]   |
| [Name]           | Alternative | [Job]                        | [1.0-5.0]   |
| Non-consumption  | Absence     | [Customer does nothing]      | [1.0-5.0]   |

Threat Score = Weighted composite:
  Functional fit (0.40) + Emotional fit (0.25) + Social fit (0.15) +
  Accessibility (0.10) + Low switching cost (0.10)

DIFFERENTIATION OPPORTUNITIES:
1. [Where competitors are weakest — specific gap]
2. [Underserved outcome that no competitor addresses]
3. [Segment that competitors ignore or serve poorly]

COMPETITIVE RISK:
[What could a competitor do to neutralize your value proposition?
How defensible is your fit?]
================================================================
```

---

## SECTION 9: RECOMMENDATIONS

```
================================================================
RECOMMENDATIONS
================================================================

IMMEDIATE ACTIONS (do this week):
1. [Specific, actionable recommendation]
2. [Specific, actionable recommendation]

SHORT-TERM ACTIONS (do this month):
1. [Specific, actionable recommendation]
2. [Specific, actionable recommendation]

STRATEGIC CONSIDERATIONS (ongoing):
1. [Longer-term strategic recommendation]
2. [Longer-term strategic recommendation]

WHAT NOT TO DO:
1. [Specific anti-recommendation — common mistake to avoid]
2. [Specific anti-recommendation]
================================================================
```

---

## SECTION 10: HANDOFF TO NEXT PHASE

```
================================================================
HANDOFF TO NEXT PHASE
================================================================

RECEIVING AGENT/TEAM: [Business Modeler | Experiment Designer | Product Team | etc.]

CONTEXT TRANSFER:
- Domain: [What market/product this analysis covers]
- Confidence Level: [Overall confidence in findings]
- Key Constraint: [Most important limitation or assumption]

VALIDATED ELEMENTS (ready to build on):
1. [Element with strong evidence]
2. [Element with strong evidence]

UNVALIDATED ELEMENTS (proceed with caution):
1. [Element that needs real-world testing]
2. [Element that needs real-world testing]

RECOMMENDED NEXT STEPS:
1. [What the receiving agent should do first]
2. [What the receiving agent should do second]

KEY ARTIFACTS PRODUCED:
- Customer Profile(s): [Location/reference]
- Value Proposition Canvas: [Location/reference]
- Job Map: [Location/reference]
- Interview Scripts: [Location/reference]
- Hypothesis List: [Location/reference]

OPEN QUESTIONS:
1. [Question that this analysis could not answer]
2. [Question that emerged during analysis]

DEPENDENCIES:
[What must happen before the next phase can proceed?]
================================================================
```

---

## SECTION 11: QUALITY CHECKLIST

Before finalizing output, verify every item:

```
================================================================
QUALITY CHECKLIST
================================================================

CUSTOMER PROFILE:
- [ ] All jobs use verb + object + context format
- [ ] All pains describe negative experiences (not missing features)
- [ ] All gains categorized as Required/Expected/Desired/Unexpected
- [ ] All elements scored on Importance (1-5) and Satisfaction (1-5)
- [ ] Opportunity Scores calculated correctly
- [ ] Maximum 5 items per category on final canvas
- [ ] Every element has a source tag

VALUE MAP:
- [ ] Each pain reliever maps to a specific identified pain
- [ ] Each gain creator maps to a specific identified gain
- [ ] Match Strength rated (1-5) for every mapping
- [ ] Products/services categorized by relevance (Critical/Important/Nice-have)
- [ ] Gaps between customer profile and value map identified

FIT ASSESSMENT:
- [ ] Weighted Fit Score calculated correctly
- [ ] Decision tree completed
- [ ] Weakest links identified with specific improvement actions
- [ ] Clear recommendation (Proceed/Iterate/Pivot/Research More)

HYPOTHESES:
- [ ] Each hypothesis is falsifiable (can be proven wrong)
- [ ] Risk and Uncertainty scored (1-5) for each
- [ ] Priority calculated (Risk x Uncertainty)
- [ ] Validation method specified for each hypothesis
- [ ] Validation sequence defined

RESEARCH QUALITY:
- [ ] Source diversity: 3+ distinct source types used
- [ ] Verbatim customer language included for key findings
- [ ] Segments clearly differentiated (not one blob)
- [ ] Contradictions actively sought and documented
- [ ] Confidence level tagged for every finding
- [ ] Known biases acknowledged

HANDOFF:
- [ ] Receiving agent/team identified
- [ ] Validated vs. unvalidated elements clearly separated
- [ ] Next steps are specific and actionable
- [ ] Open questions documented
- [ ] All artifacts listed with references
================================================================
```

---

## APPENDIX: SCORING QUICK REFERENCE

```
IMPORTANCE (1-5):
1 = Trivial — customer barely notices
2 = Minor — noticeable but not a priority
3 = Moderate — actively thinks about this
4 = Important — significant impact on outcomes
5 = Critical — defines success or failure

SATISFACTION (1-5):
1 = Completely unmet — no solution addresses this
2 = Poorly met — current solutions are inadequate
3 = Partially met — current solutions are acceptable
4 = Well met — current solutions are good
5 = Fully met — current solutions are excellent

OPPORTUNITY SCORE:
= Importance + MAX(Importance - Satisfaction, 0)
Range: 1-10
8-10 = Underserved (target these)
5-7  = Served (competitive)
0-4  = Overserved (avoid)

MATCH STRENGTH (1-5):
1 = Tangential connection
2 = Partial relief/creation
3 = Meaningful relief/creation
4 = Strong relief/creation
5 = Complete relief/creation

WEIGHTED FIT SCORE:
= SUM(Opp Score x Match Strength) / SUM(Opp Scores) x 20
Range: 0-100
80-100 = Strong fit
60-79  = Moderate fit
40-59  = Weak fit
0-39   = No fit

HYPOTHESIS PRIORITY:
= Risk (1-5) x Uncertainty (1-5)
Range: 1-25
20-25 = Critical
12-19 = High
6-11  = Medium
1-5   = Low

RESEARCH QUALITY SCORE:
= SUM(7 dimension scores, each 1-5) / 35 x 100
Range: 0-100%
80-100% = Publication-ready
60-79%  = Directionally useful
40-59%  = Hypothesis-grade
0-39%   = Unreliable

COMPETITIVE THREAT SCORE:
= Functional fit (x0.40) + Emotional fit (x0.25) + Social fit (x0.15)
  + Accessibility (x0.10) + Low switching cost (x0.10)
Range: 1.0-5.0
4.0-5.0 = Strong competitor
3.0-3.9 = Moderate competitor
2.0-2.9 = Weak competitor
1.0-1.9 = Not a real competitor
```
