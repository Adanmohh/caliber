# Christensen's Jobs-to-be-Done Theory — Complete Reference

Sources: Clayton Christensen, "Competing Against Luck" (2016); Bob Moesta &
Chris Spiek, "Demand-Side Sales 101" (2020); Anthony Ulwick, "Jobs to Be Done"
(2016); Strategyn ODI methodology. Extended with AI-native adaptations.

---

## 1. THE CORE PREMISE

Customers don't buy products. They HIRE them to make progress in a specific
circumstance. When the product fails to do the job, they FIRE it and hire
something else.

This is not a metaphor — it is a causal mechanism. Understanding the JOB is
the unit of analysis for innovation, not the customer demographic, not the
product category, and not the competitive set.

**Christensen's Milkshake Example:**
A fast-food chain wanted to sell more milkshakes. Demographic analysis and
flavor testing yielded nothing. When researchers asked "What job did you hire
that milkshake for?", they discovered two distinct jobs:
- Morning commuters hired the milkshake to make a boring drive interesting and
  keep them full until lunch (competitor: bagels, bananas, boredom)
- Afternoon parents hired the milkshake to be a treat for their child
  (competitor: toy store visit, ice cream)

Same product. Two completely different jobs. The solutions (thicker for morning,
smaller/thinner for afternoon) were contradictory — which is why demographic
averaging failed.

---

## 2. ANATOMY OF A JOB

### 2.1 Job Dimensions

Every job has three dimensions that operate simultaneously:

```
+----------------------------------------------------------+
|                    THE COMPLETE JOB                       |
|                                                          |
|  +------------------+                                    |
|  | FUNCTIONAL       |  What the customer needs to        |
|  | DIMENSION        |  accomplish practically             |
|  +------------------+                                    |
|           |                                              |
|  +------------------+                                    |
|  | EMOTIONAL        |  How the customer wants to FEEL    |
|  | DIMENSION        |  while getting the job done         |
|  +------------------+                                    |
|           |                                              |
|  +------------------+                                    |
|  | SOCIAL           |  How the customer wants to be      |
|  | DIMENSION        |  PERCEIVED by others                |
|  +------------------+                                    |
+----------------------------------------------------------+
```

**Critical insight**: Most teams focus exclusively on the functional dimension.
But emotional and social dimensions often determine which solution gets hired.
A Rolex and a Casio both tell time (functional job met equally). The difference
is entirely emotional and social.

### 2.1b Identity Jobs (Scott Burleson, 2025)

Beyond functional, emotional, and social dimensions, Identity Jobs capture
how a product helps the customer become or be seen as a certain kind of person.

**Two sub-dimensions:**

| Sub-Dimension    | Definition                                              | Example                                |
|------------------|---------------------------------------------------------|----------------------------------------|
| Role Identity    | "I am a [type of person]" — internal self-concept       | "I'm a responsible parent"             |
| Image Identity   | "I'm seen as [type of person]" — external perception    | "I'm seen as tech-forward"             |

**Identity Job Statement Format:**

```
"Help me be/be seen as [identity] in the context of [situation]"

Examples:
- "Help me be a thought leader in the context of my industry"
- "Help me be seen as data-driven in the context of team decisions"
- "Help me be a responsible parent in the context of screen time choices"
```

**Scoring Identity Jobs (1-5, same scale as other dimensions):**
- 5 = Identity is the primary purchase driver (luxury, status, professional tools)
- 4 = Identity strongly reinforces the purchase decision
- 3 = Identity is a meaningful secondary factor
- 2 = Identity plays a minor role
- 1 = Identity is irrelevant to the purchase

**Connection to premium pricing:** Identity jobs drive willingness to pay
premiums because the customer is not buying a product — they are buying who
they become. Products that serve identity jobs can command 2-5x price
premiums over functionally equivalent alternatives.

### 2.1c Job Type to Business Implication Mapping

