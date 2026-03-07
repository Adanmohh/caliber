# Retention Curve Analysis

## Source & Attribution

Based on Reforge Retention & Engagement program (Brian Balfour, Casey Winters),
Sequoia Capital's retention framework, and related industry research.

---

## Overview

Retention is the foundation upon which all growth is built. Without retention, acquisition is a
leaky bucket -- you pour users in at the top and they drain out the bottom. No growth loop can
compound if users do not stick around long enough to complete the loop cycle.

Retention curve analysis is the primary diagnostic tool for understanding whether your product
has achieved product-market fit and whether your growth loops have a viable foundation.

---

## What Is a Retention Curve?

A retention curve plots the percentage of users who remain active over time after their initial
signup or first use. The X-axis is time (days, weeks, or months since signup), and the Y-axis
is the percentage of the original cohort still active.

**Example:**
```
100% |*
     | *
     |  *
     |   *
     |    **
     |      ***
     |         ****
     |             ******
     |                   **********
     |                             ************************
  0% +---------------------------------------------------->
     Day 0                                          Day 90+
```

Every retention curve starts at 100% (all users are active on day 0) and declines over time.
The critical question is: **where does it flatten, and at what level?**

---

## The Shape of Healthy vs. Unhealthy Retention Curves

### Healthy Retention Curve (Flattening)

A healthy curve drops initially (expected -- not all users will find value), then **flattens**
at a sustainable level. The flattening indicates that a core group of users has found lasting
value in the product and will continue using it indefinitely.

```
100% |*
     | *
     |  **
     |    ***
     |       *****
     |            **********
     |                      ================================  <-- Flattens at ~35%
     |
  0% +---------------------------------------------------->
```

**What flattening means:**
- A segment of users has formed a habit around the product
- The product delivers recurring value that brings users back
- You have achieved product-market fit for at least this segment
- Growth loops have a stable base to compound from

**The higher the flattening point, the stronger the PMF signal:**
- Flattening at 50%+ = exceptional retention (social networks, daily-use tools)
- Flattening at 25-50% = strong retention (most successful SaaS, marketplace)
- Flattening at 10-25% = moderate retention (viable but needs improvement)
- Flattening at <10% = weak retention (significant PMF concerns)

### Unhealthy Retention Curve (Trending Toward Zero)

An unhealthy curve continues declining without ever flattening. It approaches zero, meaning
virtually all users eventually abandon the product.

```
100% |*
     | *
     |  *
     |   *
     |    *
     |     *
     |      *
     |       *
     |        *
     |         *
     |          *
  0% +----------*--------------------------------------->
```

**What trending-to-zero means:**
- No segment of users is finding lasting value
- Product-market fit has not been achieved
- Growth loops will not compound -- acquired users leak out too fast
- Spending on acquisition is waste until retention is fixed

### Smiling Retention Curve (Increasing Over Time)

The rarest and most powerful shape: retention that actually increases after an initial dip.
This indicates that the product becomes more valuable with continued use.

```
100% |*                                              *****
     | *                                       ******
     |  **                                *****
     |    ***                         ****
     |       *****               *****
     |            ***************
     |
  0% +---------------------------------------------------->
```

**What a smile means:**
- Strong network effects or data effects
- Users who stay past the initial dip become increasingly engaged
- The product's value proposition strengthens with use
- Extremely strong foundation for growth loops

---

## Flattening Retention: The Product-Market Fit Signal

### Why Flattening Matters

Brian Balfour and the Reforge framework emphasize that a flattened retention curve is the most
reliable quantitative signal of product-market fit. The reasoning:

1. **Surveys lie, behavior does not.** Users may say they love your product but not come back.
   Retention curves measure actual behavior.

2. **Aggregates hide the truth.** Overall growth metrics can mask retention problems. A company
   can grow fast while hemorrhaging users if acquisition outpaces churn -- temporarily.

