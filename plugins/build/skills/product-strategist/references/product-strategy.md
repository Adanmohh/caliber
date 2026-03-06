# Reforge Product Strategy Frameworks

## Source Attribution
Primary sources: Reforge Product Strategy Program (Casey Winters, Fareed Mosavat),
Ravi Mehta's Product Strategy Stack, Brian Balfour's growth frameworks, and the
Reforge PMF Expansion model. Supplemented by real-world case studies from Slack,
Notion, Figma, Spotify, and Superhuman.

---

## 1. The Product Strategy Stack

The Product Strategy Stack is the foundational hierarchy that connects high-level
company purpose to day-to-day execution. Each layer constrains and informs the
layer below it. When layers are misaligned, teams ship features that do not move
the business forward.

```
+-----------------------------------------------+
|            COMPANY MISSION                     |
|  The world you see and the change you want     |
+-----------------------------------------------+
                    |
                    v
+-----------------------------------------------+
|            COMPANY STRATEGY                    |
|  Logical plan to bring mission into being      |
|  (market choice, competitive moat, biz model)  |
+-----------------------------------------------+
                    |
                    v
+-----------------------------------------------+
|            PRODUCT STRATEGY                    |
|  How the product drives its part of company    |
|  strategy (sequence of bets, not feature list) |
+-----------------------------------------------+
                    |
                    v
+-----------------------------------------------+
|            PRODUCT ROADMAP                     |
|  Sequence of features/outcomes implementing    |
|  the product strategy over time                |
+-----------------------------------------------+
                    |
                    v
+-----------------------------------------------+
|            PRODUCT GOALS                       |
|  Quarterly and sprint-level outcomes that      |
|  measure progress against product strategy     |
+-----------------------------------------------+
```

### Layer Definitions

| Layer             | Timeframe     | Owner              | Artifact                          |
|-------------------|---------------|--------------------|------------------------------------|
| Company Mission   | 10+ years     | CEO / Founders     | Mission statement                  |
| Company Strategy  | 3-5 years     | Executive team     | Strategic plan, annual priorities   |
| Product Strategy  | 1-3 years     | Head of Product    | Strategy document, strategic bets   |
| Product Roadmap   | Quarter-Year  | Product Managers   | Outcome-based roadmap              |
| Product Goals     | Week-Quarter  | Product Teams      | OKRs, KPIs, sprint goals           |

### Common Failure Mode: The Untethered Roadmap

When product roadmaps are built without explicit connection to product strategy
and company strategy, teams optimize for output (features shipped) instead of
outcomes (business results). Symptoms include:

- Roadmap items justified by "customers asked for it" without strategic filter
- No ability to say "no" -- everything feels equally important
- Quarterly goals that measure activity (launches) rather than impact (retention)
- Teams feel busy but the business does not grow

### AI Agent Application

An AI agent system applies the Product Strategy Stack by:

1. Ingesting the company mission and strategy from existing documents or user input
2. Conducting real-time market research to identify strategic context
3. Generating a product strategy that explicitly maps to company strategy
4. Producing an outcome-based roadmap with clear traceability to each strategic bet
5. Defining measurable goals for each roadmap item with leading/lagging indicators

The agent should ALWAYS ask: "What layer of the stack are we working on?" before
generating any artifact. A roadmap request without strategy context should trigger
a strategy-first conversation.

---

## 2. Five Types of Product Work

Reforge categorizes all product work into five distinct types. Each type requires
different skills, metrics, and team structures. Misidentifying the type of work
leads to wrong frameworks, wrong metrics, and wrong team composition.

### Type 1: Product-Market Fit (0-to-1)

- **Definition**: Going from zero to initial product-market fit
- **Key question**: "Do people want this?"
- **Metrics**: Sean Ellis score, early retention, qualitative signal strength
- **Team shape**: Small, founder-led, high autonomy
- **Risk profile**: High uncertainty, fast iteration cycles
- **Example**: Slack's early days as an internal tool at Tiny Speck that solved
  communication pain so well that 8,000 users signed up on day one of public launch

### Type 2: Feature Work

