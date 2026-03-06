# Osterwalder's Value Proposition Canvas — Complete Reference

Source: Alexander Osterwalder & Yves Pigneur, "Value Proposition Design" (2014),
Strategyzer AG. Extended with scoring methodology and AI-native adaptations.

---

## 1. CONCEPTUAL OVERVIEW

The Value Proposition Canvas (VPC) is a plug-in to the Business Model Canvas
that zooms into two blocks: Customer Segments and Value Propositions. Its
purpose is to design, test, and achieve FIT between what you offer and what
customers actually need.

```
+-----------------------------------------------+
|              VALUE PROPOSITION CANVAS          |
|                                                |
|   +------------------+   +------------------+ |
|   |   VALUE MAP      |   | CUSTOMER PROFILE | |
|   |                  |   |                  | |
|   | Products &       |   | Customer Jobs    | |
|   |   Services       |   |   (functional,   | |
|   |                  |   |    social,       | |
|   | Pain Relievers   |   |    emotional)    | |
|   |                  |   |                  | |
|   | Gain Creators    |   | Pains            | |
|   |                  |   |                  | |
|   +------------------+   | Gains            | |
|          |               |                  | |
|          +-----> FIT <---+                  | |
|                          +------------------+ |
+-----------------------------------------------+
```

The canvas is read RIGHT TO LEFT: understand the customer first, then design
the value map to match. Never start with your product.

---

## 2. CUSTOMER PROFILE — THE RIGHT SIDE

The Customer Profile describes a specific customer segment in a structured,
detailed way. It consists of three elements, each with sub-categories.

### 2.1 Customer Jobs

Customer Jobs are the things customers are trying to get done in their work or
life. Jobs are NOT features; they are the tasks, goals, and outcomes customers
pursue independent of any solution.

**Three types of jobs:**

| Job Type     | Definition                                        | Example (Commuter)                     |
|-------------|---------------------------------------------------|----------------------------------------|
| Functional  | Practical tasks the customer wants to accomplish  | "Get from home to office in < 45 min"  |
| Social      | How the customer wants to be perceived by others  | "Look successful to peers"             |
| Emotional   | Feelings the customer seeks or wants to avoid     | "Feel in control of my schedule"       |

**Additional job categories:**

- **Supporting jobs**: Tasks related to purchasing (comparison shopping),
  co-creating value (leaving reviews), transferring value (reselling), or
  end-of-lifecycle (disposing, recycling).
- **Context-dependent jobs**: Jobs that only arise in specific circumstances
  (e.g., "entertain my kids" only during travel).

**How to identify jobs — AI-agent approach:**
1. Mine product review sites (Amazon, G2, Capterra) for phrases like "I bought
   this to...", "I needed something that...", "I was looking for..."
2. Scrape forum posts (Reddit, Quora, industry forums) for questions that
   reveal underlying jobs
3. Analyze competitor marketing copy for implied customer jobs
4. Run simulated interviews with research-backed personas (see ai-customer-research.md)
5. Search job postings if B2B — they often contain explicit functional jobs

**Concrete extraction template:**
```
JOB STATEMENT FORMAT:
[Verb] + [object of action] + [contextual clarifier]

Examples:
- "Manage monthly household budget without spreadsheet complexity"
- "Onboard new employees within their first week without losing productivity"
- "Find a reliable dinner recipe in under 10 minutes after work"
```

### 2.2 Customer Pains

Pains are anything that annoys, frustrates, or prevents customers before,
during, or after getting a job done. Pains are not the absence of gains — they
are distinct negative experiences.

**Three severity levels:**

| Severity   | Definition                                    | Example                                  |
|-----------|-----------------------------------------------|------------------------------------------|
| Extreme   | Blocks the job entirely or causes serious harm | "Data breach exposes customer records"   |
| Moderate  | Makes the job harder or more expensive         | "Manual data entry takes 3 hours/week"   |
| Minor     | Annoys but doesn't materially affect outcome   | "UI looks dated compared to competitors" |

**Four categories of pains:**

1. **Undesired outcomes**: "The report is inaccurate 20% of the time"
2. **Obstacles**: "I can't access the system from mobile devices"
3. **Risks**: "If I choose wrong, I lose my budget for the quarter"
4. **Functional shortcomings**: "Current tool doesn't integrate with our CRM"

**Pain extraction from web research:**
- Search for "[product category] complaints" and "[product category] problems"
- Mine 1-star and 2-star reviews on review platforms
- Look for "switching from [competitor]" posts on forums
- Analyze support tickets and FAQ pages of competitors

### 2.3 Customer Gains

Gains are the outcomes and benefits customers want. Gains range from expected
baseline outcomes to unexpected delights.

**Four categories of gains:**

