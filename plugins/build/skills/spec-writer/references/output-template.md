# The Spec Writer Output Template

> This template defines the structured output format for shaped pitches,
> scope breakdowns, and supporting documentation produced by The Spec Writer.
> All sections are required unless marked (optional).

---

## HOW TO USE THIS TEMPLATE

```
OUTPUT FLOW

  Input: Product strategy, user problem, or feature request
    |
    v
  [1] SHAPED PITCH -----------> Betting table review
    |
    v
  [2] SCOPE BREAKDOWN --------> Team planning
    |
    v
  [3] ACCEPTANCE CRITERIA -----> Builder reference
    |
    v
  [4] EDGE CASES --------------> Risk awareness
    |
    v
  [5] TECHNICAL RISKS ---------> De-risking actions
    |
    v
  [6] BETTING TABLE SUMMARY ---> Stakeholder decision
    |
    v
  [7] QUALITY CHECKLIST -------> Self-review gate
```

Fill each section in order. The sections build on each other — the pitch informs
the scopes, the scopes inform the acceptance criteria, and the edge cases inform
the technical risks.

---

## SECTION 1: SHAPED PITCH

```
============================================================
SHAPED PITCH: [Title — verb phrase describing the capability]
============================================================

STATUS: Draft | Ready for Betting | Bet | In Progress | Shipped
AUTHOR: [Name or Agent ID]
DATE:   [YYYY-MM-DD]
CYCLE:  [Target cycle, e.g., "Cycle 14 — 2026 Q1"]

------------------------------------------------------------
1. PROBLEM
------------------------------------------------------------

### What is the pain?
[Describe the specific user problem in 2-4 sentences. Ground it
in observable behavior — what triggers the pain, how often it
occurs, and what the user does today as a workaround.]

### Who feels it?
[Describe the user segment affected. Use situational context,
not just persona labels. "A team lead checking in after a week
away" is better than "an admin user."]

### Evidence
[Include at least TWO of the following:]
- Support ticket volume: [X tickets/month mentioning this]
- User quote: "[Exact quote from user research or feedback]"
- Analytics data: [Metric showing the impact]
- Competitive gap: [How competitors address this]
- Workaround observation: [What users do instead]

### Triggering situation
[Describe the specific moment when this problem surfaces.
Use the job story format:]

When [situation],
I want to [motivation],
so I can [expected outcome].

------------------------------------------------------------
2. APPETITE
------------------------------------------------------------

### Time budget
[Choose one:]
- [ ] Small batch: 1-2 weeks (1 person)
- [ ] Medium batch: 3-4 weeks (1-2 people)
- [ ] Big batch: 6 weeks (2-3 people)

### Why this appetite?
[Justify the time budget in 2-3 sentences. Reference the value
of solving the problem vs. the cost of the time investment.
If the problem could justify MORE time, explain why you're
constraining it.]

### What we WON'T get at this appetite
[List 1-3 things that a larger appetite would allow but that
you're intentionally excluding to stay within budget.]

------------------------------------------------------------
3. SOLUTION
------------------------------------------------------------

### Solution summary
[Describe the solution in 3-5 sentences at fat-marker level.
Focus on the key elements and how they connect. Do NOT
prescribe implementation details, specific technologies,
or pixel-level design.]

### Fat marker sketch
[Include an ASCII diagram showing the key elements and their
spatial/logical relationships. Use boxes, arrows, and labels.
Keep it rough — this is intentionally abstract.]

```
+------------------------------------------+
|  [Screen/View Name]                      |
|                                          |
|  +----------------+  +----------------+ |
|  | [Element A]    |  | [Element B]    | |
|  | [description]  |  | [description]  | |
|  +----------------+  +----------------+ |
|                                          |
|  +------------------------------------+ |
|  | [Element C]                        | |
|  | [description of behavior]          | |
|  +------------------------------------+ |
+------------------------------------------+
```

### Breadboard flow
[Map the key user flow as a series of places, affordances,
and connections:]

```
[Place 1: Name]
  -- affordance: [button/link/field] -->
[Place 2: Name]
  -- affordance: [action] -->
[Place 3: Name]
  -- outcome: [what the user sees]
