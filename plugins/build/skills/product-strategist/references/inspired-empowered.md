# Marty Cagan's Inspired & Empowered Frameworks

## Source Attribution
Primary sources: "Inspired: How to Create Tech Products Customers Love" (Marty Cagan,
2nd edition 2017), "Empowered: Ordinary People, Extraordinary Products" (Marty Cagan
and Chris Jones, 2020), Silicon Valley Product Group (SVPG) articles and talks.
Supplemented by SVPG case studies, Mind the Product interviews, and real-world
examples from companies including Netflix, Amazon, Google, Apple, and Spotify.

---

## 1. Product Discovery vs. Product Delivery

The fundamental organizing principle of modern product management is the separation
of discovery (deciding what to build) from delivery (building it). Both happen
continuously and in parallel, not sequentially.

### Discovery and Delivery Defined

```
+---------------------------+    +---------------------------+
|     PRODUCT DISCOVERY     |    |     PRODUCT DELIVERY      |
+---------------------------+    +---------------------------+
| Purpose: Figure out WHAT  |    | Purpose: Build WHAT was   |
|   to build and WHY        |    |   validated in discovery   |
+---------------------------+    +---------------------------+
| Activities:               |    | Activities:               |
|  - Customer interviews    |    |  - Architecture & design  |
|  - Prototyping            |    |  - Coding & testing       |
|  - Experimentation        |    |  - Deployment             |
|  - Data analysis          |    |  - Monitoring & ops       |
|  - Opportunity mapping    |    |  - Quality assurance      |
+---------------------------+    +---------------------------+
| Time allocation:          |    | Time allocation:          |
|  PM: ~80% of time         |    |  Engineers: ~80% of time  |
|  Designer: ~60% of time   |    |  Designer: ~40% of time   |
|  Tech Lead: ~20% of time  |    |  PM: ~20% of time         |
+---------------------------+    +---------------------------+
| Output: Validated backlog |    | Output: Shipped product   |
|  of items worth building  |    |  with quality & reliability|
+---------------------------+    +---------------------------+
```

### Critical Principle: Everyone Does Both

While time allocation differs, every member of the product team participates in
BOTH discovery and delivery. This is non-negotiable for empowerment and innovation.

- Engineers in discovery bring feasibility awareness and creative technical solutions
- PMs in delivery understand implementation tradeoffs and scope decisions
- Designers in delivery ensure implementation matches validated designs

### The Waterfall Anti-Pattern

```
ANTI-PATTERN (Waterfall/Handoff Model):
Business --> PM writes requirements --> Design creates mockups --> Engineering builds
                                                                        |
                                                     Shipped. Hope it works.

CORRECT PATTERN (Continuous Discovery + Delivery):
  Discovery:  PM + Designer + Tech Lead explore problems, prototype, test
       |
       +-- Validated items flow to -->
       |
  Delivery:  Full team builds, ships, measures
       |
       +-- Learnings flow back to -->
       |
  Discovery:  Incorporate what we learned, explore next problems
```

### AI Agent Application: Discovery Acceleration

An AI agent system transforms product discovery by:

1. Conducting rapid market and competitive research in real-time
2. Synthesizing user research patterns across large datasets
3. Generating multiple prototype concepts for team evaluation
4. Running quantitative analysis on behavioral data to surface opportunities
5. Creating opportunity solution trees as collaborative artifacts

The agent does NOT replace human judgment on value and viability decisions but
dramatically compresses the time to generate and evaluate options.

---

## 2. The Four Big Risks

Every product idea carries four categories of risk. The purpose of product discovery
is to address these risks BEFORE committing engineering resources to delivery.

### Risk Taxonomy

```
+--------------------+---------------------+
|   VALUE RISK       |   USABILITY RISK    |
|                    |                     |
|  Will customers    |  Can users figure   |
|  buy/use this?     |  out how to use it? |
|                    |                     |
|  Owner: PM         |  Owner: Designer    |
+--------------------+---------------------+
|   FEASIBILITY RISK |   VIABILITY RISK    |
|                    |                     |
|  Can we build it   |  Does it work for   |
|  with our team,    |  the business?      |
|  skills, tech,     |  (legal, sales,     |
|  and timeline?     |  finance, brand)    |
|                    |                     |
|  Owner: Tech Lead  |  Owner: PM          |
+--------------------+---------------------+
```