| Gain Type   | Definition                                          | Example                                     |
|------------|-----------------------------------------------------|---------------------------------------------|
| Required   | Without this, the solution doesn't work at all       | "Must sync across all devices"              |
| Expected   | Basic gains customers assume they will get           | "Reasonably fast load times"                |
| Desired    | Gains customers would love but don't expect          | "Automatically categorizes my expenses"     |
| Unexpected | Gains beyond what customers imagine — true delights  | "Predicts cash flow issues before they hit" |

**AI-agent gain discovery approach:**
- Search for "[product category] wish list" or "if only [product] could..."
- Mine 5-star reviews for language about what delighted customers
- Research adjacent industries for gain patterns that could transfer
- Analyze "Jobs-to-be-Done" outcomes that customers define as success metrics

---

## 3. VALUE MAP — THE LEFT SIDE

The Value Map describes how your value proposition creates value. It mirrors
the Customer Profile with three matching components.

### 3.1 Products & Services

A list of all the products and services your value proposition is built around.
This includes physical goods, digital products, intangible services, financial
products, and intellectual property.

**Categorize by relevance:**
- **Critical**: Without this, the value proposition fails
- **Important**: Significantly enhances the value proposition
- **Nice-to-have**: Adds marginal value

### 3.2 Pain Relievers

Pain Relievers describe HOW your products and services alleviate specific
customer pains. Each pain reliever should map to one or more identified pains.

**Pain Reliever quality checklist:**
- [ ] Does it address an extreme or moderate pain? (Addressing minor pains has low impact)
- [ ] Is the relief measurable? (e.g., "reduces processing time from 3 hours to 15 minutes")
- [ ] Does it eliminate the pain entirely or merely reduce it?
- [ ] Is the relief immediate or does it require behavior change?
- [ ] Can we prove the relief with evidence (demo, trial, case study)?

**Example — Project Management Tool:**
```
PAIN: "Team members miss deadlines because they lose track of dependencies"
PAIN RELIEVER: "Automated dependency tracking with real-time alerts when
upstream tasks are delayed, showing exact impact on downstream deadlines"
RELIEF TYPE: Eliminates (not merely reduces)
EVIDENCE: "Teams using dependency tracking complete projects 23% faster"
```

### 3.3 Gain Creators

Gain Creators describe HOW your products and services create customer gains.
Each gain creator should map to one or more identified gains.

**Gain Creator quality checklist:**
- [ ] Does it create a required or desired gain? (Unexpected gains are bonus)
- [ ] Is the gain quantifiable? (e.g., "saves $2,400/year per user")
- [ ] Does it create a gain that competitors cannot easily replicate?
- [ ] Is the gain relevant to the customer's most important jobs?
- [ ] Can the customer experience the gain quickly (time to value)?

---

## 4. ACHIEVING FIT

Fit is the holy grail of the VPC. There are three types of fit, representing
increasing levels of validation.

### 4.1 Three Types of Fit

```
FIT PROGRESSION:

[Problem-Solution Fit] --> [Product-Market Fit] --> [Business Model Fit]
     (on paper)              (in market)              (at scale)

Stage 1: You have evidence that customer jobs, pains, and gains MATTER
         and your value map ADDRESSES them (design-stage validation)

Stage 2: Your products and services actually CREATE value in the market,
         as evidenced by customer traction (measurable market validation)

Stage 3: You can deliver the value proposition through a scalable,
         profitable business model (unit economics work)
```

### 4.2 Problem-Solution Fit Scoring System

Use this scoring system to assess fit quality before going to market.

**Step 1: Rank Customer Profile elements**

Rate each job, pain, and gain on two dimensions:

| Dimension    | Scale | Meaning                                                   |
|-------------|-------|-----------------------------------------------------------|
| Importance  | 1-5   | 1=trivial, 3=moderate, 5=critical to customer             |
| Satisfaction| 1-5   | 1=completely unmet, 3=partially met, 5=fully met today    |

**Step 2: Calculate Opportunity Score**

```
OPPORTUNITY SCORE = Importance + MAX(Importance - Satisfaction, 0)

Interpretation:
- Score 8-10: UNDERSERVED — high importance, low satisfaction → prime target
- Score 5-7:  SERVED — importance roughly matches satisfaction → competitive
- Score 0-4:  OVERSERVED — low importance or already well-served → avoid
```

This formula is adapted from Anthony Ulwick's Outcome-Driven Innovation
framework. Jobs/pains/gains with opportunity scores of 8+ are where your
value proposition should focus.

**Step 3: Map Value Map to top-scoring elements**

For each element scoring 8+:
- Identify which pain reliever or gain creator addresses it
- Rate the STRENGTH of the match (1-5 scale):
  1 = Tangential connection
  2 = Partial relief/creation
  3 = Meaningful relief/creation
  4 = Strong relief/creation
  5 = Complete relief/creation

**Step 4: Compute Weighted Fit Score**