- **Definition**: Extending functionality into incremental and adjacent areas
- **Key question**: "Does this create or capture more value from existing users?"
- **Metrics**: Feature adoption rate, incremental revenue, user satisfaction
- **Team shape**: Cross-functional product teams with clear scope
- **Risk profile**: Medium uncertainty, established user base provides signal
- **Example**: Notion adding databases, then API access, then connected databases --
  each feature expanding what existing users could do within the product

### Type 3: Growth Work

- **Definition**: Accelerating adoption and usage by the existing target market
- **Key question**: "How do we get more of the right people using this more often?"
- **Metrics**: Acquisition rate, activation rate, engagement frequency, virality
- **Team shape**: Growth-specialized teams with analytics depth
- **Risk profile**: Lower uncertainty, optimization-oriented
- **Example**: Figma making collaboration free and frictionless -- every shared
  design file became an acquisition channel as non-Figma users received invites

### Type 4: Scaling Work

- **Definition**: Removing bottlenecks that prevent continued growth
- **Key question**: "What breaks if we 10x from here?"
- **Metrics**: System reliability, team velocity, operational efficiency
- **Team shape**: Platform and infrastructure teams
- **Risk profile**: Technical debt vs. speed tradeoffs
- **Example**: Spotify rebuilding its backend from monolith to microservices to
  support tens of millions of concurrent streams

### Type 5: Product-Market Fit Expansion

- **Definition**: Non-incremental expansion into adjacent markets or products
- **Key question**: "How do we raise the ceiling on our addressable market?"
- **Metrics**: New segment adoption, new use case retention, market size expansion
- **Team shape**: Semi-autonomous teams with startup-like authority
- **Risk profile**: High uncertainty but within existing brand/platform context
- **Example**: Slack expanding from team messaging to Slack Connect (cross-company
  channels), effectively creating a new network and new buyer segment

### Decision Tree: Identifying Work Type

```
Start: What are we trying to accomplish?
  |
  +-- "We don't have PMF yet"
  |     --> Type 1: PMF Work (discovery-heavy, validate core value)
  |
  +-- "We have PMF and want to improve for current users"
  |     --> Type 2: Feature Work (extend functionality, capture more value)
  |
  +-- "We have PMF and want more users/usage"
  |     --> Type 3: Growth Work (optimize funnels, loops, activation)
  |
  +-- "Growth is constrained by systems/processes"
  |     --> Type 4: Scaling Work (remove bottlenecks)
  |
  +-- "We've maximized current market, need new segments"
        --> Type 5: PMF Expansion (adjacent markets or products)
```

---

## 3. Product-Market Fit Expansion Model

PMF Expansion is Reforge's framework for growing beyond initial product-market fit.
Unlike incremental feature work, PMF Expansion fundamentally changes what you offer
or who you serve.

### Three Expansion Vectors

```
                     PRODUCT EXPANSION
                     (New capabilities)
                           ^
                           |
                           |
    MARKET EXPANSION ------+------ CHANNEL EXPANSION
    (New segments)         |       (New distribution)
                           |
                           v
                    CURRENT PMF
                    (Foundation)
```

#### Vector 1: Market Expansion
Bringing existing product to new user segments or geographies.

| Dimension          | Description                                    |
|--------------------|------------------------------------------------|
| New persona        | Same product, different job-to-be-done          |
| New company size   | SMB to enterprise or enterprise to SMB          |
| New geography      | Localization, compliance, local partnerships    |
| New vertical       | Horizontal product specialized for industry     |

**Example -- Figma**: Started with individual designers, expanded to entire
product teams (PMs, engineers, stakeholders), then to enterprise organizations.
Each expansion required new features (FigJam for brainstorming, Dev Mode for
engineers) but leveraged the same collaborative foundation.

**Example -- Notion**: Started with individual note-takers, expanded to team
wikis, then enterprise knowledge management. Each segment required different
features (permissions, SSO, audit logs) but the flexible block-based architecture
served all segments.

#### Vector 2: Product Expansion
Building new capabilities that unlock new value propositions.

**Example -- Slack**: Core messaging expanded to Slack Connect (inter-company
channels), Workflow Builder (automation), and Slack Clips (async video). Each
new capability addressed a different job-to-be-done while strengthening the
core communication platform.

