# Continuous Discovery Habits — Teresa Torres

## Source Attribution
- Primary: "Continuous Discovery Habits" by Teresa Torres (2021)
- Supporting: ProductTalk.org articles and workshops by Teresa Torres
- Framework origin: Developed through Torres' coaching of 100+ product teams

---

## 1. Core Philosophy

Continuous Discovery is a structured approach to product development where product
teams maintain at least weekly touchpoints with real customers. The goal: make
evidence-based product decisions through rapid, continuous learning rather than
quarterly research sprints or gut-feel roadmaps.

### The Continuous Discovery Mindset

```
TRADITIONAL DISCOVERY          CONTINUOUS DISCOVERY
--------------------          --------------------
Quarterly research sprints     Weekly customer touchpoints
Big-bang launches              Small iterative experiments
PM decides alone               Product trio collaborates
Solutions first                Outcomes first
Validate ideas                 Test assumptions
One big bet                    Compare and contrast options
Ship and pray                  Learn and adapt
```

### The Product Trio

Torres defines the "product trio" as the core decision-making unit:
- Product Manager (business viability, strategy)
- Designer (usability, desirability)
- Engineer (feasibility, technical constraints)

All three participate in discovery activities together. This is non-negotiable.
When only the PM does discovery, insights get lost in translation.

---

## 2. Opportunity Solution Trees (OSTs)

The Opportunity Solution Tree is the central visual artifact in Continuous
Discovery. It connects business outcomes to customer opportunities to potential
solutions to assumption tests.

### OST Structure

```
                    [DESIRED OUTCOME]
                    Business metric the
                    team is driving
                          |
            +-------------+-------------+
            |             |             |
      [OPPORTUNITY]  [OPPORTUNITY]  [OPPORTUNITY]
      Customer need  Customer need  Customer need
      or pain point  or pain point  or pain point
            |             |             |
        +---+---+     +---+---+     +---+
        |       |     |       |     |
     [SOL A] [SOL B] [SOL C] [SOL D] [SOL E]
     Idea    Idea    Idea    Idea    Idea
        |       |     |       |
     +--+--+ +--+  +-+--+  +-+--+
     |     | |  |  |    |  |    |
    [T1] [T2][T3][T4] [T5][T6] [T7][T8]
    Assumption tests / Experiments
```

### How to Build an OST Step by Step

**Step 1: Define the Desired Outcome**
- Must be a measurable business metric (not a feature)
- Examples: "Increase weekly active users by 15%", "Reduce time-to-first-value
  to under 3 minutes", "Improve 30-day retention from 25% to 40%"
- Bad outcomes: "Launch feature X", "Redesign the dashboard"

**Step 2: Map the Opportunity Space**
- Opportunities come from customer interviews, not brainstorming
- They represent customer needs, pain points, and desires
- Structure them hierarchically (big opportunities break into smaller ones)
- Use the language customers actually use

**Step 3: Generate Solutions (Minimum 3 per Opportunity)**
- For each target opportunity, brainstorm at least 3 distinct solutions
- This forces compare-and-contrast thinking
- Prevents "pet solution" bias where teams latch onto the first idea

**Step 4: Identify Assumptions and Design Tests**
- Break each solution into its underlying assumptions
- Test the riskiest assumptions first
- Use the smallest possible experiment

### OST Anti-Patterns

| Anti-Pattern | Symptom | Fix |
|---|---|---|
| Feature tree | Solutions at opportunity level | Reframe as customer needs |
| Single solution | Only one idea per opportunity | Force 3+ alternatives |
| No tests | Jump from solution to build | Map assumptions first |
| Stale tree | Tree unchanged for weeks | Update weekly with new data |
| PM-only tree | Trio not involved | Co-create in weekly sessions |
| Output outcome | "Launch X" as outcome | Reframe as business metric |

---

## 3. Weekly Discovery Cadence

### The Weekly Rhythm

```
WEEK STRUCTURE FOR CONTINUOUS DISCOVERY
========================================

Monday:    Review OST, identify gaps in opportunity space
Tuesday:   Conduct 1-2 customer interview snapshots (15-20 min each)
Wednesday: Synthesize interviews, update opportunity space
Thursday:  Design and run assumption tests
Friday:    Review experiment results, update OST, plan next week

MINIMUM VIABLE DISCOVERY: 1 interview + 1 assumption test per week
```