```
FIT SCORE = SUM(Opportunity Score x Match Strength) / SUM(Opportunity Scores) x 20

Scale: 0-100
- 80-100: Strong fit — proceed to market testing
- 60-79:  Moderate fit — iterate on value map
- 40-59:  Weak fit — revisit customer profile or pivot
- 0-39:   No fit — fundamental rethink needed
```

### 4.3 Fit Assessment Decision Tree

```
START: Do you have validated customer jobs?
  |
  +--NO --> Conduct customer research (web mining + simulated interviews)
  |
  +--YES
      |
      Are the top 3 pains rated Importance >= 4?
        |
        +--NO --> You may be solving trivial problems. Research deeper.
        |
        +--YES
            |
            Do your pain relievers address these top 3 pains?
              |
              +--NO --> Redesign value map to target top pains
              |
              +--YES
                  |
                  Match Strength >= 3 for each?
                    |
                    +--NO --> Strengthen your solution or find better fit
                    |
                    +--YES
                        |
                        Is your FIT SCORE >= 60?
                          |
                          +--NO --> Iterate (add gain creators, improve relievers)
                          |
                          +--YES --> Proceed to validation experiments
```

---

## 5. COMMON FAILURE MODES

### Failure Mode 1: Starting with the Value Map
**Symptom**: Team fills out Products & Services first, then reverse-engineers
customer needs to justify existing features.
**Fix**: Physically cover the left side. Fill out Customer Profile from
research data only. Then uncover the Value Map and design to match.

### Failure Mode 2: Conflating Jobs with Solutions
**Symptom**: Customer jobs are written as features: "Use our dashboard" instead
of "Monitor team performance in real time."
**Fix**: Apply the "alarm clock test" — if you removed your product from the
world, would the customer still have this job? If yes, it's a real job.

### Failure Mode 3: Listing Pains That Are Really Absent Gains
**Symptom**: Pain list includes "Doesn't have AI" — that's a missing gain, not
a pain.
**Fix**: Pains must describe negative experiences: frustrations, risks,
obstacles, bad outcomes. "Manual data entry takes 3 hours" is a pain.
"Doesn't have automation" is a missing gain.

### Failure Mode 4: Too Many Items, No Prioritization
**Symptom**: Canvas has 20+ jobs, 15+ pains, 15+ gains — everything looks
equally important.
**Fix**: Force-rank. Maximum 5 jobs, 5 pains, 5 gains on the canvas. Use the
Opportunity Score to select the top items. The canvas is a PRIORITIZATION
tool, not a comprehensive inventory.

### Failure Mode 5: Single Customer Segment
**Symptom**: One canvas tries to serve enterprise buyers, end users, and
administrators simultaneously.
**Fix**: Create separate canvases per segment. Jobs, pains, and gains differ
radically by persona. A buyer's job is "Justify ROI to CFO." A user's job is
"Complete my task without training."

### Failure Mode 6: No Validation Evidence
**Symptom**: Canvas is filled from team assumptions, never tested with
customers.
**Fix**: Every pain and gain should have a source tag: [Web Research],
[Interview], [Survey], [Behavioral Data], [Assumption]. Prioritize
eliminating [Assumption] tags through research.

---

## 6. REAL-WORLD EXAMPLES

### Example A: Slack (Early Stage Value Proposition)

**Customer Profile — Knowledge Worker in a Team**

| Element      | Description                                       | Importance | Satisfaction |
|-------------|---------------------------------------------------|-----------|-------------|
| Job 1       | Coordinate work with teammates in real-time        | 5         | 2           |
| Job 2       | Share files and decisions in searchable format     | 4         | 2           |
| Job 3       | Reduce time spent in meetings                      | 4         | 1           |
| Pain 1      | Email threads become unmanageable after 5 replies  | 5         | 1           |
| Pain 2      | Context lost when switching between tools          | 4         | 2           |
| Pain 3      | New team members can't access historical decisions | 4         | 1           |
| Gain 1      | Single place for all team communication            | 5         | 1           |
| Gain 2      | Instant feedback without scheduling meetings       | 4         | 2           |
| Gain 3      | Integrations with existing workflow tools          | 3         | 2           |

**Opportunity Scores:**
- Job 1: 5 + MAX(5-2, 0) = 8 (UNDERSERVED)
- Pain 1: 5 + MAX(5-1, 0) = 9 (UNDERSERVED)
- Pain 3: 4 + MAX(4-1, 0) = 7 (SERVED — borderline)
- Gain 1: 5 + MAX(5-1, 0) = 9 (UNDERSERVED)

**Value Map:**
- Pain Reliever for Pain 1: Channels replace email threads — persistent,
  organized, searchable. Match Strength: 5
- Pain Reliever for Pain 2: Integrations bring tools into one workspace.
  Match Strength: 4