### Detailed Risk Assessment

#### Value Risk (Will they use it?)

| Assessment Question                              | Evidence Type                   |
|--------------------------------------------------|---------------------------------|
| Does this solve a real, frequent problem?         | User interviews, behavior data  |
| Is the problem painful enough to change behavior? | Switching cost analysis         |
| Do users already have workarounds?                | Competitive/substitute analysis |
| Would users pay for this (or use it if free)?     | Willingness-to-pay testing      |
| Is demand growing or shrinking?                   | Market trend data               |

**Testing techniques**: Customer interviews, demand testing, fake door tests,
concierge MVP, Wizard of Oz prototypes, landing page tests.

**Real example -- Netflix**: Before investing in original content (House of Cards),
Netflix used viewing data to validate that users watched Kevin Spacey films AND
David Fincher films AND political dramas. The value risk was reduced by data,
not guesswork.

#### Usability Risk (Can they use it?)

| Assessment Question                              | Evidence Type                   |
|--------------------------------------------------|---------------------------------|
| Can users complete key tasks without instruction? | Usability testing               |
| Is the learning curve acceptable for the audience?| Task completion rate testing    |
| Does it work across user skill levels?            | Segmented usability testing     |
| Are error states handled gracefully?              | Edge case testing               |

**Testing techniques**: User testing with prototypes, A/B testing, click testing,
first-use experience testing, accessibility audits.

**Real example -- Apple**: The iPhone's multi-touch interface was extensively
prototype-tested with non-technical users. Apple invested years in usability
risk reduction before committing to manufacturing.

#### Feasibility Risk (Can we build it?)

| Assessment Question                              | Evidence Type                   |
|--------------------------------------------------|---------------------------------|
| Do we have the technical skills on the team?      | Skills inventory                |
| Can we build this in the available time?          | Technical spike/estimate        |
| Are there unresolved technical unknowns?          | Proof-of-concept results        |
| Does this integrate with existing architecture?   | Architecture review             |
| Are there performance or scale concerns?          | Load testing, benchmarks        |

**Testing techniques**: Technical spikes, proof of concept, architecture reviews,
performance benchmarking, third-party API evaluation.

**Real example -- Google Maps**: Before launching Street View, Google built
prototypes of the camera rigs and tested image processing pipelines at small
scale to validate that the technical approach was feasible before committing to
a global fleet of camera vehicles.

#### Business Viability Risk (Should we build it?)

| Assessment Question                              | Evidence Type                   |
|--------------------------------------------------|---------------------------------|
| Does this fit our go-to-market model?             | Sales/marketing alignment       |
| Can we monetize this effectively?                 | Business model analysis         |
| Are there legal/compliance constraints?           | Legal review                    |
| Does this align with our brand promise?           | Brand positioning analysis      |
| Can sales/support actually sell/support this?     | Channel readiness assessment    |
| Does the unit economics work?                     | Financial modeling              |

**Testing techniques**: Stakeholder reviews, financial modeling, legal review,
pricing experiments, channel-fit analysis.

**Real example -- Amazon**: Before launching AWS, Amazon validated business
viability by first serving internal engineering teams, proving that the
infrastructure-as-a-service model worked operationally and financially before
offering it externally.

### Risk Assessment Matrix

For each product opportunity, score all four risks:

| Risk            | Score (1-5) | Confidence | Mitigation Plan         |
|-----------------|-------------|------------|-------------------------|
| Value           |             | H / M / L  |                         |
| Usability       |             | H / M / L  |                         |
| Feasibility     |             | H / M / L  |                         |
| Viability       |             | H / M / L  |                         |

**Scoring**: 1 = Very high risk (unvalidated), 5 = Very low risk (well-validated)

**Decision rule**: Any risk scoring 1-2 MUST be addressed in discovery before
the item enters the delivery backlog. Items with multiple 1-2 scores need
dedicated discovery sprints.

---

## 3. Opportunity Assessment (The Cagan Template)

Before investing discovery time in an opportunity, assess whether it is worth
pursuing. Cagan's opportunity assessment is a lightweight document (one page)
that forces critical thinking before work begins.

### The Ten Questions

