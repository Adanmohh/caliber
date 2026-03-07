# Testing Business Ideas: Strategyzer Experiment Library & Methodology

> Based on "Testing Business Ideas: A Field Guide for Rapid Experimentation"
> by David J. Bland & Alexander Osterwalder (Strategyzer/Wiley, 2019)

## Core Philosophy

Every business idea is a collection of hypotheses. Before investing significant
resources, systematically test the riskiest assumptions using the cheapest,
fastest experiments that produce sufficient evidence. The goal is learning
velocity — not confirmation bias.

The Strategyzer methodology provides:
- A library of 44 experiments organized by evidence strength
- A structured testing sequence from cheap/weak to expensive/strong evidence
- Experiment cards that standardize hypothesis testing
- Evidence levels that define when you have "enough" proof

---

## Evidence Strength Spectrum

Experiments produce evidence of varying strength. The spectrum runs from
weak (opinions, stated preferences) to strong (actual market behavior, revenue).

```
EVIDENCE STRENGTH SPECTRUM
==========================

Weak Evidence                                          Strong Evidence
(Opinions)                                        (Market Behavior)
|                                                              |
v                                                              v
+----------+----------+----------+----------+----------+-------+
| Desk     | Explora- | Pitch &  | Concierge| Prototype| Live  |
| Research | tion     | Smoke    | & Wizard | & MVP    | Market|
|          |          | Tests    | of Oz    |          | Tests |
+----------+----------+----------+----------+----------+-------+
  Cost: $     Cost: $   Cost: $$   Cost: $$   Cost: $$$  Cost: $$$$
  Time: hrs   Time: days Time: days Time: wks  Time: wks  Time: months
  Evidence:   Evidence:  Evidence:  Evidence:  Evidence:  Evidence:
  Very Weak   Weak       Medium     Medium+    Strong     Very Strong
```

### Key Principle: Evidence Escalation

Never jump to expensive experiments when cheap ones could invalidate the
assumption. Follow the escalation ladder:

1. Can desk research answer this? (hours, nearly free)
2. Can we learn by talking to people? (days, minimal cost)
3. Can we test interest without building anything? (days, small budget)
4. Can we simulate the experience manually? (weeks, moderate cost)
5. Do we need a working prototype? (weeks, significant cost)
6. Do we need real market data? (months, major investment)

---

## The Complete Experiment Library (44 Experiments)

### Category 1: DISCOVERY EXPERIMENTS (Evidence Level: Weak to Medium)

These experiments help you go from "we have no idea" to "we have directional
signals." They are cheap, fast, and produce opinions and qualitative insights.

#### 1A. Desk Research & Data Analysis (6 experiments)

| # | Experiment          | Cost | Time    | Evidence | Best For                    |
|---|---------------------|------|---------|----------|-----------------------------|
| 1 | Online Research     | $    | Hours   | Very Weak| Market sizing, trends       |
| 2 | Industry Analysis   | $    | Hours   | Very Weak| Competitive landscape       |
| 3 | Search Trend Analysis| $   | Hours   | Weak     | Demand validation           |
| 4 | Blog/Forum Mining   | $    | Hours   | Weak     | Pain point discovery        |
| 5 | Customer Support Analysis| $| Hours  | Weak     | Known problem validation    |
| 6 | Sales Force Feedback| $    | Hours   | Weak     | Internal intelligence       |

**When to use:** Always start here. If desk research can kill an idea, you
save weeks of work. AI agent systems can execute these experiments directly
through real-time research capabilities.

**Example — Dropbox:** Before building anything, Drew Houston researched
existing file sync solutions and identified that all required manual effort.
Search trend analysis confirmed growing demand for "cloud storage" and
"file sync" solutions.

#### 1B. Exploration & Interviews (8 experiments)