- Gain Creator for Gain 1: All communication in one searchable platform.
  Match Strength: 5

**Fit Score**: High — Slack targeted the highest-opportunity elements.

### Example B: Uber (Early Stage Value Proposition)

**Customer Profile — Urban Professional Needing a Ride**

| Element | Description                                           | Importance | Satisfaction |
|---------|-------------------------------------------------------|-----------|-------------|
| Job 1   | Get from A to B reliably within 15 minutes of deciding| 5         | 2           |
| Pain 1  | Can't find a taxi when it's raining or at peak hours  | 5         | 1           |
| Pain 2  | Don't know how much the ride will cost until it's over| 4         | 1           |
| Pain 3  | Cash-only payment is inconvenient                     | 3         | 1           |
| Gain 1  | See exactly when the car will arrive                  | 4         | 1           |
| Gain 2  | Cashless, automatic payment                           | 3         | 1           |

**Value Map alignment:**
- Pain 1 → GPS-dispatched drivers appear in minutes (Match: 5)
- Pain 2 → Upfront pricing before ride confirmation (Match: 5)
- Gain 1 → Real-time map showing driver location (Match: 5)

---

## 7. AI-NATIVE EXECUTION PROTOCOL

When an AI agent executes Value Proposition Canvas analysis:

### Phase 1: Customer Profile Construction (Research)
1. Accept target segment description from user
2. Conduct web research: mine reviews, forums, social posts for jobs/pains/gains
3. Categorize all findings into functional/social/emotional jobs, pain categories,
   and gain types
4. Score each element on Importance (1-5) using frequency and intensity signals
   from research data
5. Score each element on Satisfaction (1-5) by analyzing existing solutions
6. Calculate Opportunity Scores and rank all elements

### Phase 2: Value Map Design
1. List the user's products, services, and features
2. For each high-opportunity element (score 8+), identify matching pain
   relievers or gain creators
3. Rate Match Strength (1-5) based on directness and completeness of relief
4. Identify GAPS — high-opportunity elements with no pain reliever or gain creator
5. Recommend value map additions to close gaps

### Phase 3: Fit Assessment
1. Compute Weighted Fit Score
2. Run the Fit Assessment Decision Tree
3. Identify the weakest links in the fit
4. Generate specific, actionable recommendations for improvement

### Phase 4: Artifact Creation
1. Produce the completed VPC as a structured document
2. Generate a prioritized list of hypotheses to validate
3. Create interview scripts targeting the highest-risk assumptions
4. Prepare structured handoff for downstream agents

---

## 8. QUICK-REFERENCE CHECKLIST

Before declaring a VPC complete, verify:

- [ ] Customer Profile filled from research, not assumptions
- [ ] Jobs use verb + object + context format
- [ ] Pains describe negative experiences, not missing features
- [ ] Gains categorized as Required/Expected/Desired/Unexpected
- [ ] All elements scored on Importance (1-5) and Satisfaction (1-5)
- [ ] Opportunity Scores calculated and elements ranked
- [ ] Maximum 5 items per category (jobs, pains, gains) on final canvas
- [ ] Each pain reliever maps to a specific pain (with Match Strength)
- [ ] Each gain creator maps to a specific gain (with Match Strength)
- [ ] Weighted Fit Score calculated
- [ ] Gaps identified and documented
- [ ] Key assumptions tagged for validation
- [ ] Separate canvas per customer segment
- [ ] Source tags on every element: [Web Research], [Interview], [Assumption]

---

## 9. GLOSSARY

| Term                   | Definition                                                         |
|-----------------------|---------------------------------------------------------------------|
| Customer Profile      | Structured description of a customer segment: jobs, pains, gains    |
| Value Map             | Description of how value is created: products, relievers, creators  |
| Fit                   | Alignment between Customer Profile and Value Map                    |
| Opportunity Score     | Importance + MAX(Importance - Satisfaction, 0) — ranks elements     |
| Match Strength        | 1-5 rating of how well a reliever/creator addresses an element      |
| Problem-Solution Fit  | Evidence that your design addresses real customer needs              |
| Product-Market Fit    | Evidence that customers adopt and pay for your solution              |
| Business Model Fit    | Evidence that value delivery is scalable and profitable              |
| Pain Reliever         | How a product/service alleviates a specific customer pain           |
| Gain Creator          | How a product/service creates a specific customer gain              |

---

## 10. RECOMMENDED READING

- Osterwalder, A. et al. (2014). *Value Proposition Design*. Wiley.
- Osterwalder, A. & Pigneur, Y. (2010). *Business Model Generation*. Wiley.
- Ulwick, A. (2005). *What Customers Want*. McGraw-Hill.
- Bland, D. & Osterwalder, A. (2019). *Testing Business Ideas*. Wiley.
- Strategyzer.com — official VPC templates and resources.
