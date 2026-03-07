# Experiment Prioritization: ICE/RICE Scoring & Assumption Mapping

## Purpose

This reference covers the complete prioritization workflow: extracting
assumptions from business model artifacts, scoring them by risk, selecting
the right scoring framework (ICE or RICE), sequencing experiments, and
making pivot/persevere decisions. The goal is to replace gut-feel
prioritization with structured, repeatable scoring systems.

---

## Part 1: Assumption Mapping

### What Is an Assumption?

An assumption is anything that must be true for your business model to work
but that you have not yet validated with evidence. Every Business Model
Canvas (BMC) and Value Proposition Canvas (VPC) contains dozens of
assumptions — most of them invisible to the team.

### The Three Risk Categories

All business model assumptions fall into three categories, tested in this
strict priority order:

```
PRIORITY ORDER FOR TESTING
===========================

 1. DESIRABILITY (Test First)
    "Do customers want this?"
    +------------------------------------------+
    | - Customers have the stated problem       |
    | - Problem is painful enough to pay for    |
    | - Our solution addresses the problem      |
    | - Customers prefer our solution to alts   |
    | - Customers will switch from current      |
    | - Target segment is reachable             |
    +------------------------------------------+

 2. VIABILITY (Test Second)
    "Can this make money?"
    +------------------------------------------+
    | - Revenue model generates enough income   |
    | - Customers will pay our target price     |
    | - Unit economics are positive             |
    | - CAC < Customer Lifetime Value           |
    | - Market is large enough to sustain us    |
    | - Revenue timing supports cash flow       |
    +------------------------------------------+

 3. FEASIBILITY (Test Last)
    "Can we build and deliver this?"
    +------------------------------------------+
    | - Technology can be developed             |
    | - Team has necessary capabilities         |
    | - Key resources are obtainable            |
    | - Partners will collaborate               |
    | - Regulatory environment allows it        |
    | - Operations can scale to target volume   |
    +------------------------------------------+
```

**Why this order?** Desirability beats viability because a desirable product
can find a business model, but a viable business model without desirability
has no customers. Viability beats feasibility because you should never
solve engineering challenges for a product nobody wants or that cannot
make money.

### Extracting Assumptions from the BMC

Systematically go through each BMC building block and extract the implicit
assumptions:

| BMC Building Block     | Category    | Example Assumptions to Extract           |
|------------------------|-------------|------------------------------------------|
| Customer Segments      | Desirability| "Our target segment is [X] people"       |
|                        |             | "They share characteristic [Y]"          |
|                        |             | "They are reachable through [channel]"   |
| Value Propositions     | Desirability| "Customers have pain [X]"                |
|                        |             | "Our solution relieves pain [X]"         |
|                        |             | "Gain [Y] matters enough to pay for"     |
| Channels               | Desirability| "Customers can be reached via [channel]" |
|                        | Viability   | "Channel cost is sustainable at [X]"     |
| Customer Relationships | Desirability| "Customers want [self-serve/personal]"   |
|                        | Viability   | "Retention rate will be >= [X]%"         |
| Revenue Streams        | Viability   | "Customers will pay $[X] for this"       |
|                        |             | "Revenue model [subscription/one-time]"  |
| Key Resources          | Feasibility | "We can acquire/build [resource]"        |
| Key Activities         | Feasibility | "We can perform [activity] at scale"     |
| Key Partnerships       | Feasibility | "Partner [X] will work with us"          |
| Cost Structure         | Viability   | "Total cost per unit is <= $[X]"         |
|                        |             | "Fixed costs are manageable at $[Y]/mo"  |

### Extracting Assumptions from the VPC

| VPC Element            | Category    | Example Assumptions to Extract           |
|------------------------|-------------|------------------------------------------|
| Customer Jobs          | Desirability| "Customers are trying to do [job]"       |
|                        |             | "This job is [functional/social/emotional]"|
| Pains                  | Desirability| "Pain [X] is severe (rated [N]/10)"      |
|                        |             | "Current solutions cause pain [Y]"       |
| Gains                  | Desirability| "Customers desire gain [X]"              |
|                        |             | "Gain [X] would motivate switching"      |
| Pain Relievers         | Desirability| "Our feature [X] relieves pain [Y]"      |
| Gain Creators          | Desirability| "Our feature [X] creates gain [Y]"       |
| Products & Services    | Feasibility | "We can build/deliver [product/service]" |