| # | Experiment              | Cost | Time   | Evidence | Best For                 |
|---|-------------------------|------|--------|----------|--------------------------|
| 7 | Customer Interviews     | $    | Days   | Weak     | Problem discovery        |
| 8 | Expert Stakeholder Interviews| $| Days  | Weak     | Domain validation        |
| 9 | Partner/Supplier Interviews| $ | Days   | Weak     | Feasibility signals      |
|10 | Customer Observation    | $    | Days   | Weak     | Behavior vs. stated pref |
|11 | Day-in-the-Life Study   | $$   | Week   | Medium   | Context understanding    |
|12 | Netnography             | $    | Days   | Weak     | Online community insight |
|13 | Focus Groups            | $$   | Days   | Weak     | Group dynamics, reactions |
|14 | Discovery Surveys       | $    | Days   | Weak     | Quantify qualitative     |

**When to use:** After desk research confirms the space is worth exploring.
Interviews are the single most underrated experiment — they produce insight
no other method can match.

**Example — Airbnb:** Chesky and Gebbia conducted extensive interviews with
both hosts and travelers to understand pain points with existing lodging
options. They discovered travelers wanted local, authentic experiences — not
just cheap rooms.

#### 1C. Interest Discovery (6 experiments)

| # | Experiment              | Cost | Time   | Evidence | Best For                 |
|---|-------------------------|------|--------|----------|--------------------------|
|15 | Landing Page / Smoke Test| $$ | Days   | Medium   | Demand signal            |
|16 | Ad Campaign Tracking    | $$   | Days   | Medium   | Interest at scale        |
|17 | Email Campaign          | $    | Days   | Medium   | Audience interest        |
|18 | Social Media Campaign   | $    | Days   | Weak-Med | Viral potential          |
|19 | Referral Testing        | $    | Days   | Medium   | Word-of-mouth signal     |
|20 | Link Tracking           | $    | Days   | Weak     | Feature interest ranking |

**When to use:** When you need to move from qualitative insights to
quantitative demand signals without building the actual product.

**Example — Buffer:** Joel Gascoigne created a simple landing page describing
Buffer's value proposition (scheduled social media posts). A "Plans and
Pricing" button led to a "we're not ready yet" email signup. 40% click-through
on pricing validated demand before a single line of product code was written.

### Category 2: VALIDATION EXPERIMENTS (Evidence Level: Medium to Strong)

These experiments produce behavioral evidence — what people DO, not what
they SAY they'll do. They cost more but generate stronger evidence.

#### 2A. Pitch & Smoke Tests (6 experiments)

| # | Experiment              | Cost | Time   | Evidence | Best For                 |
|---|-------------------------|------|--------|----------|--------------------------|
|21 | Explainer Video         | $$   | Days   | Medium   | Complex value props      |
|22 | Storyboard/Scenario     | $    | Days   | Medium   | Workflow validation      |
|23 | Data Sheet / Brochure   | $    | Days   | Medium   | B2B interest             |
|24 | Paper Prototype         | $    | Days   | Medium   | Usability signals        |
|25 | Digital Prototype       | $$   | Week   | Medium+  | UX validation            |
|26 | Presale / Letter of Intent| $  | Days   | Strong   | Willingness to pay       |

**When to use:** When discovery experiments have confirmed problem-solution
fit and you need to validate the specific solution approach.

**Example — Dropbox:** Drew Houston's famous 3-minute explainer video
generated 70,000+ email signups overnight — validating massive demand for
a simple file sync solution before the product was built.

#### 2B. Concierge & Wizard of Oz (6 experiments)

| # | Experiment              | Cost | Time   | Evidence | Best For                 |
|---|-------------------------|------|--------|----------|--------------------------|
|27 | Concierge MVP           | $$   | Weeks  | Strong   | Service validation       |
|28 | Wizard of Oz            | $$   | Weeks  | Strong   | Tech feasibility bypass  |
|29 | Piecemeal MVP           | $$   | Weeks  | Strong   | Integration validation   |
|30 | Micro-Site              | $$   | Days   | Medium+  | Niche market test        |
|31 | Mock Sale               | $$   | Days   | Strong   | Purchase intent          |
|32 | 3D Print / Physical Mock| $$   | Week   | Medium+  | Physical product test    |

