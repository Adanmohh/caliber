# Media Planner Output Template — Complete Structured Format

## Reference Document for Media Planner Agent

---

## Usage Instructions

When the Media Planner agent is activated, it produces a structured analysis using this
template. Every section must be filled with specific, actionable recommendations tailored
to the business being analyzed. **No placeholder text. No generic advice.** Every field
must contain real analysis, real numbers, and real recommendations.

### Pre-Launch Venture Guidance

For pre-launch ventures: Focus on foundation-building over optimization. Use projected metrics labeled [PROJECTED]. Prioritize organic/low-budget channels. Note where live data is needed before scaling.

### Template Activation Rules

1. **Full analysis** (user asks for a complete paid media strategy): Produce ALL sections.
2. **Targeted analysis** (user asks about a specific topic like testing or budgets):
   Produce relevant sections only, but reference how they connect to the full framework.
3. **Diagnostic mode** (user provides performance data and asks why things are not working):
   Focus on Sections 4 (Metrics Tree), 5 (Budget), and 10 (KPIs) with diagnostic logic.
4. **Quick audit** (user shares ad account data for review): Focus on Sections 1 and 4.

### Quality Scoring for Output

Before delivering any output, the AI agent system scores its own work:

```
OUTPUT QUALITY SCORECARD (Rate 1-5)

[ ] Specificity:     Are all recommendations specific to this business? (No generic advice)
[ ] Completeness:    Is every section filled with real analysis? (No placeholder text)
[ ] Actionability:   Can the team execute these recommendations this week? (Concrete steps)
[ ] Data-Grounded:   Are targets based on industry data or client history? (Not arbitrary)
[ ] Framework-True:  Does the strategy follow Dollar-a-Day and 3x3 Grid principles?
[ ] Cross-Connected: Do sections reference each other logically? (Grid → Budget → Metrics)
[ ] Kill Criteria:   Does every test include clear criteria for stopping spend?
[ ] Honest:          Does the analysis acknowledge what ads cannot fix? (Offer/funnel issues)

SCORING:
  40/40 = Ship immediately
  32-39 = Ship with minor notes
  24-31 = Revise weak sections before shipping
  <24   = Major revision needed — incomplete or generic
```

---

## Section 1: Campaign Strategy Overview

```
## Campaign Strategy Overview

### Business Context
- Business name: [name]
- Industry / vertical: [specific industry]
- Business model: [e-commerce / SaaS / services / local / nonprofit / etc.]
- Primary revenue model: [product sales / subscriptions / leads / bookings / donations]
- Average order value / deal size: $[amount]
- Customer lifetime value (estimated): $[amount]
- Current monthly revenue: $[amount]
- Target monthly revenue: $[amount]
- Revenue gap to close: $[amount]

### Paid Media Objectives
- Primary objective: [specific — e.g., "Generate 50 qualified leads/month at <$40 CPA"]
- Secondary objective: [specific — e.g., "Build brand awareness in [metro] market"]
- Tertiary objective: [specific — e.g., "Build remarketing pool of 10,000+ warm audience"]
- Timeline: [30/60/90 days]

### Target CPA / ROAS Calculation

UNIT ECONOMICS:
  Average deal value:           $[X]
  Gross margin:                 [X%]
  Gross profit per deal:        $[X]
  Allowable CAC (at 30% of GP): $[X] ← This is your target CPA
  Target ROAS:                  [X]x  ← (Revenue / Ad Spend)

  Example: $500 deal x 60% margin = $300 GP. At 30% allowable: target CPA = $90.
  Target ROAS = $500 / $90 = 5.6x

### Target Audience Profile
- Primary audience: [demographic + psychographic description]
- Secondary audience: [description]
- Estimated addressable audience size: [number] on [platform]
- Audience sophistication level:
  [ ] Unaware (don't know they have the problem)
  [ ] Problem-aware (know the problem, don't know solutions exist)
  [ ] Solution-aware (know solutions exist, don't know your brand)
  [ ] Product-aware (know your brand, haven't bought)
  [ ] Most-aware (know your brand, bought before or nearly bought)

### Platform Selection

| Platform      | Use For           | Budget % | Rationale                       |
|---------------|-------------------|----------|---------------------------------|
| [Platform 1]  | [Primary/Second]  | [X%]     | [Why this platform for this biz]|
| [Platform 2]  | [Primary/Second]  | [X%]     | [Why this platform]             |
| [Platform 3]  | [Testing only]    | [X%]     | [Why testing here]              |

### Competitive Landscape (Research-Informed)
- Competitor 1: [Name] — [What they're doing with paid, observed ad themes]
- Competitor 2: [Name] — [What they're doing with paid, observed ad themes]
- Competitor 3: [Name] — [What they're doing with paid, observed ad themes]
- Gaps identified: [What competitors are NOT doing that this business can exploit]
- Creative angles competitors are missing: [specific angles]
```

---

## Section 2: 3x3 Grid Map

