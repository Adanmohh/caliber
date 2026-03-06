# The Hooked Model — Nir Eyal

## Source Attribution
- Primary: "Hooked: How to Build Habit-Forming Products" by Nir Eyal (2014)
- Supporting: NirAndFar.com articles and talks
- Behavioral foundation: BJ Fogg Behavior Model (Stanford Persuasive Technology Lab)
- Reward taxonomy: Based on variable ratio reinforcement (B.F. Skinner) and
  self-determination theory (Deci & Ryan)

---

## 1. The Hook Cycle Overview

The Hooked Model describes a four-phase cycle that, when repeated sufficiently,
forms user habits — automatic behaviors triggered with little or no conscious
thought. Products that successfully create habits enjoy higher customer lifetime
value, greater pricing flexibility, and compounding growth.

```
+------------------+
|    TRIGGER       |  <-- External or Internal cue
|  (What prompts   |      that initiates behavior
|   the behavior?) |
+--------+---------+
         |
         v
+--------+---------+
|    ACTION        |  <-- Simplest behavior in
|  (What does the  |      anticipation of reward
|   user do?)      |      (BJ Fogg: B = MAT)
+--------+---------+
         |
         v
+--------+---------+
|  VARIABLE        |  <-- Unpredictable reward
|  REWARD          |      that satisfies and
|  (What does the  |      creates wanting
|   user get?)     |
+--------+---------+
         |
         v
+--------+---------+
|  INVESTMENT      |  <-- User puts something in
|  (What does the  |      that improves next cycle
|   user put in?)  |      (data, effort, social
+--------+---------+      capital, money)
         |
         +-------> Back to TRIGGER (next cycle)
```

### The Habit Zone

For a behavior to become a habit, it must occur with sufficient FREQUENCY and
deliver sufficient PERCEIVED UTILITY.

```
HIGH PERCEIVED UTILITY
        |
        |  HABIT ZONE        HIGH VALUE,
        |  (sweet spot)      LOW FREQUENCY
        |  Instagram,        (e.g., TurboTax)
        |  Slack, Email
        |
        +--------------------------------
        |  LOW VALUE,        LOW VALUE,
        |  HIGH FREQUENCY    LOW FREQUENCY
        |  (e.g., spam)      (ignored entirely)
        |
LOW PERCEIVED UTILITY
        HIGH FREQUENCY ----> LOW FREQUENCY
```

Products in the Habit Zone are used frequently enough and deliver enough
perceived value that they become default behaviors. The goal of the Hooked
Model is to move your product into this zone.

---

## 2. Phase 1: Triggers

Triggers are the actuators of behavior — the cues that tell the user to take
an action. There are two types: external and internal.

### External Triggers

External triggers are embedded in the user's environment and contain
information about what action to take next.

| Type | Description | Example | Effectiveness |
|---|---|---|---|
| Paid | Advertising, SEM, paid social | Google Ads, Facebook ads | Low long-term (expensive) |
| Earned | Press, viral sharing, SEO | App store feature, blog mention | Medium (not controllable) |
| Relationship | Word of mouth, referrals | Friend recommendation, invite | High (trust-based) |
| Owned | Push notifications, email, badges | App badge "3 new messages" | Highest (direct channel) |

**Progression**: Paid/Earned triggers acquire users -> Relationship triggers
grow virally -> Owned triggers retain and re-engage.

### Internal Triggers

Internal triggers are emotions, situations, or routines that become
automatically associated with the product. They are the holy grail of
habit formation — the user does not need any external prompt.

```
COMMON INTERNAL TRIGGERS:
+------------------+------------------------+----------------------+
| EMOTION          | SITUATION              | PRODUCT ASSOCIATED   |
+------------------+------------------------+----------------------+
| Loneliness       | Waiting alone          | Instagram, TikTok    |
| Boredom          | Idle moments           | Twitter/X, Reddit    |
| Uncertainty      | Need to know something | Google Search         |
| Fear of loss     | Might miss something   | Slack, Email          |
| Anxiety          | Financial worry        | Mint, banking apps   |
| Incompetence     | Need to learn          | Duolingo, YouTube    |
| Social pressure  | Need to coordinate     | WhatsApp, Calendly   |
+------------------+------------------------+----------------------+
```

### Building the Trigger Chain

```
EXTERNAL TRIGGER              INTERNAL TRIGGER
(early in lifecycle)          (mature habit)

Push notification:     -->    Feeling of "I wonder if
"John commented on             anyone responded"
your photo"
                              User opens app WITHOUT
Email: "5 people               any external prompt
viewed your profile"  -->
                              The EMOTION becomes
Ad: "Stay connected   -->     the trigger
with friends"
```