**Example -- Spotify**: Music streaming expanded to podcasts, then audiobooks,
then creator tools. Each expansion created new value for existing users AND
attracted new user segments (podcast listeners who did not use Spotify for music).

#### Vector 3: Channel Expansion
Reaching users through new distribution mechanisms.

**Example -- Figma**: Free community templates and plugins created organic
discovery channels. Designers finding a useful template would start using Figma,
bypassing traditional acquisition. The community became the growth engine.

### PMF Expansion Decision Framework

Before pursuing expansion, score each vector:

| Criteria                          | Weight | Score (1-5) |
|-----------------------------------|--------|-------------|
| Market size of new segment        | 25%    |             |
| Leverage from existing product    | 20%    |             |
| Competitive defensibility         | 15%    |             |
| Team capability match             | 15%    |             |
| Revenue potential (12-month)      | 15%    |             |
| Risk to core PMF                  | 10%    |             |

**Scoring guidance:**
- 5 = Strong signal (large market, high leverage, clear moat)
- 3 = Moderate signal (medium market, some leverage, unclear moat)
- 1 = Weak signal (small market, no leverage, no moat)

**CRITICAL RULE**: Any expansion that scores below 3 on "Risk to core PMF"
should be deprioritized regardless of other scores. Protecting existing PMF
is non-negotiable.

### Common PMF Expansion Failures

| Failure Mode                | Description                                          | Real Example                                    |
|-----------------------------|------------------------------------------------------|-------------------------------------------------|
| Premature expansion         | Expanding before core PMF is solid                   | Google+ launching before validating social need  |
| Ignoring existing context   | Building expansion as if it were a new startup        | Microsoft's early mobile efforts ignoring Windows|
| Cannibalizing core          | New product undermining existing value prop            | Snapchat Discover diluting core messaging UX     |
| Over-indexing on adjacency  | "It's close to what we do" without validating demand  | Evernote expanding into physical goods           |
| Under-investing             | Treating expansion like a side project                | Twitter's repeated half-hearted product launches |

---

## 4. Product-Market Fit Measurement

PMF is not binary. It exists on a spectrum and must be continuously measured.

### The Sean Ellis Test

The core survey question: "How would you feel if you could no longer use [product]?"

Response options:
1. Very disappointed
2. Somewhat disappointed
3. Not disappointed
4. N/A -- I no longer use [product]

**Benchmark**: 40%+ selecting "Very disappointed" indicates PMF.

**Implementation rules:**
- Survey users who have experienced the core value (not day-1 signups)
- Minimum sample size: 40 responses for statistical relevance
- Run quarterly to track trajectory
- Segment results by user cohort, use case, and acquisition channel

### Retention Curve Analysis

```
Retention
Rate (%)
100|*
   | *
   |  *
 80|   *
   |    *
   |     *
 60|      **
   |        **
   |          ***
 40|             ****
   |                 ********
   |                         ***************  <-- Flattening = PMF signal
 20|
   |
   |  NO FLATTENING = NO PMF
  0+----+----+----+----+----+----+----+----+---
   W1   W2   W3   W4   W5   W6   W7   W8   W12

Key:
  * = Cohort retention over time
  Flattening curve = Core group of users stick around (PMF signal)
  Continuously declining = Product has not found PMF
```

**Three retention patterns:**

| Pattern              | Shape                  | PMF Signal | Action                        |
|----------------------|------------------------|------------|-------------------------------|
| Flattening curve     | Steep drop then flat   | Strong     | Invest in growth and expansion|
| Slow continuous drop | Gradual decline, no flat| Weak      | Improve core value loop       |
| Cliff                | Rapid drop to near zero| None       | Pivot or fundamental rethink  |

### Engagement Depth Metrics

| Metric                   | Formula                          | Good Benchmark     |
|--------------------------|----------------------------------|--------------------|
| DAU/MAU ratio            | Daily active / Monthly active    | 20%+ (B2B: 30%+)  |
| L7/L30 ratio             | Active 7 of 30 days / MAU        | 25%+               |
| Core action frequency    | Core actions per active user/week| Varies by category |
| Session depth            | Actions per session               | Growing over time  |
| Feature breadth          | Distinct features used per user   | Growing over time  |
| Time to core action      | Time from signup to first value   | Decreasing trend   |