```

### Solution variant considered (optional)
[Briefly describe 1-2 alternative approaches you considered
and why you chose the primary solution over them.]

| Variant           | Pros                 | Cons                 |
|-------------------|----------------------|----------------------|
| Primary solution  | [Pro 1], [Pro 2]     | [Con 1]              |
| Alternative A     | [Pro 1]              | [Con 1], [Con 2]     |
| Alternative B     | [Pro 1]              | [Con 1], [Con 2]     |

------------------------------------------------------------
4. RABBIT HOLES
------------------------------------------------------------

[List every identified risk that could consume disproportionate
time. For each rabbit hole, provide a mitigation strategy.]

### Rabbit Hole 1: [Name]
- **Risk:** [What could go wrong or take too long]
- **Likelihood:** Low | Medium | High
- **Impact if hit:** [Time cost or scope consequence]
- **Mitigation:** [How to avoid or contain it]

### Rabbit Hole 2: [Name]
- **Risk:** [Description]
- **Likelihood:** Low | Medium | High
- **Impact if hit:** [Consequence]
- **Mitigation:** [Strategy]

### Rabbit Hole 3: [Name]
- **Risk:** [Description]
- **Likelihood:** Low | Medium | High
- **Impact if hit:** [Consequence]
- **Mitigation:** [Strategy]

[Add more as needed. Minimum 2 rabbit holes per pitch.
If you can't find any, you haven't looked hard enough.]

------------------------------------------------------------
5. NO-GOS
------------------------------------------------------------

[Explicitly list what this pitch does NOT include. Each no-go
needs a brief justification.]

| No-Go                        | Reason                         |
|------------------------------|--------------------------------|
| [Excluded capability 1]     | [Why it's excluded]            |
| [Excluded capability 2]     | [Why it's excluded]            |
| [Excluded capability 3]     | [Why it's excluded]            |

============================================================
```

---

## SECTION 2: SCOPE BREAKDOWN

```
============================================================
SCOPE BREAKDOWN: [Same title as pitch]
============================================================

Total scopes: [N]
Estimated cycle position: Week [1-6] of [appetite]

------------------------------------------------------------
SCOPE MAP
------------------------------------------------------------

[Visual overview of all scopes and their relationships:]

```
+-------------------+     +-------------------+
| Scope 1: [Name]  |     | Scope 2: [Name]  |
| [1-line summary]  |---->| [1-line summary]  |
+-------------------+     +-------------------+
        |
        v
+-------------------+     +-------------------+
| Scope 3: [Name]  |     | Scope 4: [Name]  |
| [1-line summary]  |     | [1-line summary]  |
+-------------------+     +-------------------+

Arrow = dependency (Scope 1 must complete before Scope 2)
No arrow = independent (can be built in parallel)
```

------------------------------------------------------------
SCOPE DETAILS
------------------------------------------------------------

### Scope 1: [Name — short, memorable, becomes team vocabulary]

**Summary:** [What this scope delivers in one sentence]

**Hill chart position:** [Choose one]
```
  [ ] Bottom-left   — Not started, fully unknown
  [ ] Mid-uphill    — Exploring approaches
  [ ] Top of hill   — Approach clear, ready to execute
  [ ] Mid-downhill  — Executing known work
  [ ] Bottom-right  — Done
```

**Includes:**
- [Capability or behavior 1]
- [Capability or behavior 2]
- [Capability or behavior 3]

**Does NOT include:**
- [Excluded element — and why]

**Estimated effort:** [X days]

**Dependencies:** [None | Scope N must complete first because...]

---

### Scope 2: [Name]
[Same structure as Scope 1]

---

### Scope 3: [Name]
[Same structure as Scope 1]

---

[Add more scopes as needed. Target 3-6 scopes per pitch.]

------------------------------------------------------------
HILL CHART SNAPSHOT
------------------------------------------------------------

[Plot all scopes on a single hill chart:]

```
         Figuring out          Executing
              ^                    |
             / \                   |
            /   \                  v
     S3   /  S1  \ S2
     *   /    *    \  *
   -----/           \-----------
   0%                 100%

   S1 = [Scope 1 name] — [status note]
   S2 = [Scope 2 name] — [status note]
   S3 = [Scope 3 name] — [status note]
```

------------------------------------------------------------
BUILD SEQUENCE RECOMMENDATION
------------------------------------------------------------

[Recommended order for tackling scopes, prioritizing unknowns
first (get scary stuff uphill early):]

1. **[Scope N — highest uncertainty]** — Start here because [reason]
2. **[Scope N — medium uncertainty]** — Then this because [reason]
3. **[Scope N — lowest uncertainty]** — Finish with this because [reason]

============================================================
```

---

## SECTION 3: ACCEPTANCE CRITERIA