### The 5 Whys for Internal Trigger Discovery

To identify the internal trigger your product addresses, use the "5 Whys":

1. Why does the user open email? -> To check messages
2. Why do they check messages? -> To know if someone needs them
3. Why do they need to know? -> Fear of missing something important
4. Why is missing it fearful? -> Anxiety about being out of the loop
5. Why does being out of the loop matter? -> **Fear of social/professional irrelevance**

The deepest "why" reveals the internal trigger. Design your product to address
THAT emotion.

---

## 3. Phase 2: Action

The action is the simplest behavior the user performs in anticipation of
a reward. Eyal builds on BJ Fogg's Behavior Model here.

### The BJ Fogg Behavior Model

```
B = M x A x P

Behavior = Motivation x Ability x Prompt (Trigger)

All three must be present simultaneously for behavior to occur.

HIGH MOTIVATION
    |
    |    BEHAVIOR        ACTION LINE
    |    HAPPENS         (threshold)
    |    HERE     ------/
    |            /
    |    NO     /  BEHAVIOR
    |  BEHAVIOR/   HAPPENS
    |         /    HERE
    |        /
    |-------/
    |      /  NO BEHAVIOR
    |     /
LOW MOTIVATION
    HIGH DIFFICULTY ----> LOW DIFFICULTY (HIGH ABILITY)
```

### Six Factors of Ability (Simplicity)

BJ Fogg identifies six elements that affect ability. Reduce any one to
increase the likelihood of the behavior:

| Factor | Question | Design Lever |
|---|---|---|
| Time | How long does it take? | Reduce steps, pre-fill forms |
| Money | What is the financial cost? | Free tier, delayed payment |
| Physical effort | How much exertion? | One-click actions, auto-fill |
| Brain cycles | How much thinking? | Sensible defaults, clear CTAs |
| Social deviance | Does it break norms? | Social proof, testimonials |
| Non-routine | How unfamiliar is it? | Familiar patterns, conventions |

### Three Core Motivators (Fogg)

| Motivator | Positive Pole | Negative Pole |
|---|---|---|
| Sensation | Pleasure | Pain |
| Anticipation | Hope | Fear |
| Belonging | Social acceptance | Social rejection |

### Designing for Action

The golden rule: **Make the action as easy as possible.**

```
PLATFORM        CORE ACTION         SIMPLICITY DESIGN
---------       -----------         ----------------
Google          Type a query        Single text field, instant results
Twitter/X       Post a thought      140-280 chars, one tap to post
Instagram       Scroll feed         Infinite scroll, no decisions needed
Pinterest       Save an image       One-click pin
Tinder          Evaluate a match    Swipe left or right
Slack           Send a message      Type and enter
Uber            Request a ride      One button, GPS auto-location
```

---

## 4. Phase 3: Variable Reward

The reward phase satisfies the user's need while leaving them wanting more.
The key word is VARIABLE — predictable rewards lose their power over time.
Unpredictable rewards drive dopamine and continued engagement.

### Why Variability Matters

Research by B.F. Skinner demonstrated that variable ratio reinforcement
schedules (unpredictable rewards) produce the highest and most sustained
response rates. Slot machines use this principle. So do social media feeds.

```
FIXED REWARD:     User checks feed -> Always sees same content -> Boredom
VARIABLE REWARD:  User checks feed -> Sometimes amazing, sometimes not -> Craving
```

### Three Types of Variable Rewards

```
+-------------------+------------------------------------+---------------------------+
| REWARD TYPE       | DESCRIPTION                        | PRODUCT EXAMPLES          |
+-------------------+------------------------------------+---------------------------+
| REWARDS OF THE    | Social rewards: connectedness,     | - Facebook likes/comments |
| TRIBE             | acceptance, belonging, validation  | - Stack Overflow reputation|
|                   | Driven by social bonds             | - Slack reactions/threads  |
|                   |                                    | - Reddit upvotes          |
+-------------------+------------------------------------+---------------------------+
| REWARDS OF THE    | Search for material resources or   | - Twitter/X feed scroll   |
| HUNT              | information. The thrill of the     | - Pinterest discovery     |
|                   | chase, finding something valuable  | - Shopping deal sites     |
|                   |                                    | - LinkedIn job alerts     |
+-------------------+------------------------------------+---------------------------+
| REWARDS OF THE    | Personal gratification: mastery,   | - Duolingo streaks/levels |
| SELF              | competency, completion, control    | - Video game achievements |
|                   | Intrinsic motivation               | - Codecademy progress     |
|                   |                                    | - Inbox zero             |
+-------------------+------------------------------------+---------------------------+
```