### PMF Measurement Cadence

| Metric                    | Frequency   | Owner              |
|---------------------------|-------------|--------------------|
| Sean Ellis survey         | Quarterly   | Product Manager    |
| Cohort retention curves   | Monthly     | Growth/Analytics   |
| DAU/MAU ratio             | Weekly      | Growth/Analytics   |
| NPS by segment            | Quarterly   | Product Manager    |
| Core action frequency     | Weekly      | Product Manager    |
| Churn analysis (reasons)  | Monthly     | Customer Success   |

---

## 5. Compounding Product Strategy

Reforge emphasizes that the best product strategies create compounding returns --
where each decision amplifies the value of previous decisions.

### Compounding Mechanisms

| Mechanism             | Description                                        | Example                                          |
|-----------------------|----------------------------------------------------|--------------------------------------------------|
| Data network effects  | More users = better data = better product           | Spotify recommendations improve with more plays   |
| Content flywheels     | User-generated content attracts new users           | Notion templates shared in community               |
| Platform lock-in      | Integrations and workflows increase switching cost  | Slack's 2,400+ app integrations                    |
| Brand compounding     | Each positive interaction strengthens brand trust   | Figma's "design tool for teams" positioning        |
| Capability stacking   | Each new capability makes the next more valuable    | Notion: notes -> databases -> automations -> AI    |

### Strategic Sequencing

Product strategy is about sequencing bets so that early wins unlock later,
larger opportunities. The AI agent system should map dependencies:

```
Bet 1: Core value       Bet 2: Expansion        Bet 3: Platform
(Validate, retain)  --> (Grow market)       --> (Compound moat)
  |                       |                       |
  +-- Learnings feed -->  +-- Data feeds ----->   +-- Network effects
      next bet                next bet                lock in value
```

### AI Agent Application: Strategic Sequencing

When generating a product strategy, the AI agent system should:

1. Identify which decisions compound (ask: "Does this make future bets easier?")
2. Sequence bets so learning from Bet N informs Bet N+1
3. Flag non-compounding work (one-off features that do not build toward moat)
4. Visualize dependency chains between strategic bets
5. Score each bet on compounding potential (1-5 scale):
   - 5 = Creates new capability/data that directly enables 2+ future bets
   - 3 = Provides useful learning but does not create reusable assets
   - 1 = Standalone value only, no downstream leverage

---

## 6. Growth Loops (Reforge)

### Key Insight: Loops > Funnels

Funnels are linear: acquire -> activate -> retain -> monetize. Each stage leaks.
Growth loops are circular: output from one cycle reinvests as input to the next,
creating compounding returns. The best growth engines are loops, not funnels.

```
INPUT --> [ACTION] --> OUTPUT --> REINVESTMENT
  ^                                    |
  +------------------------------------+
  (output feeds back as new input)
```

### Growth Loop Taxonomy

| Loop Type | Input | Action | Output | Reinvestment | Example |
|-----------|-------|--------|--------|-------------|---------|
| Viral | New user | Uses product visibly | Non-users exposed | Some convert to users | Figma shared files |
| Content (UGC) | User creates content | Content indexed/shared | New visitors discover | Some become creators | Notion templates |
| Content (SEO) | Topic opportunity | Publish content | Organic traffic | Revenue funds more content | HubSpot blog |
| Paid | Revenue | Buy ads | New customers | Revenue reinvested in ads | Performance marketing |
| Sales | Leads | Sales team closes | Revenue + referrals | Fund more sales capacity | Enterprise SaaS |
| Data/AI | User interaction | AI improves with data | Better product | Attracts more users | Spotify Discover Weekly |

### Loop Quality Metrics

| Metric | Definition | What Good Looks Like |
|--------|-----------|---------------------|
| Cycle time | Time from input to reinvestment | Shorter = faster compounding |
| Conversion per cycle | % of output that converts back to input | Higher = stronger loop |
| Retention per cycle | % of users who stay to complete the loop | Higher = more durable |
| Loop efficiency | Output value / input cost | >1 means self-sustaining |