3. **Flattening = habit formation.** When the curve flattens, it means a group of users has
   incorporated your product into their routine. This is the behavioral evidence of PMF.

### Interpreting the Flattening Point

**Time to flatten:** How many days/weeks/months before the curve levels off?
- Shorter time to flatten = faster habit formation = stronger PMF signal
- Long time to flatten = the product requires significant investment before value is clear

**Level of flattening:** At what percentage does the curve stabilize?
- Higher = more users finding lasting value
- Lower = smaller addressable audience or weaker value proposition

**Stability of the flat:** Does the curve stay flat, or does it continue to slowly decline?
- True flattening (indefinitely stable) = strong PMF
- Slow continued decline = partial PMF; long-term churn risk remains

### Strengthening Confirmation

Alongside flattening retention, look for these confirming signals:
- Cohort usage or purchases **increase** over time (not just stable, but growing)
- Later cohorts flatten at a **higher** level than earlier cohorts (product is improving)
- Retained users expand their usage (more features, higher frequency, more seats)

---

## Usage Intervals and Habit Zones

### Defining the Right Usage Interval

Not all products are meant to be used daily. The correct retention metric depends on the
natural usage interval of your product:

| Product Type | Natural Interval | Retention Metric |
|-------------|------------------|------------------|
| Social media, messaging | Daily | Day 1, Day 7, Day 30 retention |
| Project management, SaaS tools | Weekly | Week 1, Week 4, Week 12 retention |
| E-commerce, marketplace | Monthly | Month 1, Month 3, Month 6 retention |
| Tax software, annual services | Annually | Year-over-year retention |
| Travel booking | Quarterly/Variable | Purchase frequency retention |

**Key question:** "Does a user of my product need to engage on a daily, weekly, or monthly basis
to be considered active?"

Using the wrong interval leads to misleading retention curves:
- Measuring daily retention for a monthly product will show falsely poor retention
- Measuring monthly retention for a daily product will miss critical early drop-off

### The Habit Zone

The habit zone is the usage frequency and depth at which a user has formed a habit around your
product. Users in the habit zone are your retained core -- they are unlikely to churn without a
significant disruption.

**Identifying the habit zone:**
1. Analyze the behavior of your best-retained users (those who remain active at 90+ days)
2. Identify the common actions they performed early on
3. Determine the frequency at which they performed these actions
4. This pattern (action X performed at frequency Y within timeframe Z) is your habit zone

**Example:** "Users who complete 3 searches in their first week have 80% 90-day retention."
The habit zone is: 3+ searches per week.

**Application:** Design your activation flow to push new users into the habit zone as quickly as
possible. This is the bridge between acquisition and retention.

---

## Cohort Analysis Methodology

### What Is Cohort Analysis?

Cohort analysis groups users by their signup date (or another shared characteristic) and tracks
their behavior over time. This prevents the aggregation problem where overall metrics mask
cohort-level trends.

### Building a Cohort Retention Table

| Cohort | Month 0 | Month 1 | Month 2 | Month 3 | Month 6 | Month 12 |
|--------|---------|---------|---------|---------|---------|----------|
| Jan    | 100%    | 45%     | 35%     | 30%     | 25%     | 22%      |
| Feb    | 100%    | 48%     | 38%     | 33%     | 28%     | --       |
| Mar    | 100%    | 52%     | 42%     | 37%     | --      | --       |
| Apr    | 100%    | 55%     | 45%     | --      | --      | --       |

**Reading the table:**
- **Across rows:** Shows how a single cohort retains over time (the retention curve)
- **Down columns:** Shows whether newer cohorts retain better or worse than older ones (product improvement signal)

### What to Look For

1. **Flattening within rows:** Each cohort's retention should stabilize over time
2. **Improving columns:** Later cohorts should show higher retention at the same time point
   (evidence that product changes are improving retention)
3. **Consistency:** Large variation between cohorts of similar size suggests external factors
   (seasonality, channel mix changes) rather than product-driven retention

### Segmented Cohort Analysis