### Why Weekly Matters

Torres emphasizes weekly cadence because:
1. Memory decay — insights lose fidelity after 48 hours
2. Compounding learning — 52 interviews/year vs 12 in quarterly batches
3. Habit formation — the team builds a discovery muscle
4. Faster iteration — test-learn-adapt cycles compress from months to days

---

## 4. Interview Snapshots

Interview snapshots are Torres' alternative to traditional user research
interviews. They are short (15-20 minutes), frequent (weekly), and focused
on specific stories rather than broad exploration.

### Interview Snapshot Format

```
INTERVIEW SNAPSHOT TEMPLATE
============================
Date: ___________
Participant: ___________
Target Opportunity: ___________

STORY PROMPT:
"Tell me about the last time you [did specific behavior related to opportunity]."

KEY MOMENTS CAPTURED:
1. What triggered the behavior?
2. What steps did they take?
3. Where did they struggle?
4. What was the outcome?
5. How did they feel about it?

OPPORTUNITIES IDENTIFIED:
- [opportunity 1]
- [opportunity 2]

QUOTES (verbatim):
- "..."
- "..."
```

### Interview Snapshot vs Traditional Research

| Dimension | Interview Snapshot | Traditional Research |
|---|---|---|
| Duration | 15-20 minutes | 45-90 minutes |
| Frequency | Weekly | Quarterly |
| Participants | 1-2 per week | 8-12 per batch |
| Focus | Specific recent story | Broad exploration |
| Conducted by | Product trio | Researcher |
| Output | OST updates | Research report |
| Time to action | Same week | 2-6 weeks |

### Story-Based Interviewing Principles

1. Ask about specific past behavior, not hypothetical futures
2. "Tell me about the LAST time..." not "What would you do if..."
3. Follow the story — dig into moments of friction, surprise, or delight
4. Do not pitch solutions — you are collecting opportunities
5. Capture the emotional context, not just the actions

### Recruiting for Continuous Interviews

Torres recommends automated recruiting pipelines:
- In-product intercepts: "Would you be willing to chat for 15 min?"
- Customer success hand-offs: "This customer had an interesting experience"
- Support ticket mining: identify users with relevant recent behavior
- Calendar automation: always have 1-2 interviews scheduled per week

---

## 5. Assumption Mapping

Every solution rests on a stack of assumptions. Torres categorizes them into
five types and provides a systematic approach to identifying and testing them.

### The Five Types of Assumptions

```
+------------------+------------------------------------------------+
| ASSUMPTION TYPE  | QUESTION IT ANSWERS                            |
+------------------+------------------------------------------------+
| Desirability     | Do customers want this? Will they choose it?   |
| Usability        | Can customers figure out how to use it?         |
| Feasibility      | Can we build it? Do we have the technology?     |
| Viability        | Should we build it? Does the business model     |
|                  | support it? Is it sustainable?                  |
| Ethical          | Is there potential for harm? Are we being        |
|                  | responsible?                                    |
+------------------+------------------------------------------------+
```

### Assumption Mapping Process

**Step 1: Story Map the Solution**
Lay out each step the user takes to get value from your solution:

```
USER SIGNS UP -> SEES DASHBOARD -> CONNECTS DATA -> GETS FIRST INSIGHT
     |               |                  |                    |
  Assumptions:    Assumptions:      Assumptions:         Assumptions:
  - Email is     - Dashboard is    - User has data      - Insight is
    sufficient     understandable    ready to connect      valuable
  - User trusts  - User knows      - Integration        - User knows
    the brand      what to do next   works reliably       what to do
```

**Step 2: Identify Assumptions at Each Step**
For each step, ask:
- Desirability: Will the user WANT to do this step?
- Usability: Will the user KNOW HOW to do this step?
- Feasibility: CAN we build this step reliably?
- Viability: Is this step SUSTAINABLE for the business?
- Ethical: Could this step HARM anyone?

**Step 3: Prioritize by Risk**
Plot assumptions on a risk matrix:

```
HIGH IMPORTANCE (must be true for solution to work)
        |
        |  TEST THESE       TEST THESE
        |  FIRST            SECOND
        |  (high risk)      (medium risk)
        |
        +--------------------------------
        |  MONITOR          SKIP
        |  (medium risk)    (low risk)
        |
LOW IMPORTANCE
        LOW EVIDENCE -----> HIGH EVIDENCE
        (we don't know)     (we already know)
```

**Step 4: Design Assumption Tests**
For each high-risk assumption, design the smallest possible test:

| Assumption Type | Example Test Methods |
|---|---|
| Desirability | One-question survey, fake door test, landing page test |
| Usability | 5-second test, prototype walkthrough, first-click test |
| Feasibility | Spike/prototype, technical proof-of-concept |
| Viability | Unit economics calculation, pricing page test |
| Ethical | Pre-mortem exercise, stakeholder review |

---

## 6. Compare and Contrast Decisions

Torres strongly advocates for considering multiple solutions simultaneously
rather than evaluating one idea at a time.

### Why Compare and Contrast Works

- Reduces confirmation bias (you are not married to one idea)
- Surfaces hidden assumptions (differences between solutions reveal risks)
- Produces better decisions (A/B testing is comparing; A-only testing is confirming)
- Creates optionality (if Solution A fails, Solution B is ready)

### Compare and Contrast Process

```
OPPORTUNITY: Users struggle to find relevant content

SOLUTION A: AI-powered          SOLUTION B: Community-       SOLUTION C: Manual
recommendation feed             curated collections          curation by editors
                |                       |                          |
Key Assumption:                 Key Assumption:              Key Assumption:
Users trust algorithmic         Users trust peer             Users trust expert
recommendations                 recommendations              curation
                |                       |                          |
Test: Show recommendations      Test: Show "curated by       Test: Show "editor's
with no attribution —           users like you" label —      pick" label —
measure click rate              measure click rate           measure click rate
```

### Decision Criteria Framework

When comparing solutions, evaluate across:

| Criterion | Weight | Solution A | Solution B | Solution C |
|---|---|---|---|---|
| Desirability evidence | 25% | Score 1-5 | Score 1-5 | Score 1-5 |
| Usability evidence | 20% | Score 1-5 | Score 1-5 | Score 1-5 |
| Feasibility confidence | 20% | Score 1-5 | Score 1-5 | Score 1-5 |
| Viability confidence | 20% | Score 1-5 | Score 1-5 | Score 1-5 |
| Ethical risk (lower=better) | 15% | Score 1-5 | Score 1-5 | Score 1-5 |
| **Weighted Total** | 100% | **___** | **___** | **___** |

---

## 7. Experience Mapping

Experience maps visualize the current state of a customer's journey to reveal
opportunities for improvement.

### Experience Map Structure

```
PHASE:     | AWARENESS  | CONSIDERATION | FIRST USE  | ONGOING USE | ADVOCACY
-----------+------------+---------------+------------+-------------+---------
ACTIONS    | Hears about| Evaluates     | Signs up,  | Returns     | Shares
           | product    | options       | tries core | regularly   | with others
-----------+------------+---------------+------------+-------------+---------
THINKING   | "I have    | "Is this      | "How do I  | "Is this    | "Others
           | this       | better than   | get        | worth       | need to
           | problem"   | what I have?" | started?"  | keeping?"   | know"
-----------+------------+---------------+------------+-------------+---------
FEELING    | Frustrated | Hopeful but   | Curious    | Satisfied   | Proud
           |            | skeptical     | or confused| or annoyed  |
-----------+------------+---------------+------------+-------------+---------
OPPORTUN-  | Where do   | What matters  | Where is   | What drives | What
ITIES      | they first | most in their | the first  | repeated    | triggers
           | feel pain? | comparison?   | friction?  | usage?      | sharing?
```

---

## 8. The Co-Creation Mindset

Torres emphasizes that discovery is not something PMs do TO customers but WITH them.

### Co-Creation Principles

1. **Customers are experts in their own problems** — never argue with a
   customer about their experience
2. **You are the expert in solution space** — customers tell you the problem,
   you design the solution