| Job Type     | Primary Business Implication | Design Focus      | Pricing Power | Example Product        |
|-------------|------------------------------|-------------------|---------------|------------------------|
| Functional  | Features and capabilities     | Utility, speed    | Low-Medium    | Google Docs            |
| Emotional   | Experience and feeling        | UX, delight       | Medium        | Headspace              |
| Social      | Community and signaling       | Social features   | Medium-High   | Peloton                |
| Identity    | Brand and positioning         | Brand, narrative  | High          | Tesla, Moleskine       |

**Practical rule:** If you only map functional jobs, you will under-price and
under-differentiate. Always check: does this product help the customer
*become someone* or *be seen as someone*? If yes, you have an identity job.

### 2.2 Job Levels

Jobs exist at multiple levels of abstraction:

| Level        | Definition                                     | Example                              |
|-------------|------------------------------------------------|--------------------------------------|
| Aspirational | Life-level goal the customer pursues           | "Be a great parent"                  |
| Main Job    | Core task in a specific context                | "Feed my family a healthy dinner"    |
| Sub-Job     | Step within the main job                       | "Find a recipe with available items" |
| Micro-Job   | Discrete action within a sub-job               | "Check what's in the fridge"         |

**Rule of thumb**: Innovate at the Main Job level. Aspirational jobs are too
abstract to design for. Sub-jobs and micro-jobs are too granular — they lead to
incremental features, not breakthrough value propositions.

### 2.3 Job Statement Format

The canonical job statement follows this structure:

```
MAIN JOB STATEMENT:
[Verb] + [object of action] + [contextual clarifier]

"Manage household finances without needing accounting expertise"
"Coordinate a distributed team across time zones"
"Find trustworthy childcare within my neighborhood"
```

**Quality test for job statements:**
- Is it solution-agnostic? (No mention of any product or technology)
- Is it stable over time? (Would this job exist 10 years ago? 10 years from now?)
- Does it have a clear functional verb? (Not "be happy" but "accomplish X")
- Does it include context? (When, where, under what constraints?)

---

## 3. JOB STORIES VS. USER STORIES

Traditional user stories focus on the solution. Job stories focus on the
situation and desired outcome, remaining deliberately solution-agnostic.

### Format Comparison

```
USER STORY (solution-oriented):
"As a [persona], I want [feature], so that [benefit]"
Example: "As a project manager, I want a Gantt chart, so that I can
track project timelines"

JOB STORY (situation-oriented):
"When [situation], I want to [motivation], so I can [expected outcome]"
Example: "When I'm managing multiple overlapping projects, I want to
see which tasks are blocking others, so I can reallocate resources
before deadlines slip"
```

### Why Job Stories Are Superior for Discovery

| Dimension       | User Story                    | Job Story                         |
|----------------|-------------------------------|-----------------------------------|
| Focus          | Feature (the solution)        | Situation (the context)           |
| Persona        | Predefined archetype          | Anyone in this situation          |
| Innovation     | Constrained by stated feature | Open to any solution              |
| Validation     | "Did we build the feature?"   | "Did we solve the problem?"       |
| Competition    | Other similar products        | Anything hired for the same job   |

### Job Story Construction Protocol

1. **Identify the struggling moment**: What triggers the need? What's the
   context? What just happened?
2. **Articulate the motivation**: What progress is the customer trying to make?
   Not what feature they want, but what outcome they seek.
3. **Define the expected outcome**: What does success look like? How will the
   customer know the job is done?

**AI-agent approach**: Mine support tickets, forum posts, and review complaints
for struggling moments. These naturally contain situational context that maps
directly to job stories.

---

## 4. THE FORCES OF PROGRESS