### The Assumption Risk Matrix

Once assumptions are extracted, plot each one on a 2x2 matrix:

```
ASSUMPTION RISK MATRIX
======================

          High Importance
               |
    +----------+----------+
    |          |          |
    | MONITOR  | TEST     |
    | (Medium  | FIRST    |
    |  Priority)| (Highest |
    |          |  Priority)|
    |          |          |
----+----------+----------+---- High Uncertainty
    |          |          |
    | IGNORE   | EXPLORE  |
    | (Lowest  | (Low     |
    |  Priority)|  Priority)|
    |          |          |
    +----------+----------+
               |
          Low Importance
```

**Scoring Importance (1-5):**
- 5: If wrong, business model completely fails
- 4: If wrong, business model is severely impaired
- 3: If wrong, significant revenue/growth impact
- 2: If wrong, minor operational inconvenience
- 1: If wrong, negligible impact

**Scoring Uncertainty (1-5):**
- 5: Pure speculation — zero evidence
- 4: Anecdotal — based on gut feel or 1-2 data points
- 3: Directional — some qualitative evidence exists
- 2: Supported — quantitative evidence exists but is limited
- 1: Validated — strong evidence from multiple sources

**Risk Score = Importance x Uncertainty** (Range: 1-25)

| Risk Score | Priority  | Action                                    |
|------------|-----------|-------------------------------------------|
| 20-25      | Critical  | Test immediately with strong experiments   |
| 15-19      | High      | Test in current sprint                     |
| 10-14      | Medium    | Test in next sprint                        |
| 5-9        | Low       | Monitor; test if resources allow           |
| 1-4        | Negligible| Accept the risk; do not allocate resources |

---

## Part 2: ICE Scoring Framework

### Overview

ICE scoring was developed by Sean Ellis (GrowthHackers) for rapid
prioritization of growth experiments. It is simple, fast, and works well
when you lack detailed reach data.

### Components

**Impact (1-10):** How much will this experiment move the needle if the
hypothesis is validated?

| Score | Definition                                                  |
|-------|-------------------------------------------------------------|
| 10    | Game-changing — validates/kills the entire business model   |
| 8-9   | Major — validates a critical assumption with strong evidence|
| 6-7   | Significant — validates an important assumption             |
| 4-5   | Moderate — produces useful directional evidence             |
| 2-3   | Minor — confirms something we mostly already knew           |
| 1     | Negligible — trivial learning                               |

**Confidence (1-10):** How confident are you in your Impact and Ease
estimates? This is a meta-score — it measures the quality of your other
scores.

| Score | Definition                                                  |
|-------|-------------------------------------------------------------|
| 10    | Data-driven — based on similar experiments we have run      |
| 8-9   | High — strong analogies from comparable businesses          |
| 6-7   | Medium — some supporting data, reasonable assumptions       |
| 4-5   | Low — mostly gut feel with limited supporting evidence      |
| 2-3   | Very low — pure speculation                                 |
| 1     | Guess — no basis for the estimate                           |

**Ease (1-10):** How easy is this experiment to set up and run? Inverse
of effort.

| Score | Definition                                                  |
|-------|-------------------------------------------------------------|
| 10    | Trivial — can be done in hours with no budget               |
| 8-9   | Easy — 1-2 days, minimal resources                          |
| 6-7   | Moderate — 1 week, some budget needed                       |
| 4-5   | Effort — 2-4 weeks, dedicated team member                   |
| 2-3   | Hard — 1-2 months, significant resources                    |
| 1     | Very hard — 3+ months, major investment                     |

### Formula

```
ICE Score = Impact x Confidence x Ease
            ----------------------------
                       3

Range: 0.33 to 10 (when using the averaged version)
```

**Alternative (multiplicative):** ICE = Impact x Confidence x Ease
Range: 1 to 1000. This version creates more spread between options.

**Recommended:** Use the multiplicative version for experiment prioritization
as it better differentiates between options and penalizes low scores more
heavily.