```
OPPORTUNITY ASSESSMENT
======================

1. OBJECTIVE
   What business objective does this address?
   [Specific metric or strategic goal]

2. PROBLEM
   What problem are we solving for users?
   [Problem statement in user's language]

3. TARGET MARKET
   Who exactly are we solving this for?
   [Specific user segment with characteristics]

4. EVIDENCE
   How do we know this is a real problem worth solving?
   [Data, research, customer quotes, market signals]

5. SIZE
   How big is this opportunity?
   [Users affected, revenue potential, strategic value]

6. METRICS
   How will we measure success?
   [Primary metric, secondary metrics, timeframe]

7. COMPETITIVE LANDSCAPE
   What alternatives do users have today?
   [Direct competitors, indirect substitutes, status quo]

8. DIFFERENTIATION
   Why are we uniquely positioned to solve this?
   [Unfair advantages, unique capabilities, strategic fit]

9. RISKS
   What are the key risks? (Value, Usability, Feasibility, Viability)
   [Top 3 risks with brief mitigation approach]

10. TIMELINE
    What is a realistic timeframe for validating and delivering?
    [Discovery timeline, delivery estimate, key milestones]
```

### Scoring the Opportunity

After completing the assessment, score the opportunity:

| Dimension          | Weight | Score (1-10) | Weighted |
|--------------------|--------|-------------|----------|
| Problem severity   | 25%    |             |          |
| Market size        | 20%    |             |          |
| Strategic alignment| 20%    |             |          |
| Competitive position| 15%   |             |          |
| Execution confidence| 10%   |             |          |
| Time to value      | 10%    |             |          |
| **TOTAL**          | 100%   |             |          |

**Thresholds**:
- Score 8.0+: Pursue immediately, allocate dedicated team
- Score 6.0-7.9: Pursue in next cycle, conduct targeted discovery
- Score 4.0-5.9: Park for now, revisit when context changes
- Score below 4.0: Reject with documented reasoning

---

## 4. Product Vision, Strategy, and Principles

### Product Vision

The product vision is the North Star -- a compelling description of the future
you are trying to create. It is NOT a feature list. It is emotional, inspiring,
and focused on customer impact.

**Characteristics of a strong product vision:**
- Timeframe: 3-10 years (Cagan recommends 18 months to 3 years for practical use)
- Customer-centric: describes the user's improved life, not the product's features
- Inspiring: makes talented people want to work on this
- Ambitious but achievable: stretches the team without being fantasy
- Stable: does not change quarterly (strategy and roadmap change, vision does not)

**Vision template:**
```
In [timeframe], [target users] will be able to [transformed capability/experience]
because [product/company] provides [unique value].

This matters because [why the world is better].
```

**Real example -- Tesla (early vision)**: "Accelerate the world's transition to
sustainable energy." Not about cars. Not about batteries. About a transformed world.

**Real example -- Spotify**: "Unlock the potential of human creativity by giving
a million creative artists the opportunity to live off their art and billions of
fans the opportunity to enjoy and be inspired by it." Not about streaming. About
the relationship between creators and fans.

### Product Strategy

Product strategy is the sequence of bets that moves you toward the vision. It
changes as you learn and as the market evolves.

**Product strategy components:**
1. Focus: which user segments and problems to address first
2. Insights: what you know that competitors do not (or act on that they will not)
3. Sequence: in what order to pursue opportunities
4. Leverage: what existing assets or advantages to amplify

### Product Principles

Principles are the guardrails for decision-making. They encode organizational
values and strategic choices so that teams can make autonomous decisions that
align with strategy.

**Examples of real product principles:**
- "Speed over perfection" (Facebook early days)
- "Build for the creator first" (YouTube)
- "Every page is page one" (Amazon -- every entry point must be self-contained)
- "Data informs but does not dictate" (Airbnb)
- "Accessible by default" (Microsoft)

**Principle structure:**
```
PRINCIPLE: [Short name]
STATEMENT: [One sentence declaration]
IMPLICATION: [What this means in practice -- what we DO]
COUNTER-IMPLICATION: [What this means we explicitly do NOT do]
EXAMPLE: [A real decision this principle would guide]
```

---

## 5. Empowered Teams vs. Feature Teams

This is the central thesis of Cagan's "Empowered" book. The difference between
great product companies and the rest is NOT process, tools, or talent -- it is
whether teams are truly empowered.