```
============================================================
ACCEPTANCE CRITERIA: [Same title as pitch]
============================================================

[Write acceptance criteria for each scope. Use Given-When-Then
for complex behaviors. Use checklist style for simple ones.
Target 3-7 criteria per scope.]

------------------------------------------------------------
Scope 1: [Name]
------------------------------------------------------------

**Given-When-Then Criteria:**

Scenario: [Happy path name]
  Given [precondition]
  When  [user action]
  Then  [expected outcome]
  And   [additional outcome]

Scenario: [Error path name]
  Given [precondition]
  When  [user action that fails]
  Then  [error handling behavior]

**Checklist Criteria:**
- [ ] [Observable behavior or outcome]
- [ ] [Performance requirement with specific metric]
- [ ] [Accessibility requirement]

------------------------------------------------------------
Scope 2: [Name]
------------------------------------------------------------
[Same structure]

------------------------------------------------------------
Scope 3: [Name]
------------------------------------------------------------
[Same structure]

============================================================
```

---

## SECTION 4: EDGE CASES

```
============================================================
EDGE CASES: [Same title as pitch]
============================================================

[Apply the PRECISE framework systematically:]

------------------------------------------------------------
PRECISE ANALYSIS
------------------------------------------------------------

| Category      | Edge Case Description              | Severity | Handling         |
|               |                                     | (1-9)    |                  |
|---------------|--------------------------------------|----------|------------------|
| Permissions   | [What if user lacks access?]         | [N]      | [How to handle]  |
| Rate/Limits   | [What if action is repeated rapidly?]| [N]      | [How to handle]  |
| Empty/Error   | [What if there's no data?]           | [N]      | [How to handle]  |
| Empty/Error   | [What if the service is down?]       | [N]      | [How to handle]  |
| Concurrency   | [What if two users act at once?]     | [N]      | [How to handle]  |
| Input extremes| [What if input is empty/huge/weird?] | [N]      | [How to handle]  |
| State changes | [What if data changes mid-action?]   | [N]      | [How to handle]  |
| Environment   | [What about mobile/slow network?]    | [N]      | [How to handle]  |

SEVERITY SCORING:
  Severity = Likelihood (1-3) x Impact (1-3)
  Likelihood: 1=Rare, 2=Occasional, 3=Common
  Impact: 1=Minor, 2=Major, 3=Critical

HANDLING PRIORITY:
  Severity 6-9: MUST address before shipping
  Severity 3-4: Include in acceptance criteria
  Severity 1-2: Document but deprioritize

============================================================
```

---

## SECTION 5: TECHNICAL RISKS

```
============================================================
TECHNICAL RISKS: [Same title as pitch]
============================================================

[Document technical constraints and risks that affect the
solution. These come from codebase analysis, architecture
review, and external dependency assessment.]

------------------------------------------------------------
CONSTRAINT INVENTORY
------------------------------------------------------------

| Constraint       | Detail                    | Impact on Solution     |
|------------------|---------------------------|------------------------|
| [Category]       | [Specific constraint]     | [How it shapes design] |
| [Category]       | [Specific constraint]     | [How it shapes design] |
| [Category]       | [Specific constraint]     | [How it shapes design] |

Categories: Performance, Data volume, Browser support, API limits,
Auth model, Deployment, Compliance, Infrastructure, Third-party deps

------------------------------------------------------------
RISK REGISTER
------------------------------------------------------------

### Risk 1: [Name]
- **Description:** [What could go wrong]
- **Probability:** Low | Medium | High
- **Impact:** Low | Medium | High
- **Detection:** [How will we know if this risk materializes?]
- **Mitigation:** [What we'll do to prevent or contain it]
- **Contingency:** [What we'll do if mitigation fails]

### Risk 2: [Name]
[Same structure]

### Risk 3: [Name]
[Same structure]

------------------------------------------------------------
DEPENDENCY MAP (optional)
------------------------------------------------------------

```
[This pitch] --depends on--> [External system/team/API]
                              Status: [Available | In progress | Unknown]
                              Risk: [What happens if unavailable]

[This pitch] --depends on--> [Internal system/feature]
                              Status: [Stable | Under development]
                              Risk: [What happens if it changes]
```

============================================================
```

---

## SECTION 6: BETTING TABLE SUMMARY