### ICE Scoring Example

| Experiment            | Impact | Confidence | Ease | ICE Score | Rank |
|-----------------------|--------|------------|------|-----------|------|
| Customer interviews   | 7      | 8          | 9    | 504       | 1    |
| Landing page test     | 8      | 6          | 7    | 336       | 2    |
| Concierge MVP         | 9      | 5          | 4    | 180       | 4    |
| Competitor analysis   | 5      | 9          | 10   | 450       | 3 *  |
| A/B price test        | 8      | 4          | 3    | 96        | 5    |

*Note: Competitor analysis scores high on ICE due to ease, but produces
weak evidence. This is a known limitation — see "When to Use RICE" below.

---

## Part 3: RICE Scoring Framework

### Overview

RICE was developed by Intercom for product feature prioritization but adapts
well to experiment prioritization. It adds Reach as a fourth dimension,
making it more precise when you have data about how many people or
assumptions an experiment will affect.

### Components

**Reach (number):** How many assumptions, customer segments, or data points
will this experiment address in a given time period?

| Context              | Reach Measurement                              |
|----------------------|------------------------------------------------|
| Landing page test    | Expected unique visitors in test period         |
| Customer interviews  | Number of interviews planned                    |
| Survey               | Expected responses                              |
| A/B test             | Users exposed to test variant                   |
| Desk research        | Number of assumptions addressable               |

**Impact (0.25-3):** Expected impact per unit of reach.

| Score | Definition                                                  |
|-------|-------------------------------------------------------------|
| 3     | Massive — will definitively validate or kill an assumption  |
| 2     | High — will produce strong directional evidence             |
| 1     | Medium — will produce useful but limited evidence           |
| 0.5   | Low — will provide weak signals                             |
| 0.25  | Minimal — marginal learning expected                        |

**Confidence (percentage):** How sure are you about Reach, Impact, and
Effort estimates?

| Score | Definition                                                  |
|-------|-------------------------------------------------------------|
| 100%  | High — based on data from past experiments                  |
| 80%   | Medium — based on reasonable estimates and some data        |
| 50%   | Low — based on intuition, limited data                      |
| 20%   | Moonshot — pure guess, but high potential payoff            |

**Effort (person-weeks):** Total effort to design, run, and analyze the
experiment. Use person-weeks as the unit.

### Formula

```
RICE Score = (Reach x Impact x Confidence) / Effort

Higher is better. Unit: impact-units per person-week.
```

### RICE Scoring Example

| Experiment            | Reach | Impact | Confidence | Effort | RICE  | Rank |
|-----------------------|-------|--------|------------|--------|-------|------|
| 15 customer interviews| 15    | 2      | 80%        | 2      | 12.0  | 2    |
| Landing page (500 vis)| 500   | 1      | 80%        | 1      | 400.0 | 1    |
| Concierge MVP (5 cust)| 5     | 3      | 50%        | 4      | 1.88  | 4    |
| Survey (200 responses)| 200   | 0.5    | 80%        | 1      | 80.0  | 3    |
| Beta launch (50 users)| 50    | 3      | 50%        | 12     | 6.25  | 5    |

---

## Part 4: ICE vs. RICE Decision Guide

```
WHEN TO USE WHICH FRAMEWORK
============================

Use ICE when:                    Use RICE when:
+-----------------------------+  +-----------------------------+
| - Early stage (no data)     |  | - You have reach estimates  |
| - Quick prioritization      |  | - Comparing across types    |
| - < 10 experiments to rank  |  | - Need rigorous comparison  |
| - Team is new to scoring    |  | - Stakeholder buy-in needed |
| - Qualitative experiments   |  | - Quantitative experiments  |
| - Discovery phase           |  | - Validation phase          |
+-----------------------------+  +-----------------------------+
```

### Framework Comparison

| Dimension      | ICE                        | RICE                         |
|----------------|----------------------------|------------------------------|
| Components     | 3 (Impact, Confidence, Ease)| 4 (Reach, Impact, Conf, Effort)|
| Scales         | 1-10 for each              | Mixed (number, 0.25-3, %, weeks)|
| Formula        | I x C x E                 | (R x I x C) / E              |
| Speed          | Fast (2 min per item)      | Moderate (5 min per item)     |
| Precision      | Lower                      | Higher                        |
| Data needed    | Minimal                    | Reach and effort estimates    |
| Best phase     | Discovery                  | Validation                    |
| Creator        | Sean Ellis / GrowthHackers | Intercom                      |