```
## 3x3 Video Grid Map

### Grid Overview

|                | WHY (Stories)             | HOW (Teaching)            | WHAT (Selling)            |
|----------------|---------------------------|---------------------------|---------------------------|
| COLD (TOF)     | Cell 1: [Specific topic]  | Cell 2: [Specific topic]  | Cell 3: [Topic or SKIP]   |
| WARM (MOF)     | Cell 4: [Specific topic]  | Cell 5: [Specific topic]  | Cell 6: [Specific topic]  |
| HOT (BOF)      | Cell 7: [Specific topic]  | Cell 8: [Specific topic]  | Cell 9: [Specific topic]  |

### Grid Coverage Score

GRID COMPLETENESS ASSESSMENT:

  Cell 1 (Cold+Why):  [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified
  Cell 2 (Cold+How):  [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified
  Cell 3 (Cold+What): [ ] Skipped (recommended) / [ ] Content exists
  Cell 4 (Warm+Why):  [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified
  Cell 5 (Warm+How):  [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified
  Cell 6 (Warm+What): [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified
  Cell 7 (Hot+Why):   [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified
  Cell 8 (Hot+How):   [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified
  Cell 9 (Hot+What):  [ ] Content exists  [ ] Tested at $1/day  [ ] Winner identified

  Coverage: [X]/8 cells populated (Cell 3 typically excluded)
  Tested:   [X]/8 cells tested at $1/day
  Winners:  [X]/8 cells have identified winners

  COVERAGE GRADE:
    8/8 populated, 8/8 tested, 6+/8 winners = A (Full grid, scaling phase)
    6+/8 populated, 4+/8 tested              = B (Building, early scale)
    3-5/8 populated, 1-3/8 tested            = C (Foundation phase)
    <3/8 populated                            = D (Not yet a grid — content needed)

### Cell Details (Per Cell)

#### Cell [N]: [Temperature] + [Type] — PRIORITY: [HIGH/MEDIUM/LOW]

VIDEO CONCEPT:
  Topic:           [Specific topic for this cell]
  Story/angle:     [Specific angle or teaching approach]
  Hook (0-3s):     "[Exact opening line or visual description]"
  Body (3-50s):    [Key message, story beats, or teaching steps]
  Close (50-60s):  [Takeaway, belief statement, or CTA]

TARGETING:
  Audience:        [Specific audience — custom, lookalike, interest, or broad]
  Exclusions:      [Who to exclude from this cell]
  Platform:        [Meta / TikTok / LinkedIn / YouTube / etc.]
  Placement:       [Feed / Stories / Reels / Automatic]

METRICS:
  Campaign obj:    [Video Views / Engagement / Traffic / Conversions]
  Primary KPI:     [Specific metric with target number]
  Secondary KPI:   [Specific metric with target number]
  Kill threshold:  [Specific metric level that triggers killing this ad]

BUDGET:
  Test budget:     $1/day for 7 days ($7 total)
  Scale budget:    $[X]/day if test passes (specify graduation path)

[Repeat for each of the 8-9 active cells]
```

---

## Section 3: Dollar-a-Day Test Plan

```
## Dollar-a-Day Test Plan

### Pre-Test Plumbing Verification

TRACKING CHECKLIST:
  [ ] Platform pixel installed and firing on all pages
  [ ] Custom conversion events defined and verified:
      [ ] [Event 1: e.g., Purchase]
      [ ] [Event 2: e.g., Lead form submission]
      [ ] [Event 3: e.g., Add to cart]
  [ ] UTM parameter convention: utm_source=[X]&utm_medium=[X]&utm_campaign=[X]
  [ ] Custom audiences configured:
      [ ] Website visitors (30-day)
      [ ] Video viewers (15s+)
      [ ] Page engagers (30-day)
      [ ] Customer list uploaded
  [ ] Lookalike audiences created (1%, 2%)
  [ ] Analytics connected and receiving data
  [ ] Payment method verified

PLUMBING STATUS: [ ] ALL CLEAR — Ready to test  /  [ ] ISSUES FOUND — Fix before spending

Issues found:
  1. [Issue description] — [Fix needed] — [Owner] — [ETA]
  2. [Issue description] — [Fix needed] — [Owner] — [ETA]

### Test Round 1: Organic Winners (Week 1)

TESTING ORGANIC CONTENT FIRST (Dollar-a-Day principle: amplify what works)

| Test # | Content Description         | Original Eng. Rate | Audience           | Budget  | Duration | Pass Metric          |
|--------|-----------------------------|--------------------|-----------------------|---------|----------|----------------------|
| 1      | [Specific post/video desc]  | [X%] organic       | [Specific audience]   | $1/day  | 7 days   | 10%+ engagement rate |
| 2      | [Specific post/video desc]  | [X%] organic       | [Specific audience]   | $1/day  | 7 days   | 10%+ engagement rate |
| 3      | [Specific post/video desc]  | [X%] organic       | [Specific audience]   | $1/day  | 7 days   | 10%+ engagement rate |
| 4      | [Specific post/video desc]  | [X%] organic       | [Specific audience]   | $1/day  | 7 days   | 10%+ engagement rate |
| 5      | [Specific post/video desc]  | [X%] organic       | [Specific audience]   | $1/day  | 7 days   | 10%+ engagement rate |

Round 1 budget: 5 tests x $7 each = $35 total

### Test Round 2: 3x3 Grid Content (Week 2)

TESTING NEW GRID CONTENT (prioritized by cell importance)

| Test # | Grid Cell | Content Description         | Audience             | Budget  | Duration | Pass Metric            |
|--------|-----------|-----------------------------|-----------------------|---------|----------|------------------------|
| 6      | Cell 1    | [WHY video: specific topic] | [Cold: broad/LAL]    | $1/day  | 7 days   | CPT <$0.05, VR >15%   |
| 7      | Cell 1    | [WHY video: different angle]| [Cold: broad/LAL]    | $1/day  | 7 days   | CPT <$0.05, VR >15%   |
| 8      | Cell 1    | [WHY video: third angle]    | [Cold: broad/LAL]    | $1/day  | 7 days   | CPT <$0.05, VR >15%   |
| 9      | Cell 5    | [HOW video: specific topic] | [Warm: WHY viewers]  | $1/day  | 7 days   | 10%+ engagement rate   |
| 10     | Cell 5    | [HOW video: different topic]| [Warm: WHY viewers]  | $1/day  | 7 days   | 10%+ engagement rate   |
| 11     | Cell 9    | [WHAT video: offer angle A] | [Hot: HOW viewers]   | $1/day  | 7 days   | CPA within target      |
| 12     | Cell 9    | [WHAT video: offer angle B] | [Hot: HOW viewers]   | $1/day  | 7 days   | CPA within target      |

Round 2 budget: 7 tests x $7 each = $49 total

### Test Round 3: Audience Expansion (Week 3)

TESTING WINNING CONTENT AGAINST NEW AUDIENCES

| Test # | Winning Content (from R1/R2) | New Audience           | Budget  | Duration | Pass Metric          |
|--------|------------------------------|------------------------|---------|----------|----------------------|
| 13     | [Best WHY video]             | [Interest audience A]  | $1/day  | 7 days   | Engagement holds >8% |
| 14     | [Best WHY video]             | [Interest audience B]  | $1/day  | 7 days   | Engagement holds >8% |
| 15     | [Best WHY video]             | [2% Lookalike]         | $1/day  | 7 days   | Engagement holds >8% |
| 16     | [Best HOW video]             | [Expanded warm audience]| $1/day | 7 days   | Engagement holds >8% |
| 17     | [Best WHAT video]            | [Expanded hot audience] | $1/day | 7 days   | CPA within 125% target|

Round 3 budget: 5 tests x $7 each = $35 total

### Test Evaluation Framework

DECISION MATRIX FOR EACH TEST:

Score each on 5 dimensions (1-5 scale):
  1. Engagement Rate        [  ] (1=<3%, 2=3-5%, 3=5-8%, 4=8-12%, 5=>12%)
  2. Cost Efficiency        [  ] (1=3x+ CPA, 2=2-3x, 3=1-2x, 4=at target, 5=<target)
  3. Sentiment Quality      [  ] (1=negative, 2=confused, 3=neutral, 4=positive, 5=enthusiastic)
  4. Audience Headroom      [  ] (1=<10k, 2=10-50k, 3=50-200k, 4=200k-1M, 5=>1M)
  5. Downstream Signal      [  ] (1=no signal, 2=clicks only, 3=LP views, 4=leads, 5=purchases)

  TOTAL: [  ] / 25

  DECISION:
    20-25 = SCALE (increase to $5/day immediately)
    15-19 = GRADUATE (move to $5/day for 7-day validation)
    10-14 = CONTINUE ($1/day for 7 more days with tweaked audience)
     5-9  = KILL (stop spend, document learnings)

### Total 3-Week Testing Investment

| Round   | Tests | Budget      | Purpose                          |
|---------|-------|-------------|----------------------------------|
| Round 1 | 5     | $35         | Validate organic winners          |
| Round 2 | 7     | $49         | Build 3x3 Grid foundation         |
| Round 3 | 5     | $35         | Audience expansion on winners     |
| TOTAL   | 17    | $119        | Complete foundation in 21 days    |

### Post-Testing Actions

After 3 weeks of testing:
  [ ] Winners identified per grid cell (minimum Cells 1, 5, 9)
  [ ] Kill decisions documented with reasoning
  [ ] Winning content graduated to $5/day validation
  [ ] Custom audiences built from video viewers (15s+)
  [ ] Remarketing sequences configured
  [ ] Next content batch planned for cells without winners
```