**When to use:** When you need to validate the full customer experience
without building the actual technology. These are powerful because customers
interact with what feels like a real product.

**Concierge vs. Wizard of Oz:**
```
CONCIERGE                          WIZARD OF OZ
===========                        =============
Customer KNOWS it's manual         Customer THINKS it's automated
You deliver the service by hand    You simulate automation manually
Tests: value of the outcome        Tests: value + UX of automation
Example: Zappos (buy shoes         Example: Aardvark (humans answering
manually from stores,              questions behind a "search engine"
ship to customers)                 interface)
```

**Example — Zappos:** Nick Swinmurn photographed shoes at local stores,
posted them online, and when orders came in, bought the shoes at retail
and shipped them. This validated that people would buy shoes online —
the riskiest assumption — without any inventory investment.

**Example — Food on the Table:** Manuel Rosso personally went grocery
shopping for his first customer, selecting recipes based on her preferences
and store sales. This concierge approach validated the value proposition
before building any software.

#### 2C. Prototype & MVP Experiments (8 experiments)

| # | Experiment              | Cost | Time   | Evidence | Best For                 |
|---|-------------------------|------|--------|----------|--------------------------|
|33 | Single Feature MVP      | $$$  | Weeks  | Strong   | Core value validation    |
|34 | Crowdfunding Campaign   | $$   | Weeks  | Very Strong| Demand + willingness to pay|
|35 | Split (A/B) Test        | $$   | Weeks  | Strong   | Optimization             |
|36 | Pre-Order               | $$   | Days   | Very Strong| Revenue validation     |
|37 | Spoof / 404 Test        | $    | Days   | Medium   | Feature demand ranking   |
|38 | Feature Stub            | $    | Days   | Medium   | Interest signal          |
|39 | Clickable Prototype     | $$   | Week   | Medium+  | UX flow validation       |
|40 | Simulated Sale          | $$   | Days   | Strong   | Price sensitivity        |

**When to use:** When concierge/WoZ experiments have validated the value
proposition and you need to prove the product can work at scale or validate
specific product decisions.

**Example — Pebble (Crowdfunding):** Pebble raised $10.3M on Kickstarter,
validating both demand and willingness to pay for a smartwatch. The campaign
provided the strongest possible evidence: actual revenue from real customers.

**Example — Groupon:** Started as a WordPress blog with manually-generated
PDF coupons emailed to subscribers. This single-feature MVP validated the
core value proposition before building the full platform.

#### 2D. Live Market Tests (4 experiments)

| # | Experiment              | Cost | Time    | Evidence    | Best For              |
|---|-------------------------|------|---------|-------------|-----------------------|
|41 | Pop-Up Store / Event    | $$$  | Weeks   | Very Strong | Physical product test |
|42 | Beta Launch             | $$$  | Months  | Very Strong | Full product test     |
|43 | Channel Partner Pilot   | $$$  | Months  | Very Strong | Distribution test     |
|44 | Customer Co-Creation    | $$   | Weeks   | Strong      | Deep validation       |

**When to use:** Only when earlier experiments have validated core assumptions
and you need final confirmation before scaling. These are expensive — never
start here.

---

## The Experiment Card

Every experiment must be documented using a structured experiment card. This
is the unit of work in the testing process.

### Experiment Card Template

