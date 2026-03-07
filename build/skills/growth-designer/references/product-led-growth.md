# Product-Led Growth — Wes Bush

## Source Attribution
- Primary: "Product-Led Growth: How to Build a Product That Sells Itself" by Wes Bush (2019)
- Supporting: "The Product-Led Playbook" by Wes Bush (2023)
- Framework origin: ProductLed.com, Wes Bush's coaching of 400+ SaaS companies
- Additional: OpenView Partners PLG benchmarks, Kyle Poyar's PLG metrics research

---

## 1. Core Philosophy

Product-Led Growth (PLG) is a go-to-market strategy where the product itself
is the primary vehicle for customer acquisition, conversion, and expansion.
Instead of relying on sales teams to convince prospects, the product delivers
value directly, letting users experience it before paying.

### PLG vs Sales-Led vs Marketing-Led

```
+------------------+------------------+------------------+------------------+
| DIMENSION        | SALES-LED        | MARKETING-LED    | PRODUCT-LED      |
+------------------+------------------+------------------+------------------+
| Primary driver   | Sales team       | Content/ads      | Product itself   |
| First contact    | Demo/call        | Landing page     | Free signup      |
| Time-to-value    | Weeks/months     | Days/weeks       | Minutes          |
| Conversion       | Sales closes     | MQL -> SQL       | PQL -> customer  |
| Cost per acq.    | High ($$$)       | Medium ($$)      | Low ($)          |
| Scalability      | Linear (add reps)| Medium           | Exponential      |
| User trust       | Built by rep     | Built by content | Built by product |
| Decision maker   | Executive buyer  | Marketing buyer  | End user         |
+------------------+------------------+------------------+------------------+
```

### The Three PLG Pillars

Bush identifies three components every PLG strategy must address:

1. **Acquisition**: How do users discover and sign up for your product?
2. **Monetization**: How and when do free users become paying customers?
3. **Retention**: How do you keep users engaged and expanding?

```
         ACQUISITION
        /           \
       /     PLG     \
      /    STRATEGY   \
     /                 \
MONETIZATION -------- RETENTION
```

All three must work together. Great acquisition with poor retention is a
leaky bucket. Great retention with poor monetization leaves money on the table.

---

## 2. The MOAT Framework

Bush's MOAT framework helps companies determine if PLG is right for them
and which specific strategy to pursue.

### M — Market Strategy

Your go-to-market approach falls into one of three categories:

| Strategy | Description | PLG Fit | Example |
|---|---|---|---|
| Dominant | Category leader, competing on brand | Low — usually sales-led | Salesforce CRM |
| Differentiated | Unique value prop in existing category | Medium — PLG possible | Notion vs Google Docs |
| Disruptive | New approach, 10x better/cheaper | High — PLG natural fit | Calendly vs email scheduling |

**Rule of thumb**: Disruptive strategies benefit most from PLG because the
product difference is experienced, not explained.

### O — Ocean Conditions

```
RED OCEAN (crowded market)           BLUE OCEAN (new market)
- Many competitors                   - Few or no competitors
- Users compare features             - Users need education
- PLG helps differentiate            - PLG helps demonstrate value
- Free tier must match competitors   - Free tier can be smaller
- Speed of onboarding is critical    - Depth of onboarding matters
```

### A — Audience

| Audience Type | Characteristics | PLG Approach |
|---|---|---|
| Top-Down | Executive buyer, large deals | Hybrid PLG + sales assist |
| Bottom-Up | End users adopt, bubble up to buyer | Pure PLG, viral loops |
| Mixed | Some users bottom-up, some top-down | Segmented approach |

**Key insight**: PLG works best with bottom-up adoption. If your buyer never
uses the product, pure PLG is risky. Consider hybrid.

### T — Time-to-Value

Time-to-value (TTV) is how quickly a new user experiences the core value
of your product. This is the single most important metric in PLG.