### Feature Teams (The Anti-Pattern)

```
FEATURE TEAM MODEL (Mercenaries):

  Business/Stakeholders
         |
         | "Build this feature"
         v
  Product Manager
         |
         | Requirements document
         v
  Design --> Engineering
         |
         | Ship feature
         v
  "Done" (no ownership of outcomes)
```

**Characteristics:**
- Teams receive a list of features to build
- Success = shipping the feature on time
- PM is a project manager, not a product manager
- No ownership of business outcomes
- Relationship with leadership is command-and-control
- Teams feel like mercenaries: build what they are told
- Innovation is accidental, not systematic

### Empowered Teams (The Target Pattern)

```
EMPOWERED TEAM MODEL (Missionaries):

  Leadership
         |
         | "Solve this problem" (outcome assignment)
         v
  Product Team (PM + Designer + Engineers)
         |
         | Discovery: explore solutions
         | Delivery: build best solution
         | Measurement: own the outcome
         v
  Business Impact (team accountable for results)
```

**Characteristics:**
- Teams receive problems to solve, not features to build
- Success = achieving the business outcome
- PM is the product owner, responsible for value and viability
- Full ownership of discovery and delivery
- Relationship with leadership is trust and accountability
- Teams are missionaries: they believe in the mission
- Innovation is systematic through continuous discovery

### Comparison Table

| Dimension            | Feature Team               | Empowered Team              |
|----------------------|----------------------------|-----------------------------|
| Input from leadership| Feature list               | Problems/outcomes to achieve|
| PM role              | Project manager            | Product owner (mini-CEO)    |
| Design role          | Pixel pusher               | Experience strategist       |
| Engineering role     | Code to spec               | Creative problem solver     |
| Success metric       | Ship on time               | Business outcome achieved   |
| Decision authority   | Ask permission             | Autonomous within guardrails|
| Innovation           | Rare, accidental           | Continuous, systematic      |
| Motivation           | Mercenary (do as told)     | Missionary (believe in it)  |
| Accountability       | Output (did we ship?)      | Outcome (did it work?)      |
| Learning             | Post-mortem after failure   | Continuous discovery         |

### The Missionaries vs. Mercenaries Test

John Doerr's framing: "We need teams of missionaries, not teams of mercenaries."

