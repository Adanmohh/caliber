# Pricing Research Methods

Sources: Van Westendorp (1976), Gabor-Granger (1966), Simon-Kucher & Partners
pricing methodology, Strategyzer willingness-to-pay validation.

---

## DECISION TREE: WHICH METHOD TO USE

```
What stage are you at?

Pre-product (idea/concept stage):
  Do you have access to target customers for interviews?
    YES --> Willingness-to-Pay Interviews (Section 3)
    NO  --> Desk research: competitor pricing analysis only

Early product (prototype or MVP):
  Do you have 50+ potential customers to survey?
    YES --> Van Westendorp (Section 1) -- broad price range discovery
    NO  --> Willingness-to-Pay Interviews (Section 3)

Existing product (pricing optimization):
  Do you have existing traffic/users to test?
    YES --> Gabor-Granger (Section 2) -- demand curve at specific prices
    NO  --> Van Westendorp (Section 1)

Multiple tiers/plans:
  --> Van Westendorp per tier + Gabor-Granger for anchor price
```

---

## 1. VAN WESTENDORP PRICE SENSITIVITY METER

### The 4 Questions

Ask each respondent all 4 questions about your product/service:

| # | Question                                                      | Measures              |
|---|---------------------------------------------------------------|-----------------------|
| 1 | At what price would you consider this product to be so cheap that you would question its quality? | Too cheap (floor)     |
| 2 | At what price would you consider this product a bargain -- a great buy for the money?            | Cheap (good value)    |
| 3 | At what price would you consider this product to be getting expensive but still worth considering?| Expensive (still OK)  |
| 4 | At what price would you consider this product to be so expensive that you would never buy it?    | Too expensive (ceiling)|

### Intersection Analysis

Plot cumulative distributions of all 4 answers. Four key intersections:

| Intersection              | Lines Crossing              | Meaning                          |
|---------------------------|-----------------------------|----------------------------------|
| Point of Marginal Cheapness (PMC) | Too Cheap x Expensive    | Below this = quality concerns    |
| Optimal Price Point (OPP)  | Too Cheap x Too Expensive  | Least price resistance           |
| Indifference Price Point (IDP) | Cheap x Expensive        | Equal "cheap" and "expensive" perception |
| Point of Marginal Expensiveness (PME) | Cheap x Too Expensive | Above this = losing too many buyers |

**Acceptable Price Range = PMC to PME**

### Pass/Fail Benchmarks

| Metric                        | Pass                          | Fail                          |
|-------------------------------|-------------------------------|-------------------------------|
| Range width (PME - PMC)       | >= 30% of OPP                | < 15% of OPP (too narrow)    |
| OPP vs your target price      | Within 20% of each other     | > 40% gap                    |
| Sample size                   | >= 50 respondents            | < 30 respondents             |
| Response consistency          | < 5% give Too Cheap > Expensive | > 10% = bad question framing|

---

## 2. GABOR-GRANGER TECHNIQUE

### Method

1. Show the product concept to respondents
2. Present a specific price and ask: "Would you buy at $X?" (Yes/No/Maybe)
3. Step the price up or down based on response (typically 5-7 price points)
4. Plot the demand curve: % willing to buy at each price point

### Price Step Design

```
Start at your expected mid-price
Step size = 15-25% of starting price
Test 5-7 price points total (3-4 above, 2-3 below starting price)

Example for a $29/mo product:
  $15 --> $19 --> $24 --> $29 --> $35 --> $42 --> $49
```

### Demand Curve Output

| Price Point | % Would Buy | Revenue Index (Price x %) |
|-------------|-------------|---------------------------|
| $15         | 85%         | 12.75                     |
| $19         | 78%         | 14.82                     |
| $24         | 65%         | 15.60                     |
| $29         | 52%         | 15.08                     |
| $35         | 35%         | 12.25                     |
| $42         | 18%         | 7.56                      |
| $49         | 8%          | 3.92                      |

**Optimal price = highest Revenue Index** (in example: $24)

### Pass/Fail Benchmarks

| Metric                        | Pass                          | Fail                          |
|-------------------------------|-------------------------------|-------------------------------|
| Sample size                   | >= 100 respondents            | < 50 respondents             |
| Demand at target price        | >= 40% willing to buy         | < 20% willing to buy          |
| Revenue curve shape           | Clear peak visible            | Flat = price insensitive market|
| Drop-off rate per step        | 10-20% per step               | > 40% per step = price cliff  |

---

## 3. WILLINGNESS-TO-PAY INTERVIEW QUESTIONS

### 7 Core Questions (with Anti-Bias Rules)

| # | Question                                                                  | Anti-Bias Rule                                |
|---|---------------------------------------------------------------------------|-----------------------------------------------|
| 1 | "What are you currently spending to solve this problem? Include time, tools, and workarounds." | Anchors on real spending, not hypothetical    |
| 2 | "If this solution saved you [specific outcome], what would that be worth to you per month/year?" | Outcome-framed, not feature-framed            |
| 3 | "What is the most you have paid for a similar solution in the past?"      | Anchors on actual behavior, not stated preference |
| 4 | "At what price would you sign up today without hesitation?"               | Tests impulse buy threshold                   |
| 5 | "At what price would you need to think about it or get approval?"         | Tests decision friction point                 |
| 6 | "At what price would you say 'no way' regardless of how good it is?"     | Tests absolute ceiling                        |
| 7 | "If I told you competitors charge $X-$Y, does that change your answer?"  | Tests anchoring sensitivity -- ask LAST       |

### Anti-Bias Rules

- Never ask WTP questions first in an interview. Establish value before price.
- Never show your planned price before asking WTP questions.
- Ask about current spending before future WTP (question 1 before 2-6).
- Use specific outcomes, not vague benefits ("saves 5 hours/week" not "saves time").
- Interview actual decision-makers, not influencers or users without budget authority.
- Stated WTP is typically 20-30% higher than actual WTP. Discount accordingly.

---

## 4. EXPERIMENT PASS/FAIL BENCHMARKS

| Pricing Experiment          | Minimum Sample | Pass Threshold                        | Confidence Level |
|-----------------------------|----------------|---------------------------------------|------------------|
| Van Westendorp survey       | 50             | OPP within 20% of target price        | Medium           |
| Gabor-Granger survey        | 100            | >= 40% demand at target price          | Medium-Strong    |
| WTP interviews              | 10-15          | >= 60% state WTP at or above target    | Weak-Medium      |
| Landing page price test     | 200 visitors   | >= 3% click "buy" at shown price       | Medium           |
| A/B price test (real sales) | 100+ per variant | No stat-sig drop in conversion at higher price | Strong    |
| Pre-sale at target price    | 20+ strangers  | >= 5% conversion from qualified leads  | Strong           |