```
TIME-TO-VALUE SPECTRUM
======================

IMMEDIATE (seconds)          MODERATE (minutes)        SLOW (days+)
Google Search                Slack (send first msg)    Salesforce CRM
Calendly (share link)        Notion (create first      SAP
Calculator apps              page)                     Enterprise tools
                             Canva (create first
                             design)

PLG VIABILITY:
|=========================|===================|===========|
  HIGH                      MEDIUM               LOW
  Pure self-serve            PLG + onboarding     Sales-assisted
                             assistance           or hybrid
```

### MOAT Scoring

```
MOAT ASSESSMENT SCORECARD
=========================

MARKET STRATEGY                                    Score
- Disruptive (new approach, 10x better)            3 pts
- Differentiated (unique value in existing market)  2 pts
- Dominant (competing on brand/scale)              1 pt
                                          Score:   ___/3

OCEAN CONDITIONS
- Blue ocean (little competition)                  3 pts
- Blue-ish (some competition, room to differentiate) 2 pts
- Red ocean (crowded, commoditized)                1 pt
                                          Score:   ___/3

AUDIENCE
- Bottom-up (end users adopt first)                3 pts
- Mixed (some bottom-up, some top-down)            2 pts
- Top-down (executive buyers only)                 1 pt
                                          Score:   ___/3

TIME-TO-VALUE
- Immediate (under 5 minutes)                      3 pts
- Moderate (5-30 minutes with guidance)             2 pts
- Slow (requires days of setup)                    1 pt
                                          Score:   ___/3

TOTAL MOAT SCORE:                                  ___/12

INTERPRETATION:
10-12: Strong PLG candidate — go full product-led
7-9:   Good PLG potential — product-led with sales assist
4-6:   PLG risky — consider hybrid or sales-led with product support
Below 4: Sales-led is likely the better strategy
```

---

## 3. Freemium vs Free Trial Decision Framework

One of Bush's most practical frameworks: choosing between freemium and
free trial as your acquisition model.

### Definitions

```
FREEMIUM                              FREE TRIAL
- Permanent free tier                 - Time-limited full access
- Limited features/usage              - Full features for X days
- No time pressure                    - Urgency to evaluate
- Conversion: feature gating          - Conversion: time expiration
- User can stay forever               - User must decide at deadline
```

### Decision Matrix

| Factor | Favors Freemium | Favors Free Trial |
|---|---|---|
| Market size | Large (millions of potential users) | Smaller (thousands) |
| Value demonstration | Incremental (grows with usage) | Immediate (seen in days) |
| Viral potential | High (free users spread the word) | Lower (trial users churn) |
| Product complexity | Low (easy to get value from subset) | Higher (need full product) |
| Sales involvement | None desired (pure self-serve) | Some desired (trial + sales) |
| Monetization model | Usage-based, seat-based | Feature-based, plan-based |
| LTV ceiling | High (large expansion potential) | Lower (more binary decision) |
| Support cost per user | Low (product is intuitive) | Higher (users need help) |

### The Hybrid Option: Free Trial + Freemium

```
SIGN UP (free)
    |
    v
FREE TRIAL (14 days, full features)
    |
    +---> CONVERTS TO PAID (success)
    |
    +---> TRIAL EXPIRES
              |
              v
         FREEMIUM TIER (limited features, unlimited time)
              |
              +---> Eventually converts (nurtured by product value)
              |
              +---> Stays free (still provides viral value)
```

This hybrid is used by many successful PLG companies (Notion, Slack, Figma).
It gives urgency (trial deadline) plus safety net (freemium fallback).

### Freemium Design Principles

1. **Free tier must deliver real value** — it is not a crippled demo
2. **Free-to-paid boundary at the "aha moment"** — gate what makes users say "I need more"
3. **Upgrade path is natural, not forced** — usage-based limits feel fair
4. **Free users are marketing** — they spread the product virally
5. **The ratio matters** — typically 2-5% of free users convert to paid

---

## 4. The Bowling Alley Framework

Bush's signature onboarding framework. The metaphor: your user is a bowling
ball, the pins are the "aha moment," and bumpers keep the ball on track.