Developed by Bob Moesta and Chris Spiek (circa 2012), the Forces of Progress
model explains why customers switch (or don't switch) between solutions.

```
FORCES DRIVING CHANGE                FORCES OPPOSING CHANGE
======================                ======================

+-------------------+                +-------------------+
| PUSH OF THE       |                | ANXIETY OF THE    |
| SITUATION         | ----+    +---- | NEW SOLUTION      |
| (current pain)    |     |    |     | (fear of change)  |
+-------------------+     |    |     +-------------------+
                          v    v
                     [SWITCHING
                      DECISION]
                          ^    ^
+-------------------+     |    |     +-------------------+
| PULL OF THE       |     |    |     | HABIT OF THE      |
| NEW SOLUTION      | ----+    +---- | CURRENT SOLUTION  |
| (attraction)      |                | (inertia)         |
+-------------------+                +-------------------+

SWITCH HAPPENS WHEN:
  (Push + Pull) > (Anxiety + Habit)
```

### 4.1 Force 1: Push of the Situation

The struggles, frustrations, and problems with the current situation that make
the customer WANT to change.

**Signals in research data:**
- "I'm tired of..."
- "Every time I try to..., it fails"
- "We've been dealing with this for months"
- "It's costing us $X per month in wasted time"

**Scoring Push (1-5):**
1. Minor inconvenience, barely noticed
2. Recurring annoyance, tolerable
3. Meaningful problem, actively seeking alternatives
4. Serious pain, affecting outcomes or revenue
5. Critical crisis, must resolve immediately

### 4.2 Force 2: Pull of the New Solution

The appeal, promise, and attraction of the new solution that draws the
customer toward it.

**Signals in research data:**
- "I saw [competitor] demo and it looked amazing"
- "I've heard that [approach] can save 50% of time"
- "What if we could just..."
- "Other companies in our space are already using..."

**Scoring Pull (1-5):**
1. Vaguely interesting but no urgency
2. Appealing concept, worth investigating
3. Clear value proposition, actively evaluating
4. Compelling case, strong desire to adopt
5. Irresistible — "take my money now"

### 4.3 Force 3: Anxiety of the New Solution

The fears, uncertainties, and concerns about adopting something new.

**Common anxiety patterns:**

| Anxiety Type        | Example                                             |
|--------------------|-----------------------------------------------------|
| Performance risk   | "What if it doesn't actually work as promised?"     |
| Learning curve     | "How long before my team is productive with this?"  |
| Integration risk   | "Will it work with our existing systems?"           |
| Social risk        | "What if I championed this and it fails?"           |
| Switching cost     | "Migration will take 3 months of productivity loss" |
| Data risk          | "What happens to our data if the vendor goes under?"|

**Scoring Anxiety (1-5):**
1. Minimal concern, willing to try immediately
2. Some questions, but not blocking
3. Meaningful concerns requiring answers before proceeding
4. Significant barriers requiring proof/guarantees
5. Paralyzing fear, will not switch without extraordinary evidence

### 4.4 Force 4: Habit of the Current Solution (Inertia)

The comfort, familiarity, and switching costs that keep customers using their
current solution even when it's suboptimal.

**Common inertia patterns:**
- "We've always done it this way"
- "Everyone already knows how to use the current tool"
- "The devil you know is better than the devil you don't"
- "We just renewed our annual contract"
- Sunk cost fallacy: "We've invested so much in customizing this"
- Organizational inertia: "Getting approval for a new vendor takes 6 months"

**Scoring Habit (1-5):**
1. No attachment to current solution, easy to switch
2. Some familiarity, minor inconvenience to switch
3. Established workflows, moderate switching cost
4. Deep integration, significant retraining needed
5. Organizational identity tied to current solution, near-impossible to displace

### 4.5 The Switch Equation

```
SWITCH LIKELIHOOD = (Push + Pull) - (Anxiety + Habit)

Interpretation:
> +4:  HIGH probability of switching — focus on reducing friction
+1 to +3: MODERATE — need to amplify push/pull or reduce anxiety/habit
 0:    STALEMATE — no switch unless something changes
< 0:   LOW probability — current forces favor status quo
```

**Strategic implications:**
- If Push is high but Pull is low: Your marketing message is wrong. Show value.
- If Pull is high but Anxiety is high: Offer trials, guarantees, migration help.
- If Habit is high: Target customers at natural transition points (contract
  renewals, team changes, new leadership, system failures).
- If all forces are low: The customer is SATISFIED. This is not your target.

---

## 5. THE SWITCH INTERVIEW

The Switch Interview, developed by Bob Moesta, reconstructs the timeline of a
customer's decision to switch solutions. It is the primary research method
for JTBD.

### 5.1 Switch Timeline

```
TIMELINE OF A SWITCH DECISION:

[First Thought] --> [Passive Looking] --> [Active Looking] --> [Deciding] --> [Consuming]
     |                    |                    |                  |              |
 "Something's       "I started            "I compared        "I chose       "I'm using
  not right"         noticing              3 options"         this one"      it now"
                     alternatives"
                                                                          [Ongoing
                                                                           Satisfaction]
                                                                              |
                                                                        "Did it do
                                                                         the job?"
```

### 5.2 Key Interview Questions by Timeline Phase

**First Thought:**
- "When did you first start thinking you needed something different?"
- "What was happening in your life/work at that moment?"
- "Was there a specific event that triggered the thought?"

**Passive Looking:**
- "What did you start noticing? Where were you looking?"
- "Did anyone recommend something to you?"
- "How long did you stay in this mode before getting serious?"

**Active Looking:**
- "What options did you consider? How did you find them?"
- "What criteria were most important to you?"
- "What did you rule out first, and why?"

**Deciding:**
- "What made you finally choose this option?"
- "Was there a moment of hesitation? What almost stopped you?"
- "Who else was involved in the decision?"

**Consuming:**
- "Is it doing the job you hired it for?"
- "What surprised you — positively or negatively?"
- "Have you thought about switching again?"

### 5.3 AI-Agent Switch Interview Simulation

An AI agent can simulate switch interviews with research-backed personas:

1. **Build the persona** from web research data (demographics, psychographics,
   stated needs from forums/reviews)
2. **Define the switching context** (what old solution, what new solution)
3. **Walk through the timeline** asking questions at each phase
4. **Extract forces** (push, pull, anxiety, habit) from simulated responses
5. **Flag confidence level** — simulated interviews generate HYPOTHESES, not facts

See ai-customer-research.md for full simulation protocol.

---

## 6. OUTCOME-DRIVEN INNOVATION (ODI)

Anthony Ulwick's Outcome-Driven Innovation is the quantitative methodology
that operationalizes JTBD for product strategy.

### 6.1 Core Concept: Desired Outcomes

A desired outcome is a measurable metric customers use to judge success when
executing a job. Outcomes follow a strict format:

```
OUTCOME STATEMENT FORMAT:
[Direction of improvement] + [performance metric] + [object of control] +
[contextual clarifier]

Examples:
- "Minimize the time it takes to identify the root cause of a system failure"
- "Minimize the likelihood of losing data during a migration"
- "Maximize the accuracy of demand forecasts for seasonal products"
```

### 6.2 The Opportunity Algorithm

Ulwick's opportunity algorithm identifies where to focus innovation:

```
OPPORTUNITY = Importance + MAX(Importance - Satisfaction, 0)

Where:
- Importance = How important is this outcome? (1-5 scale)
- Satisfaction = How well is this outcome currently met? (1-5 scale)
```

Note: Ulwick's original ODI uses 1-10 scales. This system standardizes to 1-5
for consistency with all other scoring in the pipeline. Opportunity Score
range becomes 1-10 (vs original 1-20). Interpretation:
8-10 = Underserved | 5-7 = Served | 0-4 = Overserved

**Opportunity Landscape:**

```
        HIGH IMPORTANCE
             |
   UNDER-    |    APPROPRIATELY
   SERVED    |    SERVED
   (Innovate |    (Competitive)
    here)    |
             |
  -----------+-----------> HIGH SATISFACTION
             |
   TABLE     |    OVER-
   STAKES    |    SERVED
   (Must     |    (Cost-reduce
    match)   |     or eliminate)
             |
        LOW IMPORTANCE
```

### 6.3 Applying ODI — Step by Step

1. **Define the main job** using canonical job statement format
2. **Create a job map** — break the main job into 8 universal process steps:
   Define → Locate → Prepare → Confirm → Execute → Monitor → Modify → Conclude
3. **Generate outcome statements** for each step (typically 50-150 per job)
4. **Survey customers** to rate Importance and Satisfaction for each outcome
5. **Calculate Opportunity Scores** using the algorithm
6. **Cluster underserved outcomes** into opportunity themes
7. **Design solutions** targeting the highest-opportunity clusters

### 6.4 The Universal Job Map

```
+--------+--------+--------+--------+--------+--------+--------+--------+
| DEFINE | LOCATE | PREPARE| CONFIRM| EXECUTE| MONITOR| MODIFY | CONCLUDE|
+--------+--------+--------+--------+--------+--------+--------+--------+
| What   | What   | What   | What   | What   | What   | What   | What   |
| needs  | inputs | must   | must   | must   | must   | can    | must   |
| to get | are    | be set | be     | be     | be     | be     | happen |
| done?  | needed?| up?    | verified| done?  | tracked| changed| to     |
|        |        |        | before |        | during | if     | finish?|
|        |        |        | acting?|        | exec?  | needed?|        |
+--------+--------+--------+--------+--------+--------+--------+--------+
```

**Example — Job: "Manage personal finances"**

| Step     | Outcome Statement                                               |
|---------|-----------------------------------------------------------------|
| Define  | Minimize time to understand total monthly obligations           |
| Locate  | Minimize effort to find all accounts and transactions           |
| Prepare | Minimize time to categorize spending into meaningful buckets    |
| Confirm | Minimize risk of missing a recurring charge                     |
| Execute | Minimize time to pay all bills by their due dates               |
| Monitor | Minimize time to detect unusual spending patterns               |
| Modify  | Minimize effort to adjust budget when income changes            |
| Conclude| Minimize time to generate year-end financial summary            |

---

## 7. COMPETITIVE ANALYSIS THROUGH JTBD

JTBD redefines competition. Your competitor is not the product that looks like
yours — it's anything the customer might hire for the same job.

### 7.1 The Competition Landscape

```
TRADITIONAL VIEW:          JTBD VIEW:
Spotify vs.                "Help me enjoy my commute"
Apple Music vs.            - Spotify (music)
YouTube Music              - Podcast apps (learning)
                           - Audiobooks (stories)
                           - Phone calls (connection)
                           - Silence (meditation)
                           - News radio (information)
```

### 7.2 Competitive Analysis Framework

For each competitor (broadly defined), assess:

| Dimension              | Score (1-5) | Weight |
|-----------------------|-------------|--------|
| Functional job fit    | ?           | 0.40   |
| Emotional job fit     | ?           | 0.25   |
| Social job fit        | ?           | 0.15   |
| Accessibility         | ?           | 0.10   |
| Switching cost (low=5)| ?           | 0.10   |

```
COMPETITIVE THREAT = SUM(Score x Weight)

4.0-5.0: Strong competitor — differentiate aggressively
3.0-3.9: Moderate competitor — find underserved niches
2.0-2.9: Weak competitor — can be displaced with focused value prop
1.0-1.9: Not a real competitor for this job
```

---

## 8. COMMON FAILURE MODES

### Failure 1: Defining Jobs Too Broadly
**Bad**: "Be more productive"
**Good**: "Coordinate task handoffs between team members without status meetings"
**Fix**: Add context until the job implies specific, observable behaviors.

### Failure 2: Confusing Jobs with Solutions
**Bad**: "Use a CRM system"
**Good**: "Track all customer interactions so nothing falls through the cracks"
**Fix**: Remove any product, technology, or method references from the job statement.

### Failure 3: Ignoring Emotional and Social Dimensions
**Bad**: Only listing functional jobs like "process invoices"
**Good**: Adding "Feel confident that nothing is missing (emotional)" and "Show
the CFO I run a tight operation (social)"
**Fix**: For every functional job, ask: "How does the customer want to FEEL
while doing this?" and "How does the customer want to be SEEN while doing this?"

### Failure 4: Ignoring Non-Consumption
**Bad**: Only analyzing people who use current solutions
**Good**: Also analyzing people who choose to do NOTHING (non-consumption)
**Fix**: Non-consumers often have the strongest unmet needs. Research why people
abandon the job entirely — the forces of anxiety and habit have won.

### Failure 5: Treating JTBD as a One-Time Exercise
**Bad**: Map jobs once, build product, never revisit
**Good**: Continuously update job map as market and context evolve
**Fix**: Re-run forces analysis quarterly, especially after competitor launches
or market shifts.

---

## 9. AI-NATIVE JTBD EXECUTION

### What an AI Agent Does Better Than a Human Consultant

| Capability              | Human Consultant        | AI Agent                          |
|------------------------|------------------------|-----------------------------------|
| Review mining          | Reads 50 reviews       | Processes 5,000+ reviews          |
| Pattern detection      | Finds obvious themes   | Detects subtle language patterns   |
| Forces scoring         | Subjective estimates   | Systematic scoring across data     |
| Persona simulation     | 2-3 interviews/day     | 20+ simulated interviews/hour     |
| Consistency            | Varies by fatigue       | Same framework every time          |
| Competitive scan       | 3-5 competitors        | 15-20 competitors + alternatives   |
| Job map completeness   | Relies on memory        | Systematic step-by-step extraction |

### AI Agent JTBD Protocol

1. **Accept the domain** from user (e.g., "personal finance management")
2. **Research phase**: Web search for reviews, forums, complaints, feature
   requests, competitor positioning
3. **Extract jobs** from research data using verb + object + context format
4. **Classify** into functional, emotional, social dimensions
5. **Build forces model** for each major competitor/alternative
6. **Score opportunities** using Ulwick's algorithm
7. **Generate job stories** in "When I... I want to... So I can..." format
8. **Create artifacts**: Job Map, Forces Diagram, Opportunity Matrix
9. **Identify validation priorities** — which hypotheses need real-world testing
10. **Prepare handoff** to Value Proposition Canvas design

---

## 10. INTEGRATION WITH VALUE PROPOSITION CANVAS

JTBD and the VPC are complementary:

```
JTBD FRAMEWORK                    VPC MAPPING
==============                    ===========

Main Job              ------>     Customer Jobs (functional)
Emotional Dimension   ------>     Customer Jobs (emotional)
Social Dimension      ------>     Customer Jobs (social)
Push Forces           ------>     Pains
Anxiety Forces        ------>     Pains (adoption barriers)
Pull Forces           ------>     Gains (desired)
Desired Outcomes      ------>     Gains (required/expected)
Unexpected Delight    ------>     Gains (unexpected)
```

**Workflow**: Use JTBD to discover and understand the job deeply. Then transfer
findings into the VPC to design the specific value proposition. JTBD is the
RESEARCH framework; VPC is the DESIGN framework.

---

## 11. RECOMMENDED READING

- Christensen, C. et al. (2016). *Competing Against Luck*. Harper Business.
- Moesta, B. & Spiek, C. (2020). *Demand-Side Sales 101*. Lioncrest.
- Ulwick, A. (2016). *Jobs to Be Done: Theory to Practice*. IDEA BITE PRESS.
- Klement, A. (2018). *When Coffee and Kale Compete*. NYC Press.
- Christensen Institute — jobstobedone.org
- Strategyn — strategyn.com (ODI methodology)