### Decision Tree: Which Growth Loop Fits?

```
What is your primary distribution advantage?
|
+-- Product usage is visible to non-users
|   --> VIRAL LOOP (invest in sharing mechanics, invite flows)
|
+-- Users create content others find valuable
|   --> UGC / CONTENT LOOP (invest in creation tools, SEO, distribution)
|
+-- You have capital and measurable unit economics
|   --> PAID LOOP (invest in attribution, LTV optimization)
|
+-- Product improves with more user data
|   --> DATA LOOP (invest in personalization, AI, network effects)
|
+-- Long sales cycles, high ACV, relationship-driven
|   --> SALES LOOP (invest in sales enablement, customer success)
|
+-- None of the above clear yet
    --> Start with content loop (lowest capital requirement, builds SEO moat)
```

**Sequencing principle**: Most products start with one primary loop, then layer
additional loops as they scale. Viral + content loops are most common initial
combination for PLG products.

---

## 7. Strategic Context Framework

Before any product strategy work, the AI agent system must establish strategic
context. Without context, strategy is guesswork.

### Context Dimensions to Research

| Dimension           | Key Questions                                       | Research Method                  |
|---------------------|-----------------------------------------------------|----------------------------------|
| Market maturity     | Growing, mature, or declining? TAM trajectory?      | Market reports, trend analysis   |
| Competitive landscape| Who are direct/indirect competitors? Their strategy?| Competitor feature/pricing audit |
| User segments       | Who uses us? Who should but does not?               | Analytics, user research         |
| Technology shifts   | What tech changes enable new approaches?            | Technology trend scanning        |
| Regulatory environment| What constraints or opportunities exist?           | Regulatory landscape analysis    |
| Internal capabilities| What can we uniquely do? What can we NOT do?       | Team capability assessment       |

### Strategic Context Template

```
STRATEGIC CONTEXT ASSESSMENT
============================

Market Position:     [Leader | Challenger | Niche | New Entrant]
PMF Status:          [Pre-PMF | Early PMF | Strong PMF | PMF Expansion]
Growth Phase:        [0-to-1 | Feature | Growth | Scaling | Expansion]
Primary Constraint:  [Product | Distribution | Monetization | Team]
Competitive Moat:    [Network Effects | Data | Brand | Switching Cost | None]
Time Horizon:        [Survival (< 12mo) | Growth (1-3yr) | Dominance (3-5yr)]
```

---

## 8. Real-World Strategy Case Studies

### Case Study 1: Figma -- From Design Tool to Design Platform

**Phase 1 (PMF)**: Browser-based design tool with real-time collaboration.
Validated that designers would switch from Sketch for collaboration benefits.

**Phase 2 (Growth)**: Made collaboration free. Every shared file became an
acquisition channel. Community templates drove organic discovery.

**Phase 3 (PMF Expansion)**: FigJam (whiteboarding) expanded from designers to
entire product teams. Dev Mode expanded to engineering handoff. Each expansion
brought new personas into the Figma ecosystem.

**Compounding element**: Community-created templates and plugins increased the
value of the platform, attracting more creators, attracting more users.

### Case Study 2: Slack -- From Messaging to Work Platform

**Phase 1 (PMF)**: Solved team communication pain. Internal tool at Tiny Speck
became the product when team realized it was more valuable than the game.

**Phase 2 (Growth)**: Freemium model with viral team adoption. Value multiplied
with each new team member. 4%+ free-to-paid conversion rate.

**Phase 3 (PMF Expansion)**: Slack Connect turned internal messaging into
inter-company communication. Workflow Builder turned messaging into automation.
Each expansion raised the ceiling on addressable market.

**Compounding element**: 2,400+ integrations created massive switching costs.
Every integration installed made Slack harder to replace.

### Case Study 3: Superhuman -- Deliberate PMF Measurement

**PMF Measurement Innovation**: Rahul Vohra used the Sean Ellis test as a
systematic engine for product improvement. When the score was 22% (below 40%
threshold), the team:

1. Segmented users who said "very disappointed"
2. Identified their common characteristics (high-volume email professionals)
3. Asked "somewhat disappointed" users what would make them "very disappointed"
4. Built features addressing those gaps
5. Re-measured quarterly until crossing 40%