**Ask the team these diagnostic questions:**
1. Can you explain WHY we are building this feature? (Missionaries: "Because users
   struggle with X and solving it drives Y metric." Mercenaries: "It's on the roadmap.")
2. What happens if this feature does not achieve its goal? (Missionaries: "We
   iterate or try a different approach." Mercenaries: "Not our problem, we shipped it.")
3. Who decided to build this? (Missionaries: "We identified the opportunity and
   proposed the solution." Mercenaries: "The stakeholders/exec team told us to.")

---

## 6. Continuous Product Discovery

Discovery is not a phase. It is a continuous, ongoing activity that runs in
parallel with delivery. The team is always discovering what to build next while
delivering what was previously validated.

### Discovery Cadence

```
WEEKLY DISCOVERY RHYTHM:
+--------+----------+----------+----------+----------+
| Mon    | Tue      | Wed      | Thu      | Fri      |
+--------+----------+----------+----------+----------+
| Team   | Customer | Prototype| Prototype| Synthesis |
| planning| interviews| & design | testing  | & decision|
| & data | (2-3)   |          |          |           |
| review |          |          |          |           |
+--------+----------+----------+----------+----------+

PM spends ~4 hours/day on discovery activities
Designer spends ~3 hours/day on discovery activities
Tech Lead spends ~1 hour/day on discovery activities
```

### Discovery Techniques by Phase

#### Phase 1: Framing (What problem space are we in?)
- Customer interviews (generative, not evaluative)
- Data mining for behavioral patterns
- Stakeholder input on business constraints
- Market and competitive analysis
- Opportunity solution tree construction

#### Phase 2: Ideation (What might we build?)
- Story mapping
- Design sprints
- Customer co-creation sessions
- Technology-enabled brainstorming
- Competitive teardowns

#### Phase 3: Prototyping (What does it look like?)

| Prototype Type     | Fidelity | Purpose                        | Time to Build |
|--------------------|----------|--------------------------------|---------------|
| Feasibility        | Low      | Can we build it?               | Hours         |
| User (wireframe)   | Low-Med  | Can users figure it out?       | 1-2 days      |
| Live data          | Medium   | Does it work with real data?   | 2-5 days      |
| High-fidelity      | High     | Would users choose this?       | 3-7 days      |
| Hybrid/Wizard of Oz| Varies   | Is there real demand?          | 1-5 days      |

**Cagan's prototype rule**: A prototype must be at least an order of magnitude
less effort than building the real product. If prototyping takes 10% of delivery
effort, you are doing it right.

#### Phase 4: Testing (Does it work?)
- Usability testing (5 users reveals ~85% of issues)
- Value testing (demand signals, willingness to pay)
- Feasibility testing (technical spikes, proof of concept)
- Viability testing (stakeholder review, financial modeling)
- A/B testing (quantitative validation at scale)

### The Opportunity Solution Tree

```
                    [DESIRED OUTCOME]
                    (Business metric)
                          |
            +-------------+-------------+
            |             |             |
       [Opportunity 1] [Opportunity 2] [Opportunity 3]
       (User need)    (User need)    (User need)
            |             |             |
       +----+----+   +---+---+    +---+---+
       |    |    |   |   |   |    |   |   |
      [S1] [S2] [S3][S4][S5][S6] [S7][S8][S9]
      Solutions   Solutions       Solutions
            |         |               |
       +----+    +----+          +----+
       |    |    |    |          |    |
      [E1] [E2] [E3] [E4]      [E5] [E6]
      Experiments/Tests
```

**How to use it:**
1. Start with the desired outcome (the metric leadership assigned)
2. Map the opportunity space (user needs, pain points, desires)
3. Generate multiple solutions for each opportunity
4. Design small experiments to test each solution
5. Let evidence guide which solutions to pursue

**AI agent application**: The agent system can generate and maintain opportunity
solution trees as artifacts, populating opportunities from user research synthesis
and suggesting solution hypotheses based on competitive analysis and technology
capabilities.

---

## 7. Stakeholder Management

Cagan identifies stakeholder management as one of the most underrated PM skills.
The PM must understand the considerations and constraints of every stakeholder
and bring those into discovery without letting stakeholders dictate solutions.

### Stakeholder Engagement Model

| Stakeholder          | Engagement Cadence     | Key Concern                    | Management Approach              |
|----------------------|------------------------|--------------------------------|----------------------------------|
| CEO / GM             | Bi-weekly              | Vision alignment, market pos.  | Share strategic context, metrics |
| Sales leadership     | Weekly                 | Revenue, deal blockers         | Show pipeline impact of roadmap  |
| Marketing leadership | Weekly                 | Positioning, launch timing     | Early preview of upcoming changes|
| Finance              | Monthly                | Unit economics, CAC/LTV        | Financial impact modeling        |
| Legal/Compliance     | As needed              | Regulatory constraints         | Early flagging of risk areas     |
| Customer Success     | Weekly                 | Retention, expansion           | Churn driver analysis sharing    |
| Engineering leadership| Continuous            | Technical debt, architecture   | Feasibility collaboration        |

### The Trust-Building Pattern

Cagan's approach to earning stakeholder trust:

1. **Demonstrate knowledge**: Show you understand their domain and constraints
2. **Share learnings proactively**: Do not wait for them to ask -- share what you
   are learning from discovery (interviews, data, experiments)
3. **Use high-fidelity prototypes**: Replace opinion-based debates with prototype-
   based discussions. It is much harder to argue with something you can see and use
4. **Move from opinions to data**: When disagreements arise, propose an experiment
   rather than debating whose opinion is correct
5. **Invest time**: Cagan recommends 2-3 hours per week in 1:1 meetings with key
   stakeholders. This is not optional overhead -- it is core PM work

### Common Stakeholder Failure Modes

| Failure Mode           | Symptom                                        | Fix                                    |
|------------------------|------------------------------------------------|----------------------------------------|
| HiPPO-driven roadmap   | Highest-paid person's opinion overrides data   | Propose experiments, show prototypes   |
| Sales-driven roadmap    | Every deal request becomes a feature            | Create strategic filter for requests   |
| Stakeholder surprise    | Stakeholders learn about changes at launch      | Regular preview cadence, no surprises  |
| Passive PM              | PM takes orders instead of proposing solutions  | PM must bring recommendations, not just questions|
| Over-promising          | PM commits to timelines without eng input       | Always include tech lead in estimates  |

---

## 8. Product Evangelism

Cagan stresses that product evangelism -- selling the dream -- is a critical and
often overlooked responsibility. Without evangelism, even great products die from
internal indifference or misalignment.

### Ten Evangelism Tactics (adapted from Cagan)

1. **Use a prototype, not a slideshow**: Show the experience, do not describe it
2. **Share the customer pain**: Make stakeholders feel the problem you are solving
3. **Share the customer context**: Bring customer quotes, stories, and data
4. **Share the learnings**: What did you learn this week from discovery?
5. **Share credit broadly**: "We" not "I" -- make everyone feel part of the success
6. **Be genuinely passionate**: If you do not believe in it, nobody else will
7. **Spend time with the team**: Engineers build better products when they understand
   the why, not just the what
8. **Be transparent about challenges**: Share what is hard and what you do not know
9. **Repeat the vision constantly**: People need to hear it 7-10 times before it sticks
10. **Connect work to impact**: Show how the current sprint connects to the vision

### AI Agent Application: Evangelism Support

The AI agent system supports product evangelism by:
- Generating compelling narrative artifacts from data and research
- Creating stakeholder-specific versions of strategy documents
- Synthesizing customer quotes and stories from research data
- Building visual roadmaps and strategy diagrams as shareable artifacts
- Producing regular discovery update summaries for stakeholder distribution

---

## 9. The Coaching Model

From "Empowered": the single most important and most overlooked element of
capable product leadership is coaching.

### Coaching Cadence

| Activity                  | Frequency | Duration    | Focus                              |
|---------------------------|-----------|-------------|------------------------------------|
| 1:1 with direct reports   | Weekly    | 30-60 min   | Growth, blockers, development       |
| Team skill assessment     | Quarterly | 2-3 hours   | Competency gaps, training needs     |
| Discovery review          | Weekly    | 30 min      | Are we learning fast enough?        |
| Strategy alignment check  | Monthly   | 60 min      | Is the team's work serving strategy?|

### Coaching vs. Managing

| Coaching                             | Managing                            |
|--------------------------------------|-------------------------------------|
| "What have you tried?"               | "Do this."                          |
| "What did you learn from that test?" | "Did you hit the deadline?"         |
| "How would you approach this?"       | "Here's how to approach this."      |
| Develops capability over time        | Gets immediate output               |
| Builds autonomous teams              | Creates dependency on manager       |

### The Three Competencies to Coach

Cagan identifies three competencies that product leaders must develop in their PMs:

1. **Product knowledge**: Deep expertise in users, data, market, technology, and
   business model. This is learned through immersion, not courses.

2. **Process skills**: Discovery techniques, delivery management, stakeholder
   engagement. This is learned through practice with feedback.

3. **People skills**: Team leadership, stakeholder influence, cross-functional
   collaboration. This is the hardest and most important to coach.

---

## 10. The Product Operating Model (Transformed, 2024)

From "TRANSFORMED: Moving to the Product Operating Model" (Marty Cagan, 2024).
This work codifies how the best product companies operate into 20 principles
and a concrete transformation roadmap.

### Three Core Pillars

| Pillar | Description | Key Practices |
|--------|-------------|---------------|
| Empowered Teams | Cross-functional teams own problems, not features | Product trio (PM + Designer + Engineer) with decision authority |
| Product Strategy | Leaders provide context and constraints, not solutions | Vision, insights, strategic bets, team topology aligned to strategy |
| Continuous Discovery & Delivery | Ship constantly, learn continuously | Minimum bi-weekly releases; 20 years of data shows faster = better quality |

### IT Mindset vs Product Mindset

| Dimension | IT Mindset (Old) | Product Mindset (New) |
|-----------|------------------|-----------------------|
| Role of technology | Cost center, supports business | Core competency, IS the business |
| Team input | Receives feature requests | Discovers problems and solutions |
| Success metric | On-time, on-budget delivery | Business outcomes achieved |
| Roadmap | Committed feature list (12-month) | Outcome-based, flexible quarterly |
| PM role | Project manager / business analyst | Product owner / strategist |
| Designer role | UI decoration after decisions made | Discovery partner from day one |
| Engineer role | Build to spec | Creative problem solver, discovery participant |
| Stakeholder relationship | Order-taker | Trusted partner (earns trust through results) |
| Innovation | Rare, top-down, annual planning | Continuous, bottom-up, weekly discovery |
| Risk management | Avoid risk, follow process | Manage risk through rapid prototyping and testing |
| Release cadence | Quarterly or longer | Continuous (daily/weekly minimum) |
| Decision authority | Escalate to management | Team decides within strategic guardrails |

### The 20 Product Model Principles

1. Product teams exist to serve customers in ways that meet the needs of the business
2. Product teams are cross-functional (PM, designer, engineers) and durable
3. Product teams are empowered to determine the best solutions to assigned problems
4. Product teams are accountable for outcomes, not outputs
5. The product vision inspires and provides the North Star for the organization
6. Product strategy is a sequence of bets that moves the team toward the vision
7. Product teams get their strategic context from leadership (objectives, not solutions)
8. Product discovery is continuous, rigorous, and evidence-based
9. Product delivery is frequent -- minimum every two weeks, ideally continuous
10. Product managers have deep knowledge of customers, data, business, and market
11. Product designers are discovery partners, not production artists
12. Engineers are creative problem solvers participating in discovery
13. Product leaders coach rather than direct -- developing team capability
14. Stakeholders are partners, not customers of product teams
15. Technology is not a cost center -- it is the primary means of delivering value
16. Teams use prototypes to test ideas before committing engineering resources
17. Teams address all four risks in discovery (value, usability, feasibility, viability)
18. Teams compare and contrast multiple solutions before committing to build
19. Teams measure success by outcomes (business results) not outputs (features shipped)
20. The organization invests in coaching and developing product competencies

### Transformation Roadmap

```
PHASE 1: PILOT (3-6 months)
  Select 1-2 teams with strong leaders
  Train in discovery techniques
  Give real outcome-based objectives
  Measure: team capability growth + first outcome wins

PHASE 2: SCALE (6-18 months)
  Expand to 5-10 teams based on pilot learnings
  Develop internal coaches from pilot team leaders
  Align product strategy to enable team autonomy
  Measure: % of teams operating as empowered + outcome metrics

PHASE 3: ORGANIZATION-WIDE (18-36 months)
  All product teams operating in product model
  Leadership fully shifted to context + coaching
  Stakeholder relationships rebuilt as partnerships
  Measure: sustained business outcomes + innovation rate + retention
```

### Decision Tree: Is Your Org Ready for Product Operating Model?

```
Does leadership believe technology is core (not cost center)?
|
+-- No --> Not ready. Start with executive education.
|
+-- Yes --> Do you have at least one strong product leader (VP+)?
    |
    +-- No --> Hire or develop one first. Cannot transform without.
    |
    +-- Yes --> Can you protect a pilot team from feature requests for 6 months?
        |
        +-- No --> Reduce pilot scope. Start with 1 team on 1 objective.
        |
        +-- Yes --> START PILOT. Assign outcome, coach weekly, measure monthly.
```

### Old Model vs. New Model (Summary)

| Dimension           | Old (Feature Factory)            | New (Product Operating Model)        |
|---------------------|----------------------------------|--------------------------------------|
| Strategy source     | Business stakeholders decide     | Product leaders propose, aligned     |
| Work assignment      | Features assigned to teams       | Problems assigned to teams           |
| Discovery           | Minimal or none                  | Continuous, rigorous                 |
| Team structure      | Feature teams (mercenaries)      | Empowered teams (missionaries)       |
| PM role             | Project manager / backlog admin  | Product owner / mini-CEO             |
| Designer role       | Production artist                | Discovery partner, experience owner  |
| Engineer role       | Code to specification            | Creative problem solver              |
| Success definition  | Output (shipped on time)         | Outcome (business impact achieved)   |
| Leadership role     | Command and control              | Context, coaching, and accountability|
| Innovation source   | Annual planning, top-down        | Continuous discovery, bottom-up      |

---

## 11. Real-World Case Studies from SVPG

### Case Study 1: Netflix -- Discovery-Driven Culture

Netflix exemplifies continuous discovery. Before investing in original content,
they used viewing data to validate demand. Before launching the recommendation
algorithm, they ran the Netflix Prize competition to validate feasibility. Every
major product bet was preceded by rigorous discovery that addressed all four risks.

**Key lesson**: Even with massive data, Netflix conducts user research to
understand the WHY behind behavioral patterns. Data tells you what happened;
discovery tells you why.

### Case Study 2: Amazon -- Working Backwards

Amazon's "Working Backwards" process (write the press release first) is a
discovery technique. By writing the customer-facing announcement before building
anything, teams must articulate the value proposition clearly. If the press
release is not compelling, the product is not worth building.

**Key lesson**: The artifact (press release) forces clarity of thought. The AI
agent system should similarly generate customer-facing descriptions of proposed
features as a discovery exercise.

### Case Study 3: Google -- 20% Time as Discovery

Google's famous 20% time was a mechanism for bottom-up discovery. Engineers could
explore problems and prototype solutions. Gmail, Google News, and AdSense all
emerged from this model. It worked because engineers had direct access to users
and data.

**Key lesson**: Empowered teams need time and access to do discovery. Without
both, empowerment is performative.

### Case Study 4: Spotify -- Squad Model Evolution

Spotify's squad model (autonomous teams aligned to a mission) is a real-world
implementation of empowered teams. Each squad owns a specific user outcome, has
a PM/designer/engineers, and conducts its own discovery.

**Failure learning**: Spotify openly acknowledged that the model had challenges
with cross-squad coordination. Pure autonomy without alignment creates duplication
and inconsistency. The fix: product strategy provides the alignment, empowered
teams provide the innovation.

### Case Study 5: Apple -- Design-Led Discovery

Apple's product development starts with the user experience. Design prototypes
are built first, and engineering figures out how to make them feasible. This
inverts the typical feasibility-first approach.

**Key lesson**: The order in which you address the four risks matters. Apple
starts with value and usability (design prototypes), then validates feasibility.
Most companies start with feasibility and never adequately validate value.

---

## 12. AI Agent Discovery Execution Checklist

```
[ ] 1. FRAME THE OPPORTUNITY
    [ ] Write opportunity assessment (10 questions)
    [ ] Score the opportunity using weighted criteria
    [ ] Identify which of the four risks are highest
    [ ] Decide: pursue, park, or reject

[ ] 2. MAP THE SPACE
    [ ] Build opportunity solution tree from desired outcome
    [ ] Research competitive solutions via web
    [ ] Synthesize user needs from available research/data
    [ ] Identify top 3 opportunities to explore

[ ] 3. GENERATE SOLUTIONS
    [ ] Brainstorm multiple solutions per opportunity (minimum 3)
    [ ] Score solutions on all four risks
    [ ] Select top solutions for prototyping
    [ ] Define what "validated" looks like for each

[ ] 4. DESIGN EXPERIMENTS
    [ ] Define hypothesis for each solution
    [ ] Choose appropriate prototype type
    [ ] Identify minimum sample for confidence
    [ ] Set time-box for each experiment

[ ] 5. SYNTHESIZE AND DECIDE
    [ ] Compile evidence across experiments
    [ ] Update risk scores based on evidence
    [ ] Make go/no-go recommendation with reasoning
    [ ] Document learnings for future reference
    [ ] Hand off validated items to delivery
```

---

## 13. Common Transformation Anti-Patterns

| Anti-Pattern                    | Description                                              | Diagnostic Question                                 |
|---------------------------------|----------------------------------------------------------|-----------------------------------------------------|
| "Empowered" but micromanaged   | Team has nominal autonomy but every decision reviewed    | "Can the team ship without executive approval?"     |
| Discovery theater               | Team does interviews but ignores findings                | "When did discovery evidence change a decision?"    |
| Prototype theater               | Prototypes built but never tested with real users         | "How many users tested this prototype?"             |
| Outcome without authority        | Team accountable for metric but cannot change the product| "Does the team control the levers for their metric?"|
| PM as order-taker               | PM collects requirements but does not shape solutions     | "Who proposed this solution?"                       |
| Feature factory with OKRs       | OKRs are just features disguised as outcomes              | "Is the KR an output or an outcome?"                |