### The Straight Line

The straight line is the shortest path from signup to value realization.
Most products have 15-25 steps in their onboarding. After applying the
Bowling Alley Framework, teams typically:
- Remove 30-40% of steps
- Defer another 20% to after value realization
- Help users reach value 2-3x faster

```
BEFORE BOWLING ALLEY:
Sign up -> Profile -> Preferences -> Tutorial -> Feature 1 -> Feature 2 ->
Feature 3 -> Integration -> Invite team -> Dashboard -> ... -> VALUE (maybe)

AFTER BOWLING ALLEY:
Sign up -> ONE core action -> VALUE (aha moment!)
    |                            |
    |  [bumpers keep user        |  [expansion after value]
    |   on track]                |
    v                            v
  Defer: Profile, Prefs,       Now: Invite team, integrations,
  Tutorial, non-essential       deeper features, upgrade prompt
```

### Designing the Straight Line

**Step 1: Define the "aha moment"**
What is the single experience that makes users say "I need this"?

| Product | Aha Moment |
|---|---|
| Slack | First real-time message exchange with a teammate |
| Dropbox | First file synced across devices |
| Calendly | First meeting booked through shared link |
| Canva | First professional-looking design created |
| Notion | First useful workspace page created |
| Zoom | First video call completed |

**Step 2: Map every step between signup and aha moment**
List every click, every form field, every decision point.

**Step 3: For each step, ask three questions**
1. Can I REMOVE this step entirely?
2. Can I DEFER this step to after value realization?
3. Can I SIMPLIFY this step (reduce fields, add defaults)?

### Product Bumpers

Product bumpers are in-product mechanisms that keep users on track toward
the aha moment. They activate INSIDE the product experience.

```
+---------------------------+----------------------------------------+
| PRODUCT BUMPER TYPE       | EXAMPLE                                |
+---------------------------+----------------------------------------+
| Welcome messages          | "Let's get you set up in 3 steps"      |
| Progress indicators       | "Step 2 of 3 — almost there!"          |
| Tooltips / hotspots       | Highlight the next action to take      |
| Empty states              | "No projects yet — create your first"  |
| Checklists                | Onboarding checklist with % complete   |
| Contextual prompts        | "Try this feature" when relevant       |
| Default content           | Pre-populated templates/examples       |
| Smart defaults            | Pre-filled forms based on signup data  |
| Celebration moments       | Confetti, badges when reaching aha     |
| Inline help               | "What's this?" explanations            |
+---------------------------+----------------------------------------+
```

### Conversational Bumpers

Conversational bumpers operate OUTSIDE the product — they re-engage users
who have dropped off the straight line.

```
+---------------------------+----------------------------------------+
| CONVERSATIONAL BUMPER     | EXAMPLE                                |
+---------------------------+----------------------------------------+
| Welcome email             | "Here's how to get started in 2 min"   |
| Usage-triggered email     | "You created a project — here's next"  |
| Re-engagement email       | "You haven't finished setup — need help?"|
| Educational email         | "3 ways to use [product] this week"    |
| Case study email          | "How [company] achieved X with us"     |
| In-app chat               | "Looks like you're stuck — can we help?"|
| Push notifications        | "Your [project] is ready for review"   |
| SMS / text                | "Your free trial ends in 3 days"       |
| Webinar invitations       | "Join us to learn advanced features"   |
| Community nudge           | "Ask questions in our user community"  |
+---------------------------+----------------------------------------+
```

### Bumper Timing Framework

```
USER LIFECYCLE STAGE        PRODUCT BUMPERS             CONVERSATIONAL BUMPERS
--------------------        ---------------             ----------------------
Signup (Day 0)              Welcome message,            Welcome email with
                            onboarding checklist        quick-start guide

First session (Day 0-1)    Tooltips, empty states,     "Getting started"
                            default content             email sequence

Value realization (Day 1-3) Celebration moment,         "Congrats!" email,
                            next-step suggestion        share/invite prompt

Expansion (Day 3-14)       Feature discovery            Educational emails,
                            prompts, advanced tips      case studies

Risk of churn (Day 7-30)   Re-engagement modals,       "We miss you" email,
                            value reminders             incentive offer

Conversion (Day 14-30)     Upgrade prompts at          Trial ending emails,
                            feature gates               ROI summary
```