---

## Section 4: Metrics Tree

```
## Metrics Tree: Business Goals → Intermediate Metrics → Leading Indicators

### Level 1: Business Goals (Monthly Review)

| Goal                          | Target         | Current      | Gap          | Status       |
|-------------------------------|----------------|--------------|--------------|--------------|
| Revenue from paid media       | $[target]      | $[current]   | $[gap]       | [On/Off]     |
| New customers from paid       | [N] customers  | [N] current  | [N] gap      | [On/Off]     |
| Customer Acquisition Cost     | < $[target]    | $[current]   | [over/under] | [On/Off]     |
| Return on Ad Spend (ROAS)     | > [X]x         | [X]x current | [over/under] | [On/Off]     |
| Blended profit margin on paid | > [X%]         | [X%] current | [over/under] | [On/Off]     |
| Customer LTV (paid-acquired)  | > $[target]    | $[current]   | [over/under] | [On/Off]     |

### Level 2: Intermediate Metrics (Weekly Review)

| Metric                        | Target         | Current      | Trend        | Action       |
|-------------------------------|----------------|--------------|--------------|--------------|
| Total conversions (weekly)    | [N]/week       | [N]          | [up/dn/flat] | [action]     |
| Cost per conversion           | < $[X]         | $[X]         | [up/dn/flat] | [action]     |
| Landing page conversion rate  | > [X%]         | [X%]         | [up/dn/flat] | [action]     |
| Lead-to-customer rate         | > [X%]         | [X%]         | [up/dn/flat] | [action]     |
| Average order value           | > $[X]         | $[X]         | [up/dn/flat] | [action]     |
| Warm audience pool size       | > [N]          | [N]          | [trend]      | [action]     |
| Hot audience pool size        | > [N]          | [N]          | [trend]      | [action]     |
| Funnel flow: Cold → Warm      | [X%]           | [X%]         | [trend]      | [action]     |
| Funnel flow: Warm → Hot       | [X%]           | [X%]         | [trend]      | [action]     |
| Funnel flow: Hot → Convert    | [X%]           | [X%]         | [trend]      | [action]     |

### Level 3: Leading Indicators (Daily Review — MAA Cycle)

| Indicator                     | Target         | Current      | Action if Off               |
|-------------------------------|----------------|--------------|------------------------------|
| Engagement rate (blended)     | > 10%          | [X%]         | Test new creative            |
| Cost per ThruPlay (video)     | < $0.05        | $[X]         | Improve hooks / targeting    |
| Click-through rate (CTR)      | > 2%           | [X%]         | Revise hooks / CTA copy      |
| Cost per click (CPC)          | < $[X]         | $[X]         | Refine audiences / placements|
| Video view rate (15s+)        | > 25%          | [X%]         | Improve first 3 seconds      |
| Relevance / quality score     | > 7/10         | [X]          | Improve content-audience fit |
| Frequency (per audience/wk)   | < 3x           | [X]          | Expand audience or refresh   |
| Audience saturation           | < 10%          | [X%]         | Add new audiences / LALs     |
| Creative freshness            | < 60 days      | [X days]     | Produce new content          |
| First-time impression ratio   | > 50%          | [X%]         | Audience is exhausted        |

### Metrics Tree Diagnostic Logic

AUTOMATED DIAGNOSTIC (AI agent runs this when given data):

CHECK 1: Are Level 3 indicators healthy?
  YES → Proceed to Check 2
  NO  → DIAGNOSIS: Creative or targeting problem
        ACTIONS:
        - Kill ads below engagement threshold
        - Test 5+ new creative concepts at $1/day
        - Expand or change audience targeting
        - Review competitor creative for inspiration
        - Request new content from Copywriter agent

CHECK 2: Are Level 2 indicators healthy?
  YES → Proceed to Check 3
  NO  → DIAGNOSIS: Funnel problem (not an ads problem)
        ACTIONS:
        - Review landing page conversion rate
        - Check form/checkout abandonment rate
        - Audit page load speed
        - Review offer clarity on landing page
        - Flag for Funnel Architect agent review
        - Do NOT increase ad spend — it will not help

CHECK 3: Are Level 1 indicators healthy?
  YES → DIAGNOSIS: Everything working — scale carefully
        ACTIONS:
        - Graduate winning ads to next budget level
        - Expand to new audience segments
        - Test additional platforms
        - Increase testing velocity for new content
  NO  → DIAGNOSIS: Business model / pricing problem
        ACTIONS:
        - Review unit economics (LTV vs. CAC)
        - Check customer quality (are paid-acquired customers profitable?)
        - Review pricing relative to competition
        - Flag for Offer Designer agent review
        - Do NOT increase ad spend — the economics are broken

### Metrics Tree Visual

LEVEL 1                    LEVEL 2                      LEVEL 3
(Monthly)                  (Weekly)                     (Daily)
─────────                  ─────────                    ─────────
Revenue ◄──────────────── Conversions ◄──────────────── Engagement Rate
  │                          │                              │
  ├─ CAC ◄──────────────── CPA ◄────────────────────── CPC / CPM
  │                          │                              │
  ├─ ROAS ◄─────────────── Conv Rate ◄──────────────── CTR
  │                          │                              │
  ├─ LTV ◄──────────────── Lead Quality ◄──────────── Quality Score
  │                          │                              │
  └─ Margin ◄────────────── AOV ◄──────────────────── Frequency
                              │
                         Audience Pools ◄────────────── Saturation %
                         (Warm + Hot size)               First-time %
```