Beyond time-based cohorts, segment by:
- **Acquisition channel:** Users from organic search may retain differently than paid users
- **Geography:** Different markets may have different retention profiles
- **Activation behavior:** Users who completed onboarding vs. those who did not
- **Plan type:** Free vs. paid users
- **Use case:** Different user personas may have different retention curves

Segmented analysis often reveals that your aggregate curve hides both a strong-retaining segment
and a poorly-retaining segment. This guides where to focus improvement efforts.

---

## Leading vs. Lagging Retention Indicators

### The Problem with Retention as a Metric

Retention is a lagging indicator. By the time you see retention decline in your data, the
underlying problem has been active for weeks or months. A user who churns in Month 3 likely
disengaged in Month 1.

### Building a Leading Indicator System

**Reforge's framework: Retention = Activation + Engagement + Resurrection**

These three inputs are the leading indicators that predict future retention:

#### Activation Metrics (Leading)
- Percentage of new users completing onboarding
- Time to first value (aha moment)
- Percentage reaching the habit zone within first week/month
- Setup completion rate
- First core action completion rate

#### Engagement Metrics (Leading)
- Depth of engagement: how many features used, session duration, actions per session
- Frequency of engagement: sessions per week/month relative to expected interval
- Breadth of engagement: how many use cases or features a user touches
- Engagement trending: is per-user engagement increasing, stable, or declining?

#### Resurrection Metrics (Leading/Concurrent)
- Win-back email open and click rates
- Percentage of churned users returning within 30/60/90 days
- Resurrection cohort retention (do resurrected users stick, or churn again?)

### Building the Metric Constellation

Rather than tracking a single North Star metric, build a constellation:

1. **Breadth metric (lagging):** Monthly/weekly active users (how many are retained)
2. **Depth metric (concurrent):** Engagement intensity per active user
3. **Input metrics (leading):** Activation rate, habit zone entry rate, engagement trends

Monitor the full constellation. If leading indicators decline, act before the lagging indicators
confirm the problem.

---

## Resurrection Flows for Churned Users

### When Resurrection Works (and When It Does Not)

**Resurrection is viable when:**
- The retention curve flattens at a reasonable level, but there is a segment that dropped off
  due to fixable reasons (poor onboarding, timing, lack of a specific feature)
- The product has genuinely improved since the user churned
- The user's original need still exists

**Resurrection is NOT viable when:**
- The retention curve trends toward zero (fundamental PMF problem)
- Users churned because the core value proposition did not resonate
- The product has not changed since the user left

Attempting resurrection on a product with a zero-trending curve is treating symptoms instead of
the disease. Fix activation and core value first.

### Resurrection Strategy Components

#### 1. Identify Resurrection Candidates
- Segment churned users by reason for churn (if known)
- Prioritize users who were previously engaged (showed early habit zone behavior)
- Exclude users who never activated (these need a different intervention)

#### 2. Trigger-Based Reactivation
- **Product improvement triggers:** "We built the feature you requested"
- **Social triggers:** "Your colleague just joined" or "Your friend posted"
- **Content triggers:** "New content relevant to your interests"
- **Time-based triggers:** Seasonal relevance, annual renewal periods

#### 3. Reduce Friction for Return
- Do not make returning users go through full onboarding again
- Preserve their data and settings
- Show them what has changed since they left
- Offer a clear path to their previous value

#### 4. Measure Resurrection Quality
- Track not just whether churned users return, but whether they stick
- Resurrection retention should be measured as its own cohort
- If resurrected users churn again quickly, the resurrection flow is creating false positives

---

## The Relationship Between Retention and Growth

### Retention Is the Foundation

Reforge's core thesis: **Growth wins when built on a solid foundation of retention and
engagement.** This is not just a platitude -- it has mathematical implications:

1. **Retention determines loop efficiency.** Every growth loop passes through retention. If users
   churn before completing the loop (before inviting, creating content, generating revenue),
   the loop breaks.