---

## 5. Product-Qualified Leads (PQLs)

PQLs are the PLG equivalent of Sales-Qualified Leads (SQLs). Instead of
qualifying based on demographics or form fills, PQLs qualify based on
actual product usage behavior.

### PQL Definition Framework

```
PQL = User who has:
  1. Experienced the core value (reached aha moment)
  2. Demonstrated usage patterns that correlate with conversion
  3. Fits the ideal customer profile (ICP)

PQL SIGNALS:
+---------------------------+----------------------------------------+
| SIGNAL TYPE               | EXAMPLES                               |
+---------------------------+----------------------------------------+
| Activation signals        | Completed onboarding, used core feature|
| Engagement signals        | High frequency, multiple sessions      |
| Expansion signals         | Hitting usage limits, inviting team    |
| Intent signals            | Visiting pricing page, comparing plans |
| Fit signals               | Company size, industry, use case       |
+---------------------------+----------------------------------------+
```

### PQL Scoring Model

```
PQL SCORE CALCULATION
=====================

BEHAVIORAL SIGNALS (0-60 points):
- Completed core action (aha moment)      +15 pts
- Used product 3+ days in first week      +10 pts
- Invited 1+ team members                 +10 pts
- Used advanced feature                   +10 pts
- Hit usage limit                         +10 pts
- Visited pricing page                    + 5 pts

FIT SIGNALS (0-30 points):
- Company size matches ICP                +10 pts
- Industry matches ICP                    +10 pts
- Role matches buyer persona              +10 pts

ENGAGEMENT VELOCITY (0-10 points):
- Time from signup to aha < median        + 5 pts
- Increasing usage week-over-week         + 5 pts

TOTAL PQL SCORE:                          ___/100

THRESHOLDS:
70-100: Hot PQL — route to sales immediately
40-69:  Warm PQL — nurture with targeted content
Below 40: Not yet qualified — continue product-led nurture
```

### PQL vs MQL Comparison

| Dimension | MQL | PQL |
|---|---|---|
| Qualification basis | Form fills, content downloads | Product usage, behavior |
| Conversion rate | 5-10% | 25-30% |
| Sales effort | High (educate from scratch) | Low (user already knows product) |
| Data quality | Self-reported | Observed behavior |
| Time to qualify | Days (after content engagement) | Hours-days (after product usage) |
| Cost per qualified lead | Higher | Lower |
| Sales conversation | "Let me show you what we do" | "I see you've been using X — how can we help?" |

---

## 6. The PLG Flywheel

Bush describes growth as a flywheel, not a funnel. Each stage feeds the
next, creating compounding momentum.

```
                    +---> EVALUATORS
                   /      (free users trying product)
                  /              |
                 /               v
    ADVOCATES --+          BEGINNERS
    (power users            (activated users
     who refer)              learning product)
         ^                       |
          \                      v
           \               REGULARS
            +---- <----    (retained users
                            getting consistent value)
```

### Flywheel Stages

| Stage | Definition | Key Metric | Goal |
|---|---|---|---|
| Evaluators | Signed up but not yet activated | Signup-to-activation rate | Remove friction to aha moment |
| Beginners | Activated but not yet habitual | Activation-to-retention rate | Build usage habits |
| Regulars | Retained and getting consistent value | Retention rate, NRR | Drive expansion and upgrades |
| Advocates | So satisfied they refer others | Referral rate, NPS | Make sharing effortless |

### Flywheel Acceleration Levers