### Hybrid Approach (Recommended)

For experiment prioritization, use a two-stage process:

1. **Stage 1 (ICE):** Quick-score all extracted assumptions to identify the
   top 10. Takes 20 minutes for 30+ assumptions.

2. **Stage 2 (RICE):** Deep-score the top 10 assumptions with RICE to
   determine the final experiment sequence. Takes 30-45 minutes.

This hybrid approach balances speed with precision.

---

## Part 5: Prioritization Decision Tree

Use this decision tree when choosing which experiment to run next:

```
START: You have a list of assumptions to test
  |
  v
Q1: Have you extracted ALL assumptions from BMC/VPC?
  |-- No --> Extract assumptions first (see Part 1)
  |-- Yes
      |
      v
Q2: Have you categorized each as D (desirability),
    V (viability), or F (feasibility)?
  |-- No --> Categorize each assumption
  |-- Yes
      |
      v
Q3: Are there untested DESIRABILITY assumptions
    with Risk Score >= 15?
  |-- Yes --> TEST THESE FIRST
  |          |
  |          v
  |          Q3a: Is there a cheaper experiment that
  |               could invalidate this assumption?
  |            |-- Yes --> Use the cheaper experiment
  |            |-- No --> Use the minimum-cost experiment
  |                       that produces sufficient evidence
  |
  |-- No (all D assumptions tested or low risk)
      |
      v
Q4: Are there untested VIABILITY assumptions
    with Risk Score >= 15?
  |-- Yes --> TEST THESE NEXT
  |          (same sub-logic as Q3a)
  |
  |-- No
      |
      v
Q5: Are there untested FEASIBILITY assumptions
    with Risk Score >= 15?
  |-- Yes --> TEST THESE LAST
  |
  |-- No
      |
      v
OUTCOME: All critical assumptions tested.
  --> Review evidence portfolio
  --> Make Go/No-Go decision
  --> If Go: plan scaling experiments
```

---

## Part 6: Experiment Sequencing Logic

### Dependency Mapping

Some experiments have natural dependencies. Map them before scheduling:

```
DEPENDENCY CHAIN EXAMPLE
========================

[Desk Research: Market Size]
          |
          v (must confirm market exists)
[Customer Interviews: Problem Validation]
          |
          v (must confirm problem is real)
[Landing Page: Solution Interest]
          |
          v (must confirm interest)
[Concierge MVP: Value Delivery]
          |
          v (must confirm value)
[Pre-Sale: Willingness to Pay]
          |
          v (must confirm revenue)
[Single Feature MVP: Scalability]
```

### Parallel vs. Sequential

```
RUN IN PARALLEL when:
- Experiments test DIFFERENT assumptions
- No dependency between them
- Resources allow simultaneous execution

Example: Run customer interviews (desirability) in parallel
with supplier research (feasibility) since they test different
assumptions and use different resources.

RUN SEQUENTIALLY when:
- Experiment B's design depends on Experiment A's results
- Same assumption, escalating evidence levels
- Limited resources force serialization

Example: Run interviews BEFORE landing page test, because
interview insights should inform the landing page copy.
```

### Sprint Planning for Experiments

Organize experiments into 2-week testing sprints:

| Sprint Element        | Duration    | Activities                          |
|-----------------------|-------------|-------------------------------------|
| Sprint Planning       | 2 hours     | Select top 3-5 experiments from     |
|                       |             | prioritized backlog                 |
| Experiment Design     | 1-2 days    | Write experiment cards, set up      |
|                       |             | tracking, define criteria            |
| Experiment Execution  | 5-8 days    | Run experiments, collect data       |
| Analysis & Learning   | 1-2 days    | Analyze results, update assumption  |
|                       |             | map, document learnings             |
| Sprint Review         | 2 hours     | Present findings, decide next tests |

---

## Part 7: Pivot vs. Persevere Decision Framework