```
+================================================================+
|                     EXPERIMENT CARD #___                        |
+================================================================+
| HYPOTHESIS                                                      |
| We believe that [specific assumption]                           |
| for [customer segment]                                          |
| because [reasoning/evidence so far]                             |
+----------------------------------------------------------------+
| TEST                                                            |
| Experiment Type: [from library]                                 |
| Description: [what we will actually do]                         |
| Duration: [max time allowed]                                    |
| Cost: [budget allocated]                                        |
+----------------------------------------------------------------+
| METRIC                                                          |
| We will measure: [specific, quantifiable metric]                |
| Data source: [how we will collect this data]                    |
+----------------------------------------------------------------+
| CRITERIA                                                        |
| Pass: [metric] >= [threshold] = assumption VALIDATED            |
| Fail: [metric] < [threshold] = assumption INVALIDATED          |
| Inconclusive: [conditions that would require re-testing]        |
+----------------------------------------------------------------+
| EVIDENCE STRENGTH                                               |
| Level: [Very Weak / Weak / Medium / Strong / Very Strong]      |
| Sufficient for: [what decision this evidence supports]          |
+----------------------------------------------------------------+
| RESULTS (completed after experiment)                            |
| Actual metric: ___                                              |
| Outcome: VALIDATED / INVALIDATED / INCONCLUSIVE                 |
| Key insight: ___                                                |
| Next action: ___                                                |
+================================================================+
```

### Writing Strong Hypotheses

A hypothesis must be:
- **Specific:** "30% of urban professionals aged 25-35 will sign up" not "people will like it"
- **Falsifiable:** Must be possible to get a "no" result
- **Bounded:** Clear customer segment, time frame, and metric
- **Connected:** Linked to a specific Business Model Canvas building block

**Formula:**
```
We believe [customer segment] will [expected behavior]
when [condition/trigger]
because [reasoning].

We will know this is true when [metric] reaches [threshold]
within [time period].
```

**Good example:**
"We believe that freelance designers (segment) will pay $29/month (behavior)
for an automated invoicing tool (condition) because 73% of interviewed
designers cited invoicing as their top administrative pain point (reasoning).
We will know this is true when 5% of landing page visitors enter credit
card information (metric >= threshold) within 2 weeks (time)."

**Bad example:**
"We believe people will like our app." (Not specific, not falsifiable,
no metric, no threshold, no time bound.)

---

## The Testing Sequence

### Recommended Progression

```
PHASE 1: DESK RESEARCH (Days 1-3)
================================
Goal: Kill obviously bad ideas for free
Experiments: Online research, search trends, competitor analysis
Evidence needed: Is the market real? Are others solving this?
AI agent advantage: Can execute this phase autonomously via
real-time web research and computational analysis

        |
        v  (If market exists and problem is real)

PHASE 2: EXPLORATION (Days 4-14)
================================
Goal: Validate problem exists and matters
Experiments: Customer interviews (10-15), observation, surveys
Evidence needed: Do real people have this problem? How do they
currently solve it? How painful is it?
AI agent advantage: Can synthesize interview transcripts,
identify patterns across responses, flag contradictions

        |
        v  (If problem is validated)

PHASE 3: PITCH & SMOKE TESTS (Days 15-28)
==========================================
Goal: Validate interest in your specific solution
Experiments: Landing page, explainer video, ad campaigns
Evidence needed: Will people engage with your solution concept?
AI agent advantage: Can design experiment parameters, set up
tracking metrics, analyze conversion data in real time

        |
        v  (If interest is validated)

PHASE 4: CONCIERGE / WIZARD OF OZ (Weeks 5-8)
===============================================
Goal: Validate the experience delivers value
Experiments: Manual service delivery, simulated automation
Evidence needed: Do customers get value? Will they come back?
AI agent advantage: Can track engagement metrics, measure
retention signals, compare against pass/fail criteria

        |
        v  (If value delivery is validated)

PHASE 5: PROTOTYPE & MVP (Weeks 9-16)
======================================
Goal: Validate the product can work at scale
Experiments: Single-feature MVP, crowdfunding, pre-orders
Evidence needed: Will people pay? Can we deliver repeatedly?
AI agent advantage: Can monitor KPIs, run statistical analysis
on A/B tests, flag when pass/fail criteria are met

        |
        v  (If product-market fit signals are present)

PHASE 6: SCALE EXPERIMENTS (Months 4-6)
========================================
Goal: Validate growth engine and unit economics
Experiments: Beta launch, channel pilots, growth experiments
Evidence needed: Can we acquire customers profitably?
```

### When Evidence Is Sufficient