```
STAGE           ACCELERATION LEVER                   TACTIC
-----------     ----------------------------         -------------------------
Evaluator       Reduce time-to-value                 Bowling Alley Framework
                Remove signup friction                One-click signup (SSO)
                Show value before signup              Reverse trial, templates

Beginner        Build early habits                   Onboarding checklists
                Demonstrate expanding value           Feature discovery prompts
                Create social proof                   Show team usage stats

Regular         Drive expansion revenue               Usage-based upgrade prompts
                Increase switching costs               Data lock-in, integrations
                Deliver ongoing value                  New features, improvements

Advocate        Make sharing frictionless              Referral program
                Reward advocacy                        Ambassador programs
                Create shareable moments               "Powered by [product]"
```

---

## 7. PLG Metrics Dashboard

### The Essential PLG Metrics

```
PLG METRICS DASHBOARD
=====================

ACQUISITION
- Signup rate (visitors -> signups)           Target: 10-30%
- Organic signup % (no paid acquisition)      Target: 50%+
- Viral coefficient (users brought per user)  Target: >0.5, ideal >1.0
- Cost per acquisition (CPA)                  Target: <$50 for SMB

ACTIVATION
- Time-to-value (signup to aha moment)        Target: <5 minutes
- Activation rate (signup to activated)       Target: 25-40%
- Day 1 retention (return next day)           Target: 40-60%

RETENTION
- Week 1 retention                            Target: 30-50%
- Month 1 retention (Day 30)                  Target: 20-40%
- Month 3 retention (Day 90)                  Target: 15-30%

MONETIZATION
- Free-to-paid conversion rate                Target: 2-5% (freemium)
                                              Target: 10-25% (free trial)
- PQL-to-paid conversion rate                 Target: 25-30%
- Average revenue per user (ARPU)             Track trend
- Expansion revenue %                         Target: 30%+ of total

EXPANSION
- Net revenue retention (NRR)                 Target: 120%+
- Seat expansion rate                         Track trend
- Feature adoption breadth                    Track trend

ADVOCACY
- Net Promoter Score (NPS)                    Target: 50+
- Referral rate (% users who refer)           Target: 10-20%
- Organic word-of-mouth %                     Track trend
```

### Metric Relationships

```
                  Signup Rate
                      |
                      v
              Activation Rate -----> Time-to-Value
                      |                (inverse)
                      v
              Retention Rate
                 /         \
                v           v
    Free-to-Paid      NRR / Expansion
    Conversion              |
        |                   v
        v              Advocacy / Referrals
    Revenue                 |
        \                   v
         +-------> Flywheel Momentum (compounds growth)
```

---

## 8. Real Company PLG Examples

### Example 1: Slack

```
MOAT ANALYSIS:
- Market: Disruptive (replaced email for team chat)     3/3
- Ocean: Blue-ish (few chat-first tools at launch)      2/3
- Audience: Bottom-up (ICs adopt, companies follow)     3/3
- Time-to-value: Minutes (send first message)           3/3
                                              Total:   11/12

PLG MECHANICS:
- Freemium: Free tier with 10K message history limit
- Aha moment: First real-time exchange with teammate
- PQL signal: Team reaches 2,000+ messages
- Viral loop: Every invited teammate is a new user
- Conversion trigger: Hitting message history limit
- Expansion: Seat-based pricing drives organic growth
```

### Example 2: Dropbox

```
MOAT ANALYSIS:
- Market: Disruptive (replaced USB drives, email)       3/3
- Ocean: Blue (cloud sync was new)                      3/3
- Audience: Bottom-up (individual -> team)              3/3
- Time-to-value: Minutes (first file sync)              3/3
                                              Total:   12/12

PLG MECHANICS:
- Freemium: 2GB free storage
- Aha moment: File appears on second device
- PQL signal: Approaching storage limit
- Viral loop: Referral program (250MB per referral)
  - Both referrer and referee get storage
  - Drove 60% of signups at peak
- Conversion trigger: Storage full
- Expansion: Storage-based pricing, team features
```

### Example 3: Calendly