This made PMF measurement an ongoing practice, not a one-time test.

### Case Study 4: Notion -- Flexibility as Strategy

**Strategic insight**: Rather than building a narrow tool for one use case,
Notion built flexible primitives (blocks, databases, relations) that users
assembled into custom solutions.

**PMF Expansion**: The same flexible architecture served individuals (notes),
teams (wikis), and enterprises (knowledge management) without rebuilding the
core product. Each expansion required adding permissions, not rebuilding.

**Compounding element**: User-created templates became distribution. A shared
Notion template for "Sprint Planning" brought entire engineering teams onto
the platform.

### Case Study 5: Spotify -- Content Type Expansion

**Strategic bet sequence**:
1. Music streaming (core PMF)
2. Personalized playlists (data moat via Discover Weekly)
3. Podcasts (new content type, new user segment)
4. Audiobooks (further content expansion)
5. Creator tools (platform play)

Each bet leveraged user data and listening habits from previous bets. The
recommendation engine improved with each content type added, creating a
compounding data advantage.

---

## 9. AI Agent Strategy Execution Checklist

When the AI agent system executes product strategy work, follow this sequence:

```
[ ] 1. ESTABLISH CONTEXT
    [ ] Identify which layer of the Strategy Stack we are working on
    [ ] Determine the type of product work (PMF, Feature, Growth, Scale, Expand)
    [ ] Research competitive landscape and market context via web
    [ ] Assess current PMF status using available data

[ ] 2. DEFINE STRATEGY
    [ ] Articulate strategic bets (not features) with clear hypotheses
    [ ] Score each bet on impact, confidence, effort, and compounding potential
    [ ] Sequence bets so early wins enable later bets
    [ ] Identify explicit non-goals (what we will NOT do and why)

[ ] 3. BUILD ROADMAP
    [ ] Translate strategic bets into outcome-based roadmap items
    [ ] Organize using Now/Next/Later framework
    [ ] Map each roadmap item to a measurable outcome
    [ ] Validate that roadmap items trace back to strategy

[ ] 4. SET MEASUREMENT
    [ ] Define leading indicators (will we know early if the bet is working?)
    [ ] Define lagging indicators (did the bet achieve its intended outcome?)
    [ ] Establish PMF measurement cadence if relevant
    [ ] Create decision criteria: what signal triggers pivot vs. persevere?

[ ] 5. COMMUNICATE
    [ ] Generate strategy document as artifact
    [ ] Highlight key tradeoffs and the reasoning behind them
    [ ] Pass strategic context to downstream agents (spec writing, design, growth)
    [ ] Flag dependencies on other teams or external factors
```

---

## 10. Product Strategy Anti-Patterns

| Anti-Pattern                     | Description                                               | Fix                                              |
|----------------------------------|-----------------------------------------------------------|--------------------------------------------------|
| Strategy by accretion            | Roadmap grows by adding requests, never removing           | Apply strategic filter: does it serve a bet?     |
| Peanut butter strategy           | Spreading resources equally across all opportunities       | Force-rank bets; fund top 3, kill the rest       |
| Copycat strategy                 | Building what competitors build                            | Ask "Why us? Why now?" for every feature          |
| Technology-first strategy        | "We have AI, let's find a use case"                        | Start from user problem, not technology           |
| Consensus strategy               | Everyone agrees, no hard choices made                      | Strategy requires explicit tradeoffs              |
| Infinite horizon strategy        | Vision without near-term milestones                        | Every 3-year bet needs a 3-month validation plan |
| Metric theater                   | Tracking metrics that do not connect to strategic bets     | Tie every metric to a specific strategic hypothesis|

---

## Quick Reference: Key Formulas

```
PMF Score         = (% "Very Disappointed") from Sean Ellis survey
Retention Rate    = (Users active in period N) / (Users in original cohort)
DAU/MAU Ratio     = (Daily Active Users) / (Monthly Active Users)
Feature Adoption  = (Users using feature) / (Total eligible users)
Expansion Revenue = (Revenue from upsell + cross-sell) / (Starting MRR)
Compounding Score = (Impact * Reusability * Data Generation) / 3
```