3. **Neither is complete without the other** — great products emerge from the
   intersection
4. **Stories over opinions** — what people say they want and what they actually
   do are different things
5. **Small and continuous over big and batch** — many small learnings compound
   faster than occasional deep dives

---

## 9. Real-World Examples

### Example 1: Streaming Service Retention (Netflix-style)
- **Outcome**: Increase 30-day retention from 65% to 75%
- **Opportunities discovered**: Users cannot find content matching their mood;
  users feel overwhelmed by choice; users lose track of shows mid-binge
- **Solutions tested**: Mood-based browsing, curated "continue watching"
  prominence, watch-party social features
- **Result**: "Continue watching" prominence tested highest (3% retention lift)

### Example 2: B2B SaaS Activation (Slack-style)
- **Outcome**: Reduce time-to-first-message from 48 hours to 2 hours
- **Opportunities discovered**: Users do not know who to invite; users do not
  know what to say; users worried about interrupting colleagues
- **Solutions tested**: Pre-populated channels with conversation starters,
  auto-invite from email contacts, guided "first message" prompt
- **Result**: Guided first-message prompt produced 40% faster activation

### Example 3: E-Commerce Conversion (Shopify-style)
- **Outcome**: Increase merchant first-sale rate from 12% to 20%
- **Opportunities discovered**: Merchants unsure about pricing; merchants
  cannot get product photos right; merchants do not know how to drive traffic
- **Solutions tested**: Pricing calculator tool, AI photo enhancement,
  marketing checklist with step-by-step guide
- **Result**: Marketing checklist drove highest first-sale conversion

### Example 4: Fitness App Engagement (Peloton-style)
- **Outcome**: Increase weekly workout frequency from 1.8 to 3.0
- **Opportunities discovered**: Users forget to work out; users get bored
  with same routines; users feel isolated working out alone
- **Solutions tested**: Smart scheduling with calendar integration, adaptive
  workout variety engine, social workout challenges
- **Result**: Social challenges produced 0.7 additional workouts/week

### Example 5: Financial App (Mint-style)
- **Outcome**: Increase monthly active users by 20%
- **Opportunities discovered**: Users only check after purchases; users do not
  understand budget categories; users feel anxious about finances
- **Solutions tested**: Weekly money health digest email, simplified 3-category
  budget, positive-framing financial insights
- **Result**: Weekly digest re-engaged 18% of dormant users

---

## 10. AI Agent Application

### How an AI Agent System Uses Continuous Discovery

An AI agent system transforms continuous discovery by automating the research
and synthesis layers while keeping humans in the decision loop.

**Automated Interview Analysis**
- Process interview recordings and extract opportunity statements automatically
- Identify patterns across dozens of interviews in seconds
- Flag contradictions between what users say and behavioral data

**Dynamic OST Management**
- Maintain a living opportunity solution tree as a structured artifact
- Auto-suggest where new interview data maps to existing opportunities
- Highlight under-explored branches of the tree

**Assumption Test Design**
- Given a solution, automatically enumerate assumptions by category
- Suggest appropriate test methods based on assumption type and risk level
- Estimate sample sizes and test durations

**Cross-Agent Collaboration**
- Product Strategist hands off business outcomes and constraints
- Growth Designer builds the OST and designs engagement experiments
- Product Designer receives specific opportunities to solve for
- Growth Designer designs the experiments and maps engagement loops

**Real-Time Research Augmentation**
- During interview synthesis, pull competitor data for context
- Benchmark opportunity areas against industry patterns
- Surface relevant case studies and frameworks for each opportunity

---

## 11. Continuous Discovery Checklist

```
PRE-DISCOVERY
[ ] Desired outcome defined as measurable business metric
[ ] Product trio identified and committed
[ ] Interview recruiting pipeline set up
[ ] OST initialized with outcome at top

WEEKLY CADENCE
[ ] At least 1 customer interview conducted
[ ] Interview synthesized within 48 hours
[ ] Opportunity space updated on OST
[ ] At least 1 assumption test designed or running
[ ] Product trio reviewed OST together

QUALITY CHECKS
[ ] Opportunities framed as customer needs (not features)
[ ] At least 3 solutions per target opportunity
[ ] Assumptions categorized (desirability/usability/feasibility/viability/ethical)
[ ] Riskiest assumptions tested first
[ ] Compare-and-contrast used for decisions
[ ] Evidence documented and accessible to full team

ANTI-PATTERN WATCHLIST
[ ] Not asking about specific past behavior in interviews
[ ] Only one solution considered per opportunity
[ ] Skipping assumption testing and jumping to build
[ ] PM doing discovery alone without trio
[ ] OST not updated in 2+ weeks
[ ] Conflating output (features) with outcomes (metrics)
```