---

## Section 5: Budget Allocation Model

```
## Budget Allocation Model: Test → Validate → Scale

### Total Monthly Ad Budget: $[amount]

### Budget Calculator

INPUT VARIABLES:
  Total budget:        $[B]/month
  Account maturity:    [New (0-3mo) / Growth (3-12mo) / Mature (12+mo)]
  Active winners:      [N] ads currently performing above threshold
  Audience pool sizes: Cold [N], Warm [N], Hot [N]

ALLOCATION FORMULA:

  Account = [maturity level]

  Test allocation:     [X%] of $[B] = $[amount]/month = $[amount]/day
  Validate allocation: [X%] of $[B] = $[amount]/month = $[amount]/day
  Scale allocation:    [X%] of $[B] = $[amount]/month = $[amount]/day

  REFERENCE TABLE:
  | Maturity | Test % | Validate % | Scale % |
  |----------|--------|------------|---------|
  | New      | 40%    | 35%        | 25%     |
  | Growth   | 25%    | 30%        | 45%     |
  | Mature   | 15%    | 25%        | 60%     |

### Phase Allocation Detail

TESTING PHASE: $[amount]/month ($[amount]/day)
  Number of simultaneous $1/day tests: [N]
  Test rounds per month: [N] (7-day cycles)
  Total test variants per month: [N]
  Expected winners per month: [N] (10% hit rate)

VALIDATION PHASE: $[amount]/month ($[amount]/day)
  Number of ads in validation: [N] at $5-30/day each
  Validation duration: 7-14 days per ad
  Graduation rate to scale: approximately 50% of validated ads

SCALING PHASE: $[amount]/month ($[amount]/day)
  Number of ads at scale: [N]
  Average budget per scaled ad: $[amount]/day
  Scale budget by funnel stage:
    Cold (50%): $[amount]/day across Cells [1, 2]
    Warm (30%): $[amount]/day across Cells [4, 5, 6]
    Hot  (20%): $[amount]/day across Cells [7, 8, 9]

### Scaling Decision Framework

SCALING STAIRCASE FOR EACH WINNER:

Level | Budget/Day | Duration | Criteria to Advance                      | Criteria to Drop Back
------|------------|----------|------------------------------------------|-----------------------
Test  | $1         | 7 days   | 10%+ engagement, positive sentiment      | <5% engagement → KILL
Valid | $5         | 7 days   | Engagement holds >=8% at 5x budget       | Engagement drops >25%
Scale1| $30        | 30 days  | Consistent CPA within target, freq <3/wk | CPA >125% target
Scale2| $50        | Ongoing  | ROAS positive, audience not saturated     | Saturation >15%
Scale3| $100+      | Ongoing  | Proven ROAS, large audience, stable perf  | Marginal ROAS declining

BUDGET INCREASE RULES:
  [ ] Never increase by more than 30% at a time
  [ ] Wait 3-5 days between increases
  [ ] If engagement drops below 7% post-increase: roll back immediately
  [ ] If CPA jumps >25% post-increase: pause and investigate
  [ ] Continue $1/day testing pipeline regardless of scale activity

### Diminishing Returns Monitoring

SATURATION SIGNALS (check weekly):

| Signal                         | Threshold    | Current | Action                      |
|--------------------------------|-------------|---------|-----------------------------|
| Audience saturation %          | >15%        | [X%]    | Expand audience / reduce spend|
| Frequency per user per week    | >3x         | [X]     | Fresh creative or new audience|
| First-time impression ratio    | <40%        | [X%]    | Audience is exhausting       |
| Marginal CPA (last $50 spend) | >150% avg   | $[X]    | Approaching diminishing returns|
| Engagement rate trend (7d)     | Declining   | [trend] | Creative fatigue likely      |

### Monthly Budget Review Checklist

  [ ] What % of budget went to testing vs. proven winners?
  [ ] Are we still running $1/day tests on new content?
  [ ] How many new winners were discovered this month?
  [ ] Have any scaled campaigns hit audience saturation?
  [ ] What is blended ROAS across all campaigns?
  [ ] Which grid cells need fresh creative (>60 days old)?
  [ ] Is the warm audience pool growing or shrinking?
  [ ] Is the hot audience pool growing or shrinking?
  [ ] Any platforms showing declining efficiency? (Consider reallocation)
  [ ] Next month's testing pipeline: [N] new content pieces planned
```

---

## Section 6: Creative Brief (Per Grid Cell)