| Decision Stage            | Evidence Level Needed | Typical Experiments       |
|---------------------------|-----------------------|---------------------------|
| Should we explore this?   | Very Weak (opinions)  | Desk research, interviews |
| Should we invest time?    | Weak (interest signals)| Landing page, surveys    |
| Should we build a prototype?| Medium (behavior)   | Smoke tests, presales    |
| Should we build the product?| Strong (transactions)| Concierge, MVP, pre-orders|
| Should we scale?          | Very Strong (unit econ)| Beta, channel pilots     |

---

## Matching Experiments to Assumption Types

### Desirability Assumptions (Do customers want this?)

Test these FIRST. If nobody wants it, nothing else matters.

| Assumption                           | Best Experiments                    |
|--------------------------------------|-------------------------------------|
| Customers have this problem          | Interviews, observation, surveys    |
| Problem is painful enough to solve   | Day-in-the-life, interviews         |
| Customers want THIS solution         | Landing page, explainer video       |
| Customers will switch from current   | Smoke test, mock sale               |
| Customers will pay $X               | Pre-sale, crowdfunding, price test  |

### Viability Assumptions (Can this make money?)

Test these SECOND. A desirable product that loses money is a hobby.

| Assumption                           | Best Experiments                    |
|--------------------------------------|-------------------------------------|
| Revenue model works                  | Pre-sale, simulated sale            |
| Unit economics are positive          | Concierge (track actual costs)      |
| Customer acquisition cost < LTV      | Ad campaigns, channel pilot         |
| Market is large enough               | Desk research, search trends        |
| Pricing is competitive               | Split test, competitor analysis     |

### Feasibility Assumptions (Can we build/deliver this?)

Test these LAST. Do not solve engineering problems for products nobody wants.

| Assumption                           | Best Experiments                    |
|--------------------------------------|-------------------------------------|
| Technology can be built              | Prototype, Wizard of Oz             |
| We can source/manufacture            | Supplier interviews, 3D print       |
| Regulations allow it                 | Expert interviews, desk research    |
| Team has required skills             | Piecemeal MVP, partner interviews   |
| Can scale to target volume           | Beta launch, channel pilot          |

---

## Common Experiment Design Mistakes

### Mistake 1: Confirmation Bias in Design
**Problem:** Designing experiments that can only produce positive results.
**Fix:** Before running, ask: "What result would kill this idea?" If you
cannot answer, redesign the experiment.

### Mistake 2: Vanity Metrics
**Problem:** Measuring page views instead of sign-ups, likes instead of purchases.
**Fix:** Only measure metrics that represent the actual behavior you need
(sign-ups, purchases, retention, referrals).

### Mistake 3: No Pass/Fail Criteria Set in Advance
**Problem:** Deciding what "success" means AFTER seeing results.
**Fix:** Write the pass/fail threshold on the experiment card BEFORE running.
Get team agreement on the threshold.

### Mistake 4: Testing Too Many Variables
**Problem:** Changing multiple things simultaneously so you cannot isolate
what caused the result.
**Fix:** One hypothesis per experiment card. Control all variables except
the one being tested.

### Mistake 5: Skipping Evidence Levels
**Problem:** Jumping straight to building an MVP without cheaper validation.
**Fix:** Follow the testing sequence. If desk research kills the idea,
you saved months. Always ask: "What is the cheapest way to get this evidence?"

### Mistake 6: Small Sample Sizes
**Problem:** Declaring an assumption validated based on 3 interviews or
50 landing page visitors.
**Fix:** Minimum sample sizes by experiment type:
- Interviews: 10-15 minimum (until patterns repeat)
- Landing pages: 200+ unique visitors for meaningful conversion data
- Surveys: 100+ responses for quantitative claims
- A/B tests: Use statistical significance calculators (p < 0.05)
- Pre-sales: 20+ purchases from strangers (not friends/family)

---

## AI Agent Execution Advantages

An AI agent system executing The Experiment Designer methodology gains specific
advantages over manual execution:

1. **Parallel Desk Research:** The agent can simultaneously research market
   size, competitors, search trends, and regulatory landscape — completing
   Phase 1 in minutes rather than days.

2. **Structured Extraction:** The agent can parse Business Model Canvas and
   Value Proposition Canvas documents to automatically extract assumptions,
   categorize them (D/V/F), and generate initial hypothesis statements.

3. **Experiment Card Generation:** The agent can produce complete experiment
   cards with appropriate metrics and thresholds based on the assumption
   type, evidence level needed, and available resources.

4. **Cross-Referencing:** The agent can cross-reference experiment results
   against the original assumption map, automatically updating evidence
   levels and flagging which assumptions remain untested.

5. **Pattern Matching:** The agent can compare the current business model's
   assumptions against patterns from known case studies (Zappos, Dropbox,
   Buffer, Airbnb, Groupon, Pebble) to suggest which experiments have
   worked for similar assumption types.

---

## AI-Accelerated Experiments (2025+)

The emergence of AI tools has created new experiment types and dramatically
reduced cost/time for existing ones.

### New AI-Era Experiment Types

| # | Experiment Type         | What It Does                                          | Cost  | Time   | Evidence  | Best For                        |
|---|------------------------|-------------------------------------------------------|-------|--------|-----------|----------------------------------|
| 45| No-Code AI MVP         | Build functional prototype using AI code generation   | $     | Days   | Medium+   | Technical feasibility + UX       |
| 46| AI Landing Page Test   | Generate and test multiple landing page variants via AI| $     | Hours  | Medium    | Message-market fit at speed      |
| 47| Synthetic User Testing | AI-simulated user personas test flows and give feedback| $     | Hours  | Weak-Med  | Early UX hypothesis generation   |
| 48| Chatbot-as-Concierge   | Deploy AI chatbot to deliver service manually tested before| $$ | Days  | Strong    | Service value validation at scale|
| 49| LLM Survey Design      | AI generates, distributes, and analyzes survey responses| $   | Hours  | Weak-Med  | Rapid qualitative signal at scale|
| 50| AI Competitor Analysis | AI-driven systematic teardown of competitor positioning| $    | Hours  | Weak      | Competitive landscape mapping    |

### Updated Cost/Time Estimates: AI-Era vs Traditional

| Experiment Type        | Traditional Cost | Traditional Time | AI-Era Cost | AI-Era Time | Acceleration |
|------------------------|-----------------|------------------|-------------|-------------|--------------|
| Landing page test      | $$              | Days             | $           | Hours       | 5-10x        |
| Functional prototype   | $$$             | Weeks            | $$          | Days        | 5-7x         |
| Competitor analysis    | $$              | Days             | $           | Hours       | 3-5x         |
| Survey design + analysis| $$             | Days             | $           | Hours       | 3-5x         |
| Customer interview prep | $              | Days             | $           | Hours       | 2-3x         |
| Concierge MVP          | $$              | Weeks            | $$          | Days        | 3-5x         |
| A/B test setup         | $$              | Days             | $           | Hours       | 3-5x         |

**Key insight:** AI acceleration does NOT change the evidence hierarchy.
A synthetic user test still produces weaker evidence than a real customer
interview. Faster experiments should mean more experiments, not skipping
evidence levels.

**Anti-pattern:** Using AI-generated "customer feedback" as a substitute
for talking to real customers. AI-simulated responses are HYPOTHESES,
not validation. Label all synthetic data as [SIMULATED].

---

## Sources and Attribution

- Bland, D.J. & Osterwalder, A. (2019). "Testing Business Ideas: A Field
  Guide for Rapid Experimentation." Wiley/Strategyzer.
- Strategyzer Experiment Library: https://www.strategyzer.com/library/experiment-library
- Strategyzer Test Card: https://www.strategyzer.com/library/validate-your-ideas-with-the-test-card
- Ries, E. (2011). "The Lean Startup." Crown Business.
- Osterwalder, A. & Pigneur, Y. (2010). "Business Model Generation." Wiley.