### When to Make the Decision

Evaluate pivot/persevere after every testing sprint. Do not wait until
you run out of money.

### Quantitative Pivot Triggers

An assumption is considered INVALIDATED (pivot trigger) when:

| Metric Type          | Pivot Threshold                                   |
|----------------------|---------------------------------------------------|
| Landing page signup  | < 2% conversion after 500+ visitors               |
| Customer interviews  | < 3 of 15 people describe the problem unprompted   |
| Pre-sale             | < 5% conversion after 200+ qualified leads         |
| Retention (concierge)| < 20% return usage in week 2                      |
| Willingness to pay   | < 40% of interviewed customers agree to price point|
| Referral rate        | < 10% of users refer within 30 days               |
| Feature engagement   | < 30% of users engage with core feature weekly     |

### The Pivot/Persevere Matrix

```
PIVOT / PERSEVERE DECISION MATRIX
===================================

             Strong Evidence         Weak Evidence
             FOR the assumption      FOR the assumption
           +---------------------+---------------------+
  Strong   |                     |                     |
  Evidence | CLEAR PIVOT         | REDESIGN            |
  AGAINST  | Change direction    | EXPERIMENT          |
  the      | immediately. Data   | Conflicting data.   |
  assumption| is conclusive.     | Need better test.   |
           +---------------------+---------------------+
  Weak     |                     |                     |
  Evidence | PERSEVERE           | PERSEVERE           |
  AGAINST  | (with caution)      | (and test more)     |
  the      | No strong negative  | Insufficient data.  |
  assumption| signal yet.        | Run more experiments.|
           +---------------------+---------------------+
```

### Pivot Types (from Eric Ries)

When the decision is to pivot, choose the type of pivot:

| Pivot Type            | Description                              | Example              |
|-----------------------|------------------------------------------|----------------------|
| Zoom-In               | Single feature becomes the product       | Flickr (game->photos)|
| Zoom-Out              | Product becomes a feature of larger one   | Yelp (email->reviews)|
| Customer Segment      | Same product, different customers         | Slack (game->enterprise)|
| Customer Need         | Same customers, different problem         | Starbucks (beans->cafe)|
| Channel               | Different distribution channel            | Warby Parker (online->stores)|
| Value Capture         | Different revenue/pricing model           | Spotify (purchase->subscription)|
| Engine of Growth      | Viral vs. sticky vs. paid                | Dropbox (paid->viral)|
| Technology            | Same value, different technology          | Netflix (DVD->streaming)|
| Platform              | Application becomes platform              | Amazon (store->marketplace)|
| Business Architecture | High margin/low volume <-> low margin/high vol| Costco model shift|

### Persevere Criteria

Continue on current path when:
- Core desirability metrics are at or above pass thresholds
- Evidence is trending upward across experiment iterations
- Invalidated assumptions are peripheral (not core to the model)
- Pivot cost exceeds cost of continued testing
- Team has identified specific improvements to test next

---

## Part 8: Portfolio Approach to Experiments

### The Experiment Portfolio

Never bet on a single experiment. Maintain a balanced portfolio:

```
EXPERIMENT PORTFOLIO STRUCTURE
===============================

Target allocation per testing sprint:

  60% - HIGH CONFIDENCE experiments
        (lower risk, moderate learning)
        Examples: desk research, interviews, surveys
        Purpose: steady evidence accumulation

  30% - MEDIUM CONFIDENCE experiments
        (moderate risk, significant learning)
        Examples: landing pages, smoke tests, presales
        Purpose: behavioral validation

  10% - MOONSHOT experiments
        (high risk, potentially transformative)
        Examples: new segment test, radical pricing
        Purpose: discover unexpected opportunities
```

### Tracking the Portfolio

Maintain a running evidence dashboard:

| Assumption ID | Description     | Category | Risk Score | Evidence Level | Status       |
|---------------|-----------------|----------|------------|----------------|--------------|
| D-01          | Problem exists  | Desir.   | 20         | Strong         | VALIDATED    |
| D-02          | Will pay $29/mo | Desir.   | 25         | Medium         | IN PROGRESS  |
| V-01          | CAC < $50       | Viab.    | 15         | Weak           | NEXT SPRINT  |
| F-01          | Tech buildable  | Feas.    | 10         | None           | BACKLOG      |