```
============================================================
BETTING TABLE SUMMARY: [Same title as pitch]
============================================================

[One-page summary for betting table participants who need to
make a bet/table/kill decision in 5 minutes.]

------------------------------------------------------------
THE BET
------------------------------------------------------------

**Problem (1 sentence):**
[The core pain in one sentence.]

**Solution (1 sentence):**
[The shaped solution in one sentence.]

**Appetite:** [Small/Medium/Big batch — N weeks — N people]

**Confidence level:** Low | Medium | High
[Based on quality of shaping and de-risking]

------------------------------------------------------------
WHY NOW?
------------------------------------------------------------

[2-3 bullet points on why this should be bet on THIS cycle
rather than a future one. Reference strategic priorities,
user impact, or competitive pressure.]

- [Reason 1]
- [Reason 2]
- [Reason 3]

------------------------------------------------------------
WHY NOT?
------------------------------------------------------------

[1-2 honest reasons someone might vote to table or kill this.
Acknowledging counter-arguments builds trust.]

- [Counter-argument 1]
- [Counter-argument 2]

------------------------------------------------------------
SCOPE AT A GLANCE
------------------------------------------------------------

| Scope          | Effort  | Uncertainty | Must-Have? |
|----------------|---------|-------------|------------|
| [Scope 1]      | [N days]| Low/Med/High| Yes/No     |
| [Scope 2]      | [N days]| Low/Med/High| Yes/No     |
| [Scope 3]      | [N days]| Low/Med/High| Yes/No     |

**Total estimated effort:** [N person-weeks]
**Appetite:** [N weeks]
**Buffer:** [Appetite minus effort = buffer for unknowns]

------------------------------------------------------------
CIRCUIT BREAKER SCENARIO
------------------------------------------------------------

[What happens if this doesn't ship in the cycle?]

- **If we're 80% done:** [What could be cut to ship a useful subset?]
- **If we're 50% done:** [Was the shaping wrong? What did we miss?]
- **If we're 20% done:** [Kill it. The problem or solution was wrong.]

============================================================
```

---

## SECTION 7: QUALITY CHECKLIST

```
============================================================
QUALITY CHECKLIST: [Same title as pitch]
============================================================

Run this checklist before submitting the pitch to the betting
table. Every item must pass. If any item fails, revise the
pitch before submitting.

------------------------------------------------------------
PROBLEM QUALITY
------------------------------------------------------------
- [ ] Problem stated from user perspective (not internal need)
- [ ] Triggering situation described with specificity
- [ ] At least 2 evidence points included
- [ ] Problem is NOT a disguised solution
- [ ] Problem is narrow enough to solve within appetite

------------------------------------------------------------
APPETITE QUALITY
------------------------------------------------------------
- [ ] Appetite explicitly stated (small/medium/big batch)
- [ ] Appetite justified with value-vs-cost reasoning
- [ ] "What we won't get" section is filled in
- [ ] No scope smuggling (solution doesn't secretly exceed appetite)

------------------------------------------------------------
SOLUTION QUALITY
------------------------------------------------------------
- [ ] Solution uses fat-marker abstraction (not wireframes)
- [ ] At least one sketch (ASCII diagram or breadboard) included
- [ ] Solution addresses the WHOLE problem at a basic level
- [ ] Solution does NOT prescribe implementation details
- [ ] Breadth over depth: basic solution for entire problem
      before perfecting any part

------------------------------------------------------------
RISK QUALITY
------------------------------------------------------------
- [ ] At least 2 rabbit holes identified
- [ ] Each rabbit hole has a mitigation strategy
- [ ] PRECISE framework applied for edge cases
- [ ] Technical constraints documented
- [ ] No-gos listed with justifications

------------------------------------------------------------
SCOPE QUALITY
------------------------------------------------------------
- [ ] Work broken into 3-6 vertical scopes
- [ ] Each scope is independently demonstrable
- [ ] Each scope has a memorable name
- [ ] Hill chart positions assigned
- [ ] Build sequence recommended (scariest first)

------------------------------------------------------------
ACCEPTANCE CRITERIA QUALITY
------------------------------------------------------------
- [ ] 3-7 criteria per scope
- [ ] Happy path covered for every scope
- [ ] At least 1 error scenario per scope
- [ ] At least 1 edge case per scope
- [ ] All criteria are specific and testable (no vague terms)
- [ ] No criteria that describe implementation (focus on outcomes)

------------------------------------------------------------
BETTING TABLE READINESS
------------------------------------------------------------
- [ ] One-page summary completed
- [ ] "Why now" and "Why not" both addressed
- [ ] Circuit breaker scenarios documented
- [ ] A betting table participant can understand the pitch in 5 minutes
- [ ] Confidence level honestly assessed

============================================================
RESULT: [ ] PASS — Ready for betting table
        [ ] FAIL — Revise sections: [list failing sections]
============================================================
```

---

## STAGE-GATED GUIDANCE

Adapt outputs to the venture's current stage. For pre-launch: use hypothesis-driven language, note where user research is needed, and avoid assuming conversion metrics or cohort data exist.