```
MOAT ANALYSIS:
- Market: Disruptive (replaced email scheduling)        3/3
- Ocean: Blue-ish (some scheduling tools existed)       2/3
- Audience: Bottom-up (any professional can use)        3/3
- Time-to-value: Seconds (share a scheduling link)      3/3
                                              Total:   11/12

PLG MECHANICS:
- Freemium: 1 event type free
- Aha moment: First meeting booked through link
- PQL signal: Multiple event types needed, team features
- Viral loop: EVERY scheduling link is a product demo
  - Recipients see value before ever signing up
  - "What is this magical link?" -> signup
- Conversion trigger: Need multiple event types or team scheduling
- Expansion: Team features, integrations
```

### Example 4: Notion

```
MOAT ANALYSIS:
- Market: Differentiated (all-in-one workspace)         2/3
- Ocean: Red-ish (docs, wikis, PM tools exist)          2/3
- Audience: Bottom-up (individuals -> teams)            3/3
- Time-to-value: Minutes (first useful page)            2/3
                                              Total:    9/12

PLG MECHANICS:
- Hybrid: Free personal plan + team trial
- Aha moment: First page that replaces another tool
- PQL signal: Team workspace created, multiple members
- Viral loop: Shared pages expose non-users to product
- Conversion trigger: Team features, permissions, admin
- Expansion: Seat-based + usage (API, integrations)
- Template gallery: Pre-built value accelerators
```

### Example 5: Zoom

```
MOAT ANALYSIS:
- Market: Disruptive (10x easier than WebEx/GoToMeeting) 3/3
- Ocean: Red but winning (commoditized but better UX)    2/3
- Audience: Bottom-up (any meeting participant)           3/3
- Time-to-value: Seconds (join a call, it works)          3/3
                                              Total:    11/12

PLG MECHANICS:
- Freemium: 40-minute limit on group calls
- Aha moment: "It just works" — reliable video call
- PQL signal: Frequent meetings, hitting 40-min limit
- Viral loop: Every meeting invite is product exposure
- Conversion trigger: 40-minute cutoff during meetings
- Expansion: Webinars, rooms, phone, enterprise features
```

---

## 9. Self-Serve Conversion Optimization

### Conversion Trigger Points

```
TRIGGER TYPE        MECHANISM                        TIMING
--------------      ----------------------------     ------------------
Usage limit         Hit storage/message/user cap     When user approaches limit
Feature gate        Need premium feature             When user discovers need
Time expiration     Trial ending                     3-7 days before deadline
Social proof        Team members already paying      During team expansion
Value summary       "You've saved X hours this month" Monthly recap
Competitor risk     "Export before trial ends"        Trial ending
Upgrade CTA         Contextual upgrade prompt         At moment of need
```

### Pricing Page Optimization

```
PRICING PAGE BEST PRACTICES (PLG):
===================================

1. ANCHOR HIGH
   - Show the most expensive plan first (or highlight middle tier)
   - Makes the target plan look reasonable by comparison

2. HIGHLIGHT VALUE, NOT FEATURES
   - "Save 10 hours/week" not "Unlimited integrations"
   - Connect price to outcome, not capability

3. SOCIAL PROOF
   - "Used by 10,000+ teams" or customer logos
   - Plan-specific: "Most popular" badge

4. REDUCE RISK
   - Free trial of paid tier
   - Money-back guarantee
   - Annual discount (but always offer monthly)

5. CONTEXTUAL UPGRADE
   - "You've used 80% of your free storage" -> link to pricing
   - Personalized: show which paid features they would get

6. TRANSPARENT PRICING
   - No "contact sales" for SMB plans
   - Calculator for usage-based pricing
```

---

## 10. Common PLG Failure Modes