```
## Creative Brief — Cell [N]: [Temperature] + [Type]

### Overview
- Grid cell:         Cell [N]
- Funnel stage:      [Cold / Warm / Hot]
- Content type:      [WHY / HOW / WHAT]
- Priority:          [HIGH / MEDIUM / LOW]
- Campaign objective: [Video Views / Engagement / Traffic / Conversions]

### Target Audience
- Audience name:     [Specific audience from targeting strategy]
- Audience size:     [N estimated]
- Source:            [Interest / Lookalike / Custom / Broad]
- Exclusions:        [Who to exclude]

### Video Specifications
- Length:            60 seconds maximum
- Orientation:       Vertical (9:16) primary, Square (1:1) secondary
- Quality:           Raw, phone-shot (NOT professionally produced)
- Editing:           Minimal — captions only
- Tone:              [Personal/vulnerable | Helpful/instructional | Direct/proof-driven]

### Script Structure

HOOK (0-3 seconds):
  Visual: [Description of opening visual]
  Audio:  "[Exact opening line]"
  Purpose: Stop the scroll. Create curiosity or recognition.

BODY (3-50 seconds):
  [For WHY]: "When I was [specific story detail]..."
             [Key story beats — 3-4 specific moments]
             "I believe that [business belief connected to story]..."

  [For HOW]: "The problem is [specific problem statement]..."
             "Step 1: [Specific, actionable instruction]"
             "Step 2: [Specific, actionable instruction]"
             "Step 3: [Specific, actionable instruction]"

  [For WHAT]: "Here's what we built to solve [problem]..."
              [Proof element: testimonial / demo / case study / results]
              [Specific numbers, specific outcomes, specific timeline]

CLOSE (50-60 seconds):
  [For WHY]: "I'm [Name], and I [simple what you do]."
  [For HOW]: "So remember: [Step 1], [Step 2], [Step 3]."
  [For WHAT]: "[Specific call to action with URL or next step]."

### Key Message
One sentence: [What should the viewer feel, know, or do after watching?]

### Visual Direction
- Location:          [Where to film — office, worksite, home, outdoors]
- Wardrobe:          [What to wear — match the context, not a suit unless appropriate]
- Props:             [Any items to show or demonstrate]
- On-screen text:    [Key points to display as captions / text overlay]
- B-roll:            [Any supplementary footage needed — product shots, demos]

### Do's and Don'ts

DO:
  - [Specific to cell type — e.g., "DO tell a personal story" for WHY]
  - [Specific to cell type — e.g., "DO give actionable steps" for HOW]
  - [Specific to cell type — e.g., "DO include specific proof/numbers" for WHAT]
  - Look at the camera lens
  - Speak conversationally
  - Lead with the hook

DON'T:
  - [Specific to cell type — e.g., "DON'T mention your product" for WHY/HOW]
  - [Specific to cell type — e.g., "DON'T use jargon" for HOW]
  - [Specific to cell type — e.g., "DON'T be vague about the offer" for WHAT]
  - Use a teleprompter
  - Add music or sound effects
  - Over-edit

### Success Metrics

| Metric              | Target          | Kill Threshold                          |
|---------------------|-----------------|-----------------------------------------|
| [Primary KPI]       | [specific #]    | Below [specific #] after 7 days → KILL  |
| [Secondary KPI]     | [specific #]    | Below [specific #] after 7 days → FLAG  |

### Variants to Test
- Variant A: [Different hook / angle / story]
- Variant B: [Different hook / angle / story]
- Variant C: [Different hook / angle / story]
- Test all 3 at $1/day for 7 days. Keep best performer. Kill rest.

[Repeat this brief for each active grid cell — minimum Cells 1, 5, 7, 9]
```

---

## Section 7: Audience Targeting Strategy

```
## Audience Targeting Strategy

### Cold Audiences (Cells 1, 2, 3)

| Audience Name         | Type          | Size      | Source/Definition                | Grid Cell |
|-----------------------|---------------|-----------|----------------------------------|-----------|
| [Audience 1]          | Interest      | [N]       | [Specific interests selected]    | 1, 2      |
| [Audience 2]          | Interest      | [N]       | [Specific interests selected]    | 1, 2      |
| [Lookalike 1%]        | Lookalike     | [N]       | Based on [source: customers/etc] | 1, 2      |
| [Lookalike 2%]        | Lookalike     | [N]       | Based on [source]                | 1, 2      |
| [Broad]               | Broad/A+      | [N]       | Age [X-X], [Geo], Advantage+    | 1, 2      |

### Warm Audiences (Cells 4, 5, 6)

| Audience Name              | Type        | Trigger/Definition                    | Window | Grid Cell |
|----------------------------|-------------|---------------------------------------|--------|-----------|
| WHY Video Viewers 15s+     | Video       | Watched any WHY video 15+ sec        | 30 day | 4, 5, 6   |
| Cold HOW Viewers 15s+      | Video       | Watched any Cold HOW video 15+ sec   | 30 day | 4, 5, 6   |
| Page/Profile Engagers      | Engagement  | Engaged with page (any action)        | 30 day | 4, 5, 6   |
| Website Visitors - All     | Website     | Visited any page on website           | 30 day | 4, 5, 6   |
| Email List - Non-Buyers    | Customer    | On email list, no purchase event      | N/A    | 4, 5, 6   |

### Hot Audiences (Cells 7, 8, 9)

| Audience Name              | Type        | Trigger/Definition                    | Window | Grid Cell |
|----------------------------|-------------|---------------------------------------|--------|-----------|
| HOW Video Viewers 15s+     | Video       | Watched any HOW video 15+ sec        | 30 day | 7, 8, 9   |
| Product/Pricing Visitors   | Website     | Visited product or pricing pages      | 7 day  | 7, 8, 9   |
| Cart/Form Abandoners       | Website     | Started checkout/form, didn't finish  | 7 day  | 9         |
| Multi-Touch Engagers       | Combined    | 3+ content interactions               | 30 day | 7, 8, 9   |
| High-Intent Website        | Website     | Visited 3+ pages or 2+ minutes        | 14 day | 7, 8, 9   |

### Exclusion Architecture

EXCLUSION RULES (critical for clean funnel):
  - All acquisition campaigns: EXCLUDE Converters (180-day window)
  - Cold campaigns: EXCLUDE Warm audiences (avoid paying twice)
  - Warm campaigns: EXCLUDE Hot audiences (avoid backward sequencing)
  - Cell 9 (WHAT): EXCLUDE anyone who converted in last 30 days

### Lookalike Strategy

| Source Audience        | LAL %  | Est. Size | Test Budget | Status     |
|------------------------|--------|-----------|-------------|------------|
| Top customers by LTV   | 1%     | [N]       | $1/day      | [status]   |
| Top customers by LTV   | 2%     | [N]       | $1/day      | [status]   |
| All converters          | 1%     | [N]       | $1/day      | [status]   |
| Email subscribers       | 1%     | [N]       | $1/day      | [status]   |

Refresh source audiences: Quarterly (add new customers, remove churned)
```