---

## COMPLETE EXAMPLE: FILLED TEMPLATE

Below is a condensed example showing all sections filled for a real-shaped pitch.

```
============================================================
SHAPED PITCH: Add Team Activity Feed
============================================================

STATUS: Ready for Betting
AUTHOR: Spec Writer Agent
DATE:   2026-03-06
CYCLE:  Cycle 15 — 2026 Q2

------------------------------------------------------------
1. PROBLEM
------------------------------------------------------------

### What is the pain?
Team leads returning from time off have no way to quickly see what
happened while they were away. They must open each project, read
each thread, and piece together the timeline manually. This takes
30-60 minutes and leads to missed context.

### Who feels it?
Team leads and managers who oversee 3+ active projects and are
frequently pulled into meetings, travel, or focus days.

### Evidence
- Support tickets: 23 tickets in Q4 2025 requesting "what happened" summary
- User quote: "Every Monday I spend the first hour just figuring out
  what happened Friday. It's maddening." — Team lead, 50-person org
- Analytics: 67% of team leads visit 5+ project pages within 10 minutes
  of Monday morning login (indicating catch-up behavior)

### Triggering situation
When I return to work after being away for 1+ days,
I want to see a chronological feed of meaningful activity across my projects,
so I can get caught up in 5 minutes instead of 30.

------------------------------------------------------------
2. APPETITE
------------------------------------------------------------

### Time budget
- [x] Big batch: 6 weeks (2-3 people)

### Why this appetite?
This touches the notification system, the activity tracking layer, and
requires a new UI surface. The cross-cutting nature justifies a full cycle.
The catch-up pain is reported weekly by power users.

### What we WON'T get at this appetite
- Per-item filtering (filter by project, person, or type)
- Activity feed on mobile app (web only)
- Customizable feed algorithms (chronological only)

------------------------------------------------------------
3. SOLUTION
------------------------------------------------------------

### Solution summary
A new "Activity" tab on the team dashboard showing a reverse-chronological
feed of meaningful events: new messages, completed to-dos, uploaded files,
and status changes. Each entry shows who, what, where, and when. Entries
link directly to the source. The feed loads the last 7 days by default
with a "load more" option.

### Fat marker sketch

+------------------------------------------+
|  Team Dashboard                          |
|  [Projects] [Activity] [People]          |
|                                          |
|  +------------------------------------+  |
|  | Activity Feed                      |  |
|  |                                    |  |
|  | Today                              |  |
|  | * Alice posted in Project Alpha    |  |
|  |   "Finalized the API contract..."  |  |
|  |   2 hours ago                      |  |
|  |                                    |  |
|  | * Bob completed 3 to-dos in Beta   |  |
|  |   4 hours ago                      |  |
|  |                                    |  |
|  | Yesterday                          |  |
|  | * Carol uploaded designs to Alpha  |  |
|  |   [screenshot thumbnail]           |  |
|  |                                    |  |
|  | [Load more...]                     |  |
|  +------------------------------------+  |
+------------------------------------------+

### Breadboard flow

[Team Dashboard]
  -- clicks "Activity" tab -->
[Activity Feed]
  -- scrolls through entries -->
  -- clicks an entry -->
[Source Page (message, to-do, file)]
  -- browser back or breadcrumb -->
[Activity Feed (scroll position preserved)]

------------------------------------------------------------
4. RABBIT HOLES
------------------------------------------------------------

### Rabbit Hole 1: Activity event volume
- Risk: High-activity teams could generate 1000+ events/day,
  causing slow feed loads
- Likelihood: Medium
- Impact if hit: 1-2 weeks of performance optimization
- Mitigation: Aggregate similar events ("Bob completed 3 to-dos")
  and limit feed to 100 entries per load with pagination

### Rabbit Hole 2: Activity tracking across all entity types
- Risk: Different entity types (messages, to-dos, files, etc.) have
  different data structures, requiring adapters for each
- Likelihood: High
- Impact if hit: 1 week per entity type
- Mitigation: Start with 3 entity types only (messages, to-dos,
  status changes). Add files and others as a future pitch.

------------------------------------------------------------
5. NO-GOS
------------------------------------------------------------

| No-Go                          | Reason                        |
|--------------------------------|-------------------------------|
| Real-time streaming feed       | Exceeds appetite; polling OK  |
| Per-user feed customization    | Nice-to-have; ship default    |
| Mobile app activity feed       | Separate pitch for mobile     |
| Activity analytics/reporting   | Different problem entirely    |

============================================================
```