| Failure Mode | Symptom | Fix |
|---|---|---|
| Leaky Bucket | High signups but low activation | Apply Bowling Alley Framework; reduce TTV |
| Free Tier Too Generous | Many free users, few conversions | Move aha+ features behind paywall |
| Free Tier Too Stingy | Low signups, high trial churn | Deliver real value in free tier |
| No Aha Moment | Users sign up, try, leave | Identify and fast-track the value experience |
| Missing PQL Signals | No visibility into who is ready to buy | Instrument product analytics, define PQL |
| Viral Loop Broken | Product does not naturally expose new users | Add sharing mechanics, referral program |
| Time-to-Value Too Long | Users abandon before experiencing value | Simplify onboarding, pre-populate, use defaults |
| Support Overload | Free users overwhelm support team | Build self-serve help, community, chatbot |
| Pricing Cliff | Huge gap between free and first paid tier | Add intermediate tier or usage-based pricing |
| Ignoring Enterprise | Large deals lost due to pure self-serve | Add sales-assist for high-value accounts |
| Feature Bloat | Too many features, confusing onboarding | Focus on core value; hide advanced features |
| No Expansion Path | Users pay once, never expand | Design seat-based, usage-based, or feature expansion |

---

## 11. AI Agent Application

### How an AI Agent System Uses PLG Frameworks

An AI agent system applies PLG frameworks to design, analyze, and optimize
self-serve growth strategies.

**MOAT Assessment Automation**
- Research market conditions and competitive landscape via real-time research
- Analyze the target audience adoption patterns from industry data
- Score the MOAT framework and recommend PLG vs hybrid vs sales-led

**Bowling Alley Design**
- Map current onboarding flow step by step from product analytics
- Identify removal, deferral, and simplification candidates
- Design product bumpers and conversational bumper sequences
- Generate onboarding flow diagrams as artifacts

**PQL Model Building**
- Analyze user behavior data to identify conversion-correlated actions
- Design PQL scoring models with specific behavioral signals
- Create PQL dashboards and alert systems

**Freemium Strategy Design**
- Evaluate freemium vs free trial vs hybrid based on MOAT analysis
- Research competitor free tiers and pricing strategies
- Design free-to-paid boundary recommendations
- Model conversion rate scenarios

**Metrics Framework Setup**
- Define the full PLG metrics dashboard for the specific product
- Set benchmarks based on industry, audience, and business model
- Create monitoring and alerting recommendations
- Design A/B test plans for conversion optimization

**Cross-Agent Collaboration**
- Receive market positioning from Product Strategist
- Inform UX Designer about onboarding flow requirements
- Pass PQL signals to sales/customer success automation
- Coordinate with Growth Auditor on instrumentation

---

## 12. PLG Implementation Checklist

```
FOUNDATION
[ ] MOAT assessment completed and scored
[ ] PLG viability confirmed (or hybrid approach defined)
[ ] Freemium vs free trial vs hybrid decision made
[ ] Aha moment identified and validated with data
[ ] Core metric dashboard defined

ONBOARDING (BOWLING ALLEY)
[ ] Current onboarding mapped step-by-step
[ ] Steps removed, deferred, or simplified
[ ] Straight line defined (signup -> aha moment)
[ ] Product bumpers designed for each step
[ ] Conversational bumpers planned for drop-off points
[ ] Time-to-value target set and baseline measured

MONETIZATION
[ ] Free-to-paid boundary designed at natural upgrade point
[ ] Pricing page optimized (social proof, value framing, risk reduction)
[ ] Contextual upgrade prompts at feature gates
[ ] PQL scoring model defined and instrumented
[ ] Conversion trigger points mapped

VIRAL MECHANICS
[ ] Inherent virality identified (product usage exposes new users)
[ ] Referral program designed (if applicable)
[ ] Sharing mechanics built into product experience
[ ] "Powered by [product]" or equivalent branding in free tier

RETENTION
[ ] Hook cycle designed (trigger -> action -> variable reward -> investment)
[ ] Habit formation mechanics in place
[ ] Re-engagement sequences for at-risk users
[ ] Expansion revenue paths defined (seats, usage, features)
[ ] NRR tracking and expansion triggers

MEASUREMENT
[ ] Full PLG metrics dashboard live
[ ] PQL tracking and routing operational
[ ] Activation funnel instrumented
[ ] Cohort retention analysis running
[ ] A/B testing infrastructure for conversion optimization
```