---

## 12. AI Product Discovery (2025+)

> Source: Teresa Torres (ProductTalk.org, podcasts 2025-2026), "AI Evals & Discovery"
> with Petra Wille. Torres states: if writing CDH today, she would add a chapter
> on AI evals as a mandatory discovery practice.

### New Failure Modes Unique to AI Products

| Failure Mode | Why It Exists | Discovery Implication |
|-------------|--------------|----------------------|
| Non-deterministic output | Same input produces different outputs | Cannot use exact-match acceptance criteria; need evaluation rubrics |
| Evaluation gap | Hard to know if AI output is "good enough" | Must define quality criteria BEFORE building; evals are discovery |
| Hallucination risk | AI generates plausible but false content | Need domain-expert evaluation, not just user satisfaction surveys |
| Prompt sensitivity | Small input changes cause large output changes | Must test with diverse, realistic inputs, not happy-path prompts |
| Model drift/deprecation | Underlying model changes or gets retired | Build evals that run continuously, not just at launch |
| Latency variance | Response times vary unpredictably | User research must account for variable wait times |

### AI Evals as a Discovery Practice

Evals answer: "How do we know if an LLM feature is good?" They are the most
critical tool for PMs building AI products.

**Who should participate in eval design:**
- Product managers: define what "good" means for the user
- Designers: define UX quality criteria (tone, length, helpfulness)
- Engineers: automate evals at scale, monitor production quality
- Customers: provide ground truth via feedback and ratings

**Eval design process:**
1. Define quality dimensions (accuracy, helpfulness, safety, tone)
2. Create rubrics with explicit scoring criteria per dimension
3. Build a diverse test set (100+ representative inputs)
4. Run human evaluation on a sample to establish baseline
5. Automate with LLM-as-judge where human-AI agreement is high
6. Monitor continuously in production (not just pre-launch)

### Applying Continuous Discovery to AI Features

| CDH Practice | Adaptation for AI Products |
|-------------|---------------------------|
| Interview snapshots | Ask about AI output quality, not just task completion |
| Assumption testing | Test eval criteria, not just desirability |
| OST structure | Add "AI capability" as a feasibility branch |
| Compare & contrast | Compare different prompts/models, not just features |
| Weekly cadence | Run evals weekly; AI quality can drift without code changes |

### Using AI to Accelerate Discovery Itself

- **Interview synthesis**: AI processes transcripts, extracts opportunities
- **Pattern detection**: Surface themes across dozens of interviews in seconds
- **Assumption generation**: Given a solution, AI enumerates assumptions by type
- **Test design**: AI suggests appropriate test methods for each assumption
- **Competitive research**: AI scans competitor products and reviews in real-time

**Critical rule**: AI accelerates the PROCESS of discovery but does not replace
human judgment on WHAT to build. The product trio still makes the decisions.

---

## 13. Failure Modes

| Failure Mode | Description | Recovery |
|---|---|---|
| Discovery Theater | Going through motions without acting on insights | Require every sprint to reference specific interview data |
| Opportunity Inflation | Too many opportunities, no focus | Prune to 3-5 active opportunities max |
| Solution Addiction | Team falls in love with first idea | Enforce 3-solution minimum before testing |
| Assumption Blindness | Testing easy assumptions, ignoring hard ones | Use risk matrix; riskiest first |
| Interview Fatigue | Team stops doing interviews after initial burst | Automate recruiting; make it habitual |
| Stale Tree Syndrome | OST becomes a historical document, not living tool | Review and update weekly; archive old branches |
| Trio Fragmentation | PM, designer, engineer work in silos | Co-locate discovery activities; shared sessions |