### Designing Variable Rewards

**Rules for effective variable rewards:**

1. **Satisfy the itch** — the reward must address the original trigger emotion
2. **Leave wanting more** — the reward should create anticipation for next cycle
3. **Maintain autonomy** — users must feel in control (reactance kills habits)
4. **Match the type to the trigger** — social trigger -> tribe reward,
   curiosity trigger -> hunt reward, self-improvement trigger -> self reward

### Variable Reward Scoring Matrix

Rate your product's reward system:

| Criterion | Score 1-5 | Notes |
|---|---|---|
| Variability (unpredictability) | ___ | Does the reward change each time? |
| Relevance (matches trigger) | ___ | Does reward satisfy the original itch? |
| Immediacy (speed of delivery) | ___ | How fast after action does reward appear? |
| Tribe component | ___ | Is there a social element? |
| Hunt component | ___ | Is there a discovery element? |
| Self component | ___ | Is there a mastery element? |
| Autonomy preservation | ___ | Does user feel in control? |
| **Total (max 35)** | **___** | **25+ = strong; 15-24 = needs work; <15 = redesign** |

---

## 5. Phase 4: Investment

The investment phase is where the user puts something into the product that
makes it more valuable for the NEXT cycle. Investment increases the likelihood
of the user returning.

### Types of Investment

```
+------------------+------------------------------------------+-------------------+
| INVESTMENT TYPE  | WHAT THE USER PUTS IN                    | STORED VALUE      |
+------------------+------------------------------------------+-------------------+
| Data             | Profile info, preferences, history       | Personalization   |
| Content          | Posts, photos, files, documents           | Portfolio/archive |
| Followers        | Building an audience or network           | Social capital    |
| Reputation       | Reviews, ratings, karma, credentials     | Status/trust      |
| Skill            | Learning the product's interface          | Efficiency        |
| Configuration    | Settings, integrations, workflows         | Customization     |
| Financial        | Subscription, credits, in-app purchases  | Sunk cost         |
+------------------+------------------------------------------+-------------------+
```

### How Investment Loads the Next Trigger

```
USER INVESTMENT          LOADS NEXT TRIGGER
---------------          ------------------
Adds profile photo  -->  "5 people viewed your profile" notification
Writes a post       -->  "Sarah commented on your post" email
Follows users       -->  "John shared something new" push notification
Invites teammates   -->  "Your team has 3 unread messages" badge
Saves preferences   -->  Better recommendations next visit
Builds playlist     -->  "New music similar to your playlist" alert
```

### Investment Escalation Ladder

Design investments to escalate over time:

```
CYCLE 1: Low investment    -> Enter name and email (low effort)
CYCLE 2: Medium investment -> Upload a photo, set preferences
CYCLE 3: Higher investment -> Create content, invite friends
CYCLE 4: Deep investment   -> Build workflows, integrations
CYCLE 5: Locked in         -> Data, reputation, network all stored
```

Each rung increases switching costs and deepens the habit.

---

## 6. The Manipulation Matrix

Eyal provides an ethical framework for habit-forming design. The Manipulation
Matrix has two axes: whether the maker uses the product themselves, and whether
the product materially improves the user's life.

```
                    MAKER USES THE PRODUCT
                    YES                 NO
                +-------------------+-------------------+
IMPROVES        |                   |                   |
USER'S    YES   |   FACILITATOR     |    PEDDLER        |
LIFE            |   (ethical ideal) |    (lacks empathy) |
                |   e.g., Slack,    |    e.g., diet     |
                |   Notion, tools   |    pills maker    |
                |   you use daily   |    who is fit     |
                +-------------------+-------------------+
                |                   |                   |
          NO    |   ENTERTAINER     |    DEALER         |
                |   (fun but risky) |    (exploitation) |
                |   e.g., games,    |    e.g., slot     |
                |   social media    |    machines,      |
                |   you use too     |    predatory      |
                |   much yourself   |    apps           |
                +-------------------+-------------------+
```

### Ethical Design Guidelines

| Quadrant | Self-Check | Action |
|---|---|---|
| Facilitator | "I use this and it helps people" | Build with confidence |
| Peddler | "I believe it helps but I don't use it" | Gain empathy — start using it or talk to users more |
| Entertainer | "I use it but it doesn't really help" | Be honest about entertainment value; add utility |
| Dealer | "I don't use it and it doesn't help" | Stop. Reconsider the product entirely |