---

## Section 8: Campaign Performance Dashboard

```
## Campaign Performance Dashboard

### Daily Dashboard (MAA Cycle — 15 Minutes)

DATE: [YYYY-MM-DD]

| KPI                     | Target      | Today    | Yesterday | 7-Day Avg | Trend | Action   |
|-------------------------|-------------|----------|-----------|-----------|-------|----------|
| Total spend             | $[budget]   | $        | $         | $         | →     |          |
| Impressions             | [N]         |          |           |           |       |          |
| Engagement rate         | >10%        | %        | %         | %         |       |          |
| Cost per ThruPlay       | <$0.05      | $        | $         | $         |       |          |
| CPC                     | <$[target]  | $        | $         | $         |       |          |
| CTR                     | >2%         | %        | %         | %         |       |          |
| Conversions             | [N]/day     |          |           |           |       |          |
| CPA                     | <$[target]  | $        | $         | $         |       |          |
| ROAS                    | >[X]x       | x        | x         | x         |       |          |
| Frequency (weekly avg)  | <3x         |          |           |           |       |          |

MAA ACTIONS TODAY:
  KILL:  [List ads/ad sets to stop]
  SCALE: [List ads/ad sets to increase budget]
  TEST:  [List new tests to launch]
  FLAG:  [List issues for escalation]

### Weekly Report Template

WEEK OF: [Date range]

SUMMARY:
  Total spend:        $[X] of $[budget] ([X%] of monthly budget)
  Total conversions:  [N] at $[CPA] average (target: $[target CPA])
  Blended ROAS:       [X]x (target: [X]x)
  Tests launched:     [N]
  Tests killed:       [N]
  Tests graduated:    [N] (to $5/day validation)
  Audience growth:    Warm pool: [N] (+[N]%), Hot pool: [N] (+[N]%)

TOP PERFORMERS THIS WEEK:
  1. [Ad name] — Cell [N] — [engagement rate] — $[CPA] — [action taken]
  2. [Ad name] — Cell [N] — [engagement rate] — $[CPA] — [action taken]
  3. [Ad name] — Cell [N] — [engagement rate] — $[CPA] — [action taken]

UNDERPERFORMERS (KILLED):
  1. [Ad name] — Cell [N] — [engagement rate] — Killed on Day [X] — [why]
  2. [Ad name] — Cell [N] — [engagement rate] — Killed on Day [X] — [why]

LEARNINGS:
  - [What worked and why — specific creative elements, audience segments]
  - [What failed and why — specific elements that did not resonate]
  - [Hypotheses for next week's tests based on this week's data]

NEXT WEEK PLAN:
  - [ ] [Specific test to launch]
  - [ ] [Budget change to make]
  - [ ] [Content to create]
  - [ ] [Audience to build or refresh]

### Monthly Report Template

MONTH: [Month Year]

EXECUTIVE SUMMARY:
  Total ad spend:           $[X]
  Total revenue attributed: $[X]
  Blended ROAS:             [X]x
  Total conversions:        [N] at $[CPA] avg
  New customers acquired:   [N]
  Cost per acquisition:     $[X] (target: $[X])

BUSINESS GOAL REVIEW (Level 1 Metrics Tree):
  | Goal                | Target      | Actual     | Status    |
  |---------------------|-------------|------------|-----------|
  | Revenue             | $[target]   | $[actual]  | [On/Off]  |
  | CAC                 | <$[target]  | $[actual]  | [On/Off]  |
  | ROAS                | >[X]x       | [X]x       | [On/Off]  |
  | New customers       | [N]         | [N]        | [On/Off]  |

GRID PERFORMANCE:
  | Cell | Content Type | Spend   | Eng Rate | CPA    | ROAS  | Status      |
  |------|-------------|---------|----------|--------|-------|-------------|
  | 1    | WHY cold    | $[X]    | [X%]     | N/A    | N/A   | [status]    |
  | 5    | HOW warm    | $[X]    | [X%]     | N/A    | N/A   | [status]    |
  | 7    | WHY hot     | $[X]    | [X%]     | $[X]   | [X]x  | [status]    |
  | 9    | WHAT hot    | $[X]    | [X%]     | $[X]   | [X]x  | [status]    |

TESTING SUMMARY:
  Tests run this month:      [N]
  Tests killed:              [N] ([X%] kill rate — target 90%)
  Winners discovered:        [N]
  Best discovery:            [Description of best new winning ad/audience]

AUDIENCE HEALTH:
  Cold audience pool:        [N] (target: >[N])
  Warm audience pool:        [N] (change: [+/-N%])
  Hot audience pool:         [N] (change: [+/-N%])
  Average frequency:         [X] per user per week
  Audience saturation:       [X%] (target: <15%)

BUDGET EFFICIENCY:
  Test spend:    $[X] ([X%] of total) — [N] winners found
  Validate spend: $[X] ([X%] of total) — [N] graduated to scale
  Scale spend:   $[X] ([X%] of total) — ROAS: [X]x
  Wasted spend:  $[X] ([X%] of total) — spent on killed tests/underperformers

RECOMMENDATIONS FOR NEXT MONTH:
  1. [Specific recommendation with rationale]
  2. [Specific recommendation with rationale]
  3. [Specific recommendation with rationale]
  4. [Specific recommendation with rationale]
  5. [Content production needs — which grid cells need fresh creative]
```

---

## Section 9: Remarketing Sequence Map