2. **Retention determines LTV.** Longer retention = higher lifetime value = ability to spend more
   on acquisition = more fuel for growth engines.

3. **Retention determines compounding rate.** A growth loop with 80% retention compounds much
   faster than one with 20% retention, even if acquisition is identical.

4. **Retention determines word-of-mouth.** Users who stay long enough to form habits are the ones
   who recommend the product to others, powering viral loops.

### The Retention-Growth Interaction Model

```
Retention Rate    x    Acquisition Rate    =    Sustainable Growth Rate
     ^                       ^
     |                       |
Activation          Growth Loops
Engagement          (Engine)
Resurrection
(Lubricants)
```

If retention is low, no amount of acquisition produces sustainable growth. The leaky bucket
analogy: you must fix the holes before pouring in more water.

### Quantifying the Retention Impact

**Example:** Two products with identical acquisition (1,000 new users/month)

| Metric | Product A (20% M1 retention) | Product B (50% M1 retention) |
|--------|------------------------------|------------------------------|
| Month 1 active users | 1,200 | 1,500 |
| Month 6 active users | 1,800 | 4,500 |
| Month 12 active users | 2,200 | 8,000 |
| Revenue (at $10/user/mo) | $22,000 | $80,000 |

The 30-percentage-point difference in retention creates a 3.6x difference in active users and
revenue after 12 months -- with identical acquisition spend.

### Priority Sequencing

1. **First:** Achieve baseline retention (curve must flatten above zero)
2. **Second:** Optimize activation to increase the flattening level
3. **Third:** Build growth loops on the retention foundation
4. **Fourth:** Optimize loop efficiency (lubricants)
5. **Fifth:** Scale fuel for the loops

Attempting to build growth loops before achieving baseline retention is the most common and
most expensive mistake in growth strategy.

---

## Practical Retention Curve Analysis Checklist

### Step 1: Build the Curves
- Pull cohort data by signup month (minimum 6 months of cohorts)
- Plot retention curves for each cohort on the same chart
- Use the appropriate time interval for your product (daily/weekly/monthly)

### Step 2: Assess the Shape
- Does the curve flatten? At what level? After how long?
- Is it trending toward zero?
- Are newer cohorts retaining better than older ones?

### Step 3: Segment and Compare
- Break out curves by acquisition channel, user segment, activation status
- Identify which segments have the strongest retention
- Determine whether poor aggregate retention is driven by a specific segment

### Step 4: Identify Leading Indicators
- Correlate early user behavior with long-term retention
- Define the habit zone (actions + frequency + timeframe)
- Build activation metrics around driving users to the habit zone

### Step 5: Establish Monitoring
- Set up dashboards tracking both leading (activation, engagement) and lagging (retention) metrics
- Define alert thresholds for leading indicators
- Review cohort curves monthly at minimum

---

## Key Takeaways for the Growth Auditor

1. A flattening retention curve is the strongest quantitative signal of product-market fit.
2. The level at which the curve flattens determines the ceiling for all growth efforts.
3. Retention is a lagging indicator -- build and monitor leading indicators (activation, engagement).
4. Use cohort analysis, not aggregate metrics, to understand true retention dynamics.
5. Match your retention metric interval to your product's natural usage frequency.
6. Resurrection works only when the core retention curve is already healthy.
7. Fix retention before investing in acquisition. Always. No exceptions.
8. Retention = Activation + Engagement + Resurrection. Invest in all three inputs.

---

## References

- Balfour, B. "Why Retention Is The Silent Killer." Reforge Blog.
- Balfour, B. "Growth Wins When Built On A Solid Foundation of Retention & Engagement." Reforge Blog.
- Balfour, B. "Retention is Hard, and Getting Harder." Reforge Blog.
- Reforge Retention and Engagement Program.
- Sequoia Capital. "Retention." articles.sequoiacap.com.
- Dewey, C. "Reforge Recap: Engagement + Retention."