**Eyal's principle**: "Creating a product that the designer does not believe
improves users' lives and that he himself would not use is exploitation."

---

## 7. Real Product Examples — Full Hook Analysis

### Example 1: Instagram

```
TRIGGER:    Internal — loneliness, boredom, FOMO
            External — push notification "X liked your photo"
ACTION:     Open app, scroll feed (infinite scroll = minimal effort)
REWARD:     Tribe (likes, comments, social validation)
            Hunt (discovering new content, stories, reels)
INVESTMENT: Photos uploaded, followers gained, profile built
            --> Loads trigger: "Y commented on your photo"
```

### Example 2: Slack

```
TRIGGER:    Internal — fear of missing team communication
            External — desktop notification, email digest, badge count
ACTION:     Open app, read message (low effort, familiar chat UI)
REWARD:     Tribe (team connection, feeling included)
            Hunt (new information, updates, decisions)
            Self (inbox zero, staying on top of work)
INVESTMENT: Message history, channels joined, integrations configured,
            team workflows built
            --> Loads trigger: "3 new messages in #project-alpha"
```

### Example 3: Duolingo

```
TRIGGER:    Internal — guilt about not learning, desire for self-improvement
            External — streak notification "Don't lose your 47-day streak!"
ACTION:     Open app, start lesson (5 minutes, gamified, low effort)
REWARD:     Self (XP earned, level up, streak maintained)
            Tribe (leaderboard position, friend competition)
            Hunt (new content unlocked, stories, challenges)
INVESTMENT: Streak count, XP total, league position, learning history
            --> Loads trigger: "Your streak is at risk!" or
                "You're 50 XP from Diamond League"
```

### Example 4: Notion

```
TRIGGER:    Internal — need to organize thoughts, collaborate
            External — "Alex mentioned you in a page" notification
ACTION:     Open workspace, edit page (flexible blocks, low friction)
REWARD:     Self (organized thinking, productivity, mastery of tool)
            Tribe (team collaboration, shared knowledge)
INVESTMENT: Pages created, templates built, team workspace configured,
            integrations set up, organizational knowledge stored
            --> Loads trigger: "New comment on your project doc"
```

### Example 5: TikTok

```
TRIGGER:    Internal — boredom, desire for entertainment, curiosity
            External — push notification "X posted a new video"
ACTION:     Open app, watch video (auto-play, zero effort, swipe to skip)
REWARD:     Hunt (algorithmic feed — never know what's next)
            Tribe (comments, duets, social trends)
            Self (creating content, gaining views)
INVESTMENT: Watch history (trains algorithm), liked videos, followers,
            created content, account reputation
            --> Loads trigger: "Based on your interests" push notification
```

---

## 8. Designing Each Phase — Practical Guide

### Trigger Design Checklist

```
[ ] Identified the internal trigger (core emotion/situation)
[ ] Used 5 Whys to reach the deepest emotional driver
[ ] Designed external triggers that map to the internal trigger
[ ] External trigger progression planned: Paid -> Earned -> Relationship -> Owned
[ ] Owned triggers require value exchange (notification must deliver value)
[ ] Trigger frequency matches natural usage pattern
[ ] Trigger copy creates curiosity without being manipulative
```

### Action Design Checklist

```
[ ] Core action identified (simplest behavior toward reward)
[ ] Time to complete action: under 5 seconds
[ ] Number of steps minimized (fewer clicks/taps)
[ ] Cognitive load reduced (clear CTA, sensible defaults)
[ ] Financial cost removed or deferred (free to start)
[ ] Social deviance minimized (feels normal to do)
[ ] Motivation boosted where ability is low (or vice versa)
[ ] Fogg behavior threshold crossed: M x A x P all present
```

### Reward Design Checklist

```
[ ] Reward type matches trigger emotion
[ ] Variability built in (different each time)
[ ] At least one reward type present (tribe/hunt/self)
[ ] Ideally two or three reward types layered
[ ] Reward satisfies the itch (resolves trigger tension)
[ ] Reward leaves wanting more (creates anticipation)
[ ] User maintains sense of autonomy and control
[ ] Reward delivered immediately after action (no delay)
```

### Investment Design Checklist

```
[ ] Investment requires small effort (escalates over time)
[ ] Investment creates stored value (data, content, social, reputation)
[ ] Stored value improves next cycle (better triggers, rewards)
[ ] Investment increases switching costs naturally
[ ] Investment ladder designed (low -> medium -> high over time)
[ ] Each investment loads the next trigger explicitly
```