```
## Remarketing Sequence Map

### Sequence Architecture

STAGE 1: AWARENESS (Days 1-7+)
  ┌─────────────────────────────────────────────────┐
  │  SERVE: Cell 1 (WHY) + Cell 2 (HOW intro)       │
  │  TO:    Cold audiences (interest, LAL, broad)    │
  │  FREQ:  1-2 impressions per day                  │
  │  EXIT:  Watches any video 15+ seconds            │
  └────────────────────┬────────────────────────────┘
                       │ TRIGGER: 15s video view
                       ▼
STAGE 2: CONSIDERATION (Days 8-21+)
  ┌─────────────────────────────────────────────────┐
  │  SERVE: Cell 4 (deeper WHY) + Cell 5 (HOW)      │
  │         + Cell 6 (soft WHAT)                     │
  │  ALSO:  Continue Cell 1 WHY as reinforcement     │
  │  TO:    Custom: WHY/intro viewers 15s+ (30d)     │
  │  FREQ:  1 impression per day per content type    │
  │  EXIT:  Watches HOW video 15s+ OR visits website │
  └────────────────────┬────────────────────────────┘
                       │ TRIGGER: HOW 15s view / site visit
                       ▼
STAGE 3: CONVERSION (Days 22-30+)
  ┌─────────────────────────────────────────────────┐
  │  SERVE: Cell 7 (testimonials) + Cell 8 (process) │
  │         + Cell 9 (direct offer)                  │
  │  ALSO:  Continue Cell 5 HOW as reinforcement     │
  │  TO:    Custom: HOW viewers 15s+ / site visitors │
  │  FREQ:  1 impression per day per content type    │
  │  EXIT:  Converts (purchase, lead, booking)       │
  └────────────────────┬────────────────────────────┘
                       │ TRIGGER: Conversion event
                       ▼
STAGE 4: POST-CONVERSION (Day 31+)
  ┌─────────────────────────────────────────────────┐
  │  SERVE: Loyalty content, upsell, referral asks   │
  │  TO:    Converters (separate campaign)           │
  │  FREQ:  2-3 impressions per week                 │
  │  NOTE:  EXCLUDE from all acquisition campaigns   │
  └─────────────────────────────────────────────────┘

### Fallback Rules

IF person stays in Stage 1 for 30+ days without progressing:
  → Serve fresh WHY content (new story, new angle)
  → If no progression after 60 days: remove from active targeting
  → They may not be a fit — stop spending on them

IF person stays in Stage 2 for 30+ days without progressing:
  → Serve Cell 7 testimonial content (social proof accelerator)
  → If no progression after 45 days: reduce frequency to 1x/week
  → Test different HOW content angles

IF person reaches Stage 3 but doesn't convert after 14 days:
  → Serve incentive (discount, bonus, urgency)
  → If no conversion after 30 days: reduce to 1x/week
  → Re-engage with fresh WHAT offer or Cell 7 testimonial

### Frequency Caps

| Stage         | Max Frequency      | Rationale                              |
|---------------|--------------------|-----------------------------------------|
| Awareness     | 2 impressions/day  | Don't overwhelm strangers               |
| Consideration | 1 impression/day   | Consistent touchpoints, not bombardment |
| Conversion    | 1 impression/day   | Urgency without desperation             |
| Post-Convert  | 3 per week         | Stay present without annoying customers |

### Audience Window Configuration

| Audience                    | Platform Setting                          |
|-----------------------------|-------------------------------------------|
| WHY viewers 15s+            | Video view custom audience, 30-day window |
| HOW viewers 15s+            | Video view custom audience, 30-day window |
| Page engagers               | Engagement custom audience, 30-day window |
| Website visitors (general)  | Website custom audience, 30-day window    |
| Website visitors (product)  | Website custom audience, 7-day window     |
| Cart/form abandoners        | Website custom audience, 7-day window     |
| Converters (exclusion)      | Website custom audience, 180-day window   |
```

---

## Section 10: Scaling Decision Framework

```
## Scaling Decision Framework

### When to Scale (Checklist)

ALL criteria must be met before increasing budget:

  [ ] Engagement rate >= 10% sustained for 7+ days
  [ ] Cost per result within target CPA (or improving)
  [ ] Comment sentiment is positive (not controversy-driven)
  [ ] Audience size supports increased spend (<10% saturation)
  [ ] Performance is consistent (not spike-driven from single share)
  [ ] Downstream metrics confirm traffic quality:
      [ ] Landing page conversion rate >= [target]
      [ ] Lead quality is acceptable (if lead gen)
      [ ] Sales team confirms lead relevance (if B2B)
  [ ] Frequency is below 3x per week per user
  [ ] No platform restrictions or account flags

### When NOT to Scale

  [ ] Engagement rate is >10% but driven by controversy/negative comments
  [ ] CPA is within target but lead quality is poor
  [ ] Performance is spike-driven (one viral share inflated numbers)
  [ ] Audience size is <50,000 (risk of rapid saturation)
  [ ] Landing page conversion rate is below target (funnel issue)
  [ ] Creative is >60 days old (fatigue is imminent)

### Scaling Pace Calculator

CURRENT BUDGET: $[X]/day
TARGET BUDGET:  $[Y]/day
MAX INCREASE:   30% per step
WAIT PERIOD:    3-5 days between steps

SCALING STEPS:
  Step 1: $[X] → $[X * 1.3] = $[new amount]  (Day 1)
  Step 2: $[new] → $[new * 1.3] = $[next]     (Day 5)
  Step 3: $[next] → $[next * 1.3] = $[next]   (Day 9)
  ...continue until target reached...

  Estimated days to reach $[Y]/day: [N] days

  AT EACH STEP, VERIFY:
    [ ] Engagement rate held within 15% of baseline
    [ ] CPA held within 25% of baseline
    [ ] Frequency not exceeding 3x/week
    [ ] No sudden cost spikes

### Creative Fatigue Early Warning System

FATIGUE SIGNALS (monitor daily for scaled campaigns):

| Signal                      | Warning Level | Critical Level | Action at Critical     |
|-----------------------------|---------------|----------------|------------------------|
| Engagement rate decline     | -15% from peak| -30% from peak | Pause, refresh creative|
| CTR decline                 | -20% from peak| -40% from peak | Test new hooks         |
| CPA increase                | +20% from avg | +40% from avg  | Pause, investigate     |
| Frequency                   | 3x/week       | 5x/week        | Expand audience        |
| First-time impression ratio | <50%          | <30%           | Audience exhausted     |
| Negative feedback rate      | >1%           | >3%            | Pause immediately      |

WHEN FATIGUE IS DETECTED:
  1. Do NOT increase budget further
  2. Reduce budget to last stable level
  3. Launch new $1/day test variants of the same content type
  4. Rotate in fresh creative to the same audience
  5. Test the fatigued creative against a new, untouched audience
  6. Plan content refresh for the affected grid cell
```