---

## Part 9: Common Prioritization Mistakes

### Mistake 1: HiPPO Prioritization
**Problem:** The Highest-Paid Person's Opinion overrides scoring.
**Fix:** Score experiments BEFORE revealing them to senior stakeholders.
Present the scored list, not individual experiments for approval.

### Mistake 2: Scoring Inflation
**Problem:** Everything gets 8+ on Impact because the team is excited.
**Fix:** Force-rank: only 20% of experiments can score 8+ on any dimension.
Calibrate by scoring a known experiment first as a baseline.

### Mistake 3: Testing What You Know
**Problem:** Running experiments on assumptions you have already validated
because they feel safe.
**Fix:** Before scoring, mark each assumption's current evidence level.
Only score assumptions with evidence level "Weak" or "None."

### Mistake 4: Ignoring Dependencies
**Problem:** Running Experiment C when its validity depends on Experiment A's
results, which have not yet been obtained.
**Fix:** Map dependencies before sequencing. No experiment runs until its
upstream dependencies are resolved.

### Mistake 5: Equal Weighting of All Assumption Types
**Problem:** Treating feasibility assumptions as equally urgent as
desirability assumptions.
**Fix:** Always test in order: Desirability > Viability > Feasibility.
Only advance to the next category after the previous category's critical
assumptions are resolved.

### Mistake 6: Anchoring on First Scores
**Problem:** Never revising ICE/RICE scores as new evidence emerges.
**Fix:** Re-score the backlog at the start of every testing sprint. New
evidence should change Confidence scores and may change Impact/Ease.

### Mistake 7: Over-Optimizing Scores Instead of Learning
**Problem:** Spending more time perfecting scores than running experiments.
**Fix:** Set a time box: 30 minutes maximum for ICE scoring the full backlog,
45 minutes for RICE on the top 10. Then run experiments.

---

## Part 10: AI Agent Execution Advantages

An AI agent system executing experiment prioritization gains specific
advantages:

1. **Computational Scoring:** The agent computes ICE and RICE scores
   instantly across dozens of assumptions, eliminating the 30-45 minute
   manual scoring session. It can also run sensitivity analyses ("what if
   Impact is actually 6 instead of 8?") to test score robustness.

2. **Automated Extraction:** The agent parses BMC/VPC documents and
   extracts assumptions systematically, ensuring none are missed. Human
   teams typically extract 40-60% of assumptions; the agent targets 90%+.

3. **Dependency Detection:** The agent maps logical dependencies between
   assumptions and experiments automatically, flagging when a proposed
   experiment sequence violates dependency logic.

4. **Evidence Tracking:** The agent maintains the assumption inventory
   as a living document, automatically updating evidence levels as
   experiment results are recorded.

5. **Pattern-Based Thresholds:** The agent can suggest pass/fail criteria
   based on industry benchmarks and comparable experiment results, rather
   than requiring the team to guess appropriate thresholds.

6. **Real-Time Re-Prioritization:** As experiment results come in, the
   agent automatically re-scores the backlog and surfaces the next highest-
   priority experiment, maintaining velocity without manual sprint planning.

---

## Sources and Attribution

- Ellis, S. & Brown, M. (2017). "Hacking Growth." Crown Business.
  (ICE framework origin)
- Intercom. "RICE: Simple prioritization for product managers."
  https://www.intercom.com/blog/rice-simple-prioritization-for-product-managers/
- Bland, D.J. & Osterwalder, A. (2019). "Testing Business Ideas." Wiley.
  (Assumption mapping, experiment sequencing)
- Strategyzer. "How Assumptions Mapping Can Focus Your Teams."
  https://www.strategyzer.com/library/how-assumptions-mapping-can-focus-your-teams-on-running-experiments-that-matter
- Ries, E. (2011). "The Lean Startup." Crown Business. (Pivot types)
- ProductPlan. "ICE Scoring Model." https://www.productplan.com/glossary/ice-scoring-model/
- Osterwalder, A. et al. (2014). "Value Proposition Design." Wiley.