---

## 9. Common Failure Modes

| Failure Mode | Description | Fix |
|---|---|---|
| External Trigger Spam | Over-notifying users until they disable notifications | Earn notification rights; every notification must deliver value |
| No Internal Trigger | Product never associates with an emotion | Research the emotional job-to-be-done; use 5 Whys |
| Action Too Complex | Too many steps between trigger and reward | Audit every step; remove or defer anything not essential |
| Predictable Rewards | Same reward every time — no variability | Add randomization, social elements, or discovery mechanics |
| Missing Tribe Reward | No social component in a social product | Add reactions, comments, sharing, collaboration |
| No Investment Phase | User gets reward but puts nothing back | Add data capture, content creation, or social connection |
| Investment-Reward Gap | Investment does not improve next cycle | Map how each investment type loads the next trigger |
| Dealer Quadrant | Building addictive product with no user benefit | Honest self-assessment via Manipulation Matrix |
| Autonomy Violation | User feels trapped or manipulated | Add easy opt-out, transparent controls, respect boundaries |
| Habit Decay | Initial habit erodes over time | Re-engage with new variable rewards; evolve the loop |

---

## 10. Hook Scoring System

Score your product's hook strength on each dimension:

```
HOOK SCORECARD
==============

TRIGGER STRENGTH                           Score (1-10)
- Internal trigger identified and validated    ___
- External triggers mapped to lifecycle        ___
- Trigger-to-action latency < 5 seconds        ___
                                    Subtotal:  ___/30

ACTION SIMPLICITY                          Score (1-10)
- Core action takes < 3 steps                  ___
- Cognitive load minimized                     ___
- Fogg threshold consistently crossed          ___
                                    Subtotal:  ___/30

REWARD ENGAGEMENT                          Score (1-10)
- Variability present                          ___
- Multiple reward types (tribe/hunt/self)      ___
- Satisfies trigger while creating wanting     ___
                                    Subtotal:  ___/30

INVESTMENT DEPTH                           Score (1-10)
- Stored value accumulates over time           ___
- Investment loads next trigger                ___
- Switching costs increase naturally           ___
                                    Subtotal:  ___/30

ETHICAL ALIGNMENT                          Score (1-10)
- Facilitator quadrant confirmed               ___
                                    Subtotal:  ___/10

TOTAL HOOK SCORE:                          ___/130

INTERPRETATION:
100-130: Strong habit-forming product
70-99:   Promising but has gaps to address
40-69:   Significant redesign needed in weak phases
Below 40: Fundamental rethink required
```

---

## 11. AI Agent Application

### How an AI Agent System Uses the Hooked Model

An AI agent system applies the Hooked Model as an analytical and generative
framework for designing engagement mechanics.

**Hook Audit Automation**
- Analyze existing product flows against the four phases
- Identify which phase is weakest using behavioral data
- Score the current hook strength and recommend improvements

**Trigger Research**
- Use real-time research to study competitor notification strategies
- Analyze app store reviews for internal trigger language ("I use this when...")
- Map emotional triggers from user interview transcripts

**Variable Reward Generation**
- Generate reward mechanic ideas based on product type and user segment
- Cross-reference tribe/hunt/self reward patterns from successful products
- Design A/B test variants for reward variability

**Investment Design**
- Map current investment touchpoints in the user journey
- Identify stored value gaps (where users are not putting anything back)
- Design investment escalation ladders for different user segments

**Ethical Review**
- Run Manipulation Matrix assessment as part of every hook design
- Flag Dealer-quadrant patterns automatically
- Ensure autonomy preservation in all trigger and reward designs

**Artifact Creation**
- Generate hook cycle diagrams as visual artifacts
- Create trigger maps, reward matrices, and investment ladders
- Produce hook scorecards with specific improvement recommendations

---

## 12. Integration with Other Frameworks

### Hooked + Torres' Continuous Discovery
- Use interview snapshots to discover internal triggers
- Map opportunities to hook phases (which phase is broken?)
- Test hook assumptions using Torres' assumption mapping

### Hooked + Bush's Product-Led Growth
- Hook cycles drive the "aha moment" in PLG onboarding
- Investment phase creates the product-qualified lead signal
- Variable rewards drive the viral loops in PLG flywheels

### Hooked + BJ Fogg Behavior Model
- Fogg's B=MAT is the engine inside Phase 2 (Action)
- Tiny Habits methodology maps to reducing action complexity
- Celebration (Fogg) maps to immediate reward delivery