---

## Section 11: Cross-Agent Handoff Checklist

```
## Cross-Agent Handoff Checklist

### What Media Planner Needs FROM Other Agents

FROM OFFER ARCHITECT:
  [ ] Offer structure (pricing, tiers, bundles)
  [ ] Value proposition (primary benefit statement)
  [ ] Target CPA / allowable CAC (based on unit economics)
  [ ] Customer LTV estimate
  [ ] Competitive positioning
  [ ] Unique mechanism / differentiator

FROM WORDSMITH:
  [ ] Ad copy variations (3+ per grid cell)
  [ ] Headlines / hooks (5+ options)
  [ ] Body copy for different content types (WHY stories, HOW teaching, WHAT offers)
  [ ] CTA copy options
  [ ] Tone/voice guidelines

FROM FUNNEL ENGINEER:
  [ ] Landing page URL(s)
  [ ] Expected landing page conversion rate
  [ ] Tracking/pixel confirmation
  [ ] Conversion event definitions
  [ ] Form fields / checkout flow description
  [ ] Page load speed verification

### What Media Planner Sends TO Other Agents

TO GROWTH ENGINEER:
  [ ] Blended ROAS and CPA across all campaigns
  [ ] Winning audience profiles (who responds best)
  [ ] Channel efficiency comparison (which platform delivers best)
  [ ] Budget scaling recommendations
  [ ] Diminishing returns thresholds per channel

TO WORDSMITH:
  [ ] Which copy angles won / lost in testing (with data)
  [ ] Which hooks had highest 3-second view rates
  [ ] Which CTAs drove highest click-through rates
  [ ] Content refresh requests (which grid cells need new copy)

TO OFFER ARCHITECT:
  [ ] Market response signal (is the offer resonating?)
  [ ] If multiple audiences tested: which audience segment responds best to which offer angle
  [ ] If all creative fails: signal that the offer itself may be the problem
  [ ] CPA actuals vs. targets (is the offer economically viable at scale?)

### Escalation Triggers

TRIGGER: Level 3 healthy, Level 2 poor
  → ESCALATE TO: Funnel Architect
  → MESSAGE: "Ads are driving quality traffic (X% engagement, $X CPC) but landing
    page converts at only Y%. Funnel review needed before scaling ad spend."

TRIGGER: All creative tests fail across multiple audiences
  → ESCALATE TO: Offer Designer + Copywriter
  → MESSAGE: "Tested [N] creative variants across [N] audiences over [N] weeks.
    Best engagement rate was X%. No winning angles found. Recommend reviewing
    the offer positioning and messaging strategy before additional ad spend."

TRIGGER: Creative fatigue across all grid cells
  → ESCALATE TO: Copywriter
  → MESSAGE: "All active grid cells showing fatigue signals. Need fresh creative
    batch: [N] WHY scripts, [N] HOW topics, [N] WHAT offers. Priority cells: [list]."

TRIGGER: Winning audience discovered
  → ESCALATE TO: Offer Designer
  → MESSAGE: "Audience segment [description] converts at [X] CPA vs. [Y] average.
    Consider tailored offer or landing page for this segment."
```

---

## Output Delivery Checklist

Before delivering any Media Planner output, verify:

```
FINAL DELIVERY CHECKLIST

COMPLETENESS:
  [ ] All requested sections are filled (no placeholder text)
  [ ] Grid cells include specific content topics, not generic descriptions
  [ ] Budget numbers are calculated and internally consistent
  [ ] Metrics targets are based on industry data or client history
  [ ] Kill criteria are defined for every test

FRAMEWORK INTEGRITY:
  [ ] Dollar-a-Day testing precedes any scaling recommendation
  [ ] 3x3 Grid cells are properly mapped to audience temperatures
  [ ] Metrics Tree has all three levels with diagnostic logic
  [ ] Budget allocation follows Test → Validate → Scale phases
  [ ] Remarketing sequence has proper triggers and exclusions

CROSS-REFERENCES:
  [ ] Grid Map cells match Creative Brief cells
  [ ] Budget Plan allocates to the grid cells specified
  [ ] Audience Strategy audiences match Grid Map targeting
  [ ] Metrics Tree targets match KPI dashboard targets
  [ ] Test Plan tests map to Grid Map priorities

HONESTY CHECKS:
  [ ] If the offer seems weak: stated clearly (not hidden)
  [ ] If the funnel has issues: flagged before recommending ad spend
  [ ] If the budget is too small for proposed strategy: scaled down with note
  [ ] If timeline is unrealistic: stated with realistic alternative
  [ ] If a platform is wrong for this business: recommended against it

QUALITY SCORE: [  ] / 40  (See scoring rubric at top of template)
```

---

## Sources

- Dennis Yu Dollar-a-Day: https://blitzmetrics.com/dad/
- Dennis Yu 3x3 Grid: https://www.vendasta.com/blog/dennis-yu-facebook-video-marketing/
- BlitzMetrics Social Amplification Engine: https://blitzmetrics.com/sae/
- BlitzMetrics 9 Triangles Framework: https://blitzmetrics.com/how-to-keep-projects-rolling-by-using-the-9-triangles-framework/
- BlitzMetrics MAA Methodology: https://blitzmetrics.com/if-youre-not-following-maa-and-demonstrating-ldt-your-strategy-is-useless/
- Flighted Meta Ads Best Practices 2026: https://www.flighted.co/blog/meta-ads-best-practices
- Flighted Meta Ads Account Structure 2026: https://www.flighted.co/blog/best-meta-ads-account-structure-2026
- AdMetrics Creative Testing Velocity: https://www.admetrics.io/en/post/ad-creative-testing-velocity
- Improvado Frequency Capping: https://improvado.io/blog/understanding-frequency-capping
- Measured Diminishing Return Curves: https://www.measured.com/faq/media-mix-modeling-diminishing-return-curves-mmm-budget-decision/
- Growth-onomics Cross-Channel Budget: https://growth-onomics.com/cross-channel-budget-allocation-strategies/
- Social Media Examiner Facebook Algorithm 2026: https://www.socialmediaexaminer.com/facebook-ad-algorithm-changes-for-2026-what-marketers-need-to-know/
