# Jobs-to-be-Done Driven UX Design -- Complete Reference

Sources: Clayton Christensen (Competing Against Luck), Tony Ulwick (Outcome-Driven Innovation),
Bob Moesta (Demand-Side Sales), Intercom (Intercom on Jobs to be Done), Alan Klement (JTBD.info)

This reference provides a complete methodology for designing interfaces that help users make
progress on their jobs-to-be-done. Every section includes frameworks, decision criteria,
scoring systems, and concrete application patterns.

---

## 1. The Fundamental Shift: Jobs, Not Features

Traditional product design asks: "What features should we build?"
JTBD-driven design asks: "What job is the user hiring this product to do?"

### The Hiring Metaphor

Users don't buy products -- they hire them to make progress in specific circumstances.
When the product fails to do the job, they fire it and hire something else.

| Traditional Thinking | JTBD Thinking |
|---------------------|---------------|
| "Our users need a calendar feature" | "Users need to coordinate schedules with colleagues" |
| "Add social sharing buttons" | "Users want to appear knowledgeable to their peers" |
| "Build a dashboard with charts" | "Managers need to know if the team is on track without asking" |
| "Create a notification system" | "Users need to know when something requires their attention" |
| "Add a search bar" | "Users need to find a specific thing they know exists" |

### Implications for UI Design

The job reframes every design decision:
- Navigation structure reflects the user's job steps, not the product's feature categories
- Empty states describe the job outcome, not the feature ("Track your team's progress" not "No data yet")
- Button labels use job language ("Schedule a meeting" not "Create event")
- Onboarding walks through the job story, not the feature tour
- Settings are organized by job context, not technical subsystem

---

## 2. Job Dimensions: Functional, Emotional, Social

Every job has three dimensions. Most products only design for the functional dimension
and wonder why users don't engage emotionally.

### The Three Dimensions

**Functional:** The practical task the user needs to accomplish.
- "I need to send this report to my manager by 5 PM"
- "I need to find a restaurant near the airport that's open now"
- "I need to track how much I'm spending on subscriptions"

**Emotional:** How the user wants to feel during and after the interaction.
- "I want to feel confident that this report is correct before sending it"
- "I want to feel like I made a smart choice, not a random one"
- "I want to feel in control of my finances, not anxious about them"

**Social:** How the user wants to be perceived by others.
- "I want my manager to see me as reliable and thorough"
- "I want my dinner companions to think I have good taste"
- "I want my partner to see me as financially responsible"

### Designing for Each Dimension

| Dimension | Design Approach | UI Patterns |
|-----------|----------------|-------------|
| Functional | Remove friction, reduce steps, automate | Smart defaults, auto-fill, bulk actions, keyboard shortcuts |
| Emotional | Build confidence, reduce anxiety, create delight | Progress indicators, confirmations, undo support, celebration moments |
| Social | Enable sharing, demonstrate competence, build identity | Shareable outputs, public profiles, social proof, achievement badges |

### Dimension Scoring (1-5 per dimension)

**Functional Score:**

| Score | Criteria |
|-------|----------|
| 1 | The interface makes the functional job harder than alternatives |
| 2 | The job can be completed but with unnecessary friction |
| 3 | The job can be completed reasonably well |
| 4 | The job is completed efficiently with helpful automation |
| 5 | The job is completed faster and more reliably than any alternative |

**Emotional Score:**

| Score | Criteria |
|-------|----------|
| 1 | The interface creates anxiety, confusion, or frustration |
| 2 | The interface is neutral but provides no confidence or delight |
| 3 | The interface provides basic reassurance (confirmations, undo) |
| 4 | The interface actively builds confidence and reduces anxiety |
| 5 | The interface creates genuine delight and a feeling of mastery |

**Social Score:**

| Score | Criteria |
|-------|----------|
| 1 | The interface produces outputs that embarrass the user |
| 2 | Outputs are functional but generic (could come from anywhere) |
| 3 | Outputs are competent and presentable |
| 4 | Outputs make the user look good to their audience |
| 5 | Outputs actively enhance the user's social standing or professional reputation |

---

## 3. The Progress-Making Forces

Four forces determine whether a user will adopt (hire) your design or stay with
their current solution.

### The Forces Diagram

```
    PROMOTING FORCES                    BLOCKING FORCES
    (Drive change)                      (Resist change)

+---------------------------+    +---------------------------+
|  PUSH of Current Situation |    |  ANXIETY of New Solution  |
|  "This isn't working"      |    |  "What if it's worse?"    |
|  Pain, frustration, unmet  |    |  Risk, uncertainty, fear  |
|  needs in current state    |    |  of the unknown, learning |
+---------------------------+    |  curve, data loss risk    |
                                 +---------------------------+
+---------------------------+    +---------------------------+
|  PULL of New Solution      |    |  INERTIA of Current Habit |
|  "That looks better"       |    |  "Good enough for now"    |
|  Desired outcome, vision   |    |  Familiarity, sunk costs, |
|  of progress, attraction   |    |  switching costs, comfort |
+---------------------------+    +---------------------------+

         CHANGE HAPPENS WHEN:
    Push + Pull > Anxiety + Inertia
```

### Designing for Each Force

**Reducing Anxiety (Most neglected in design):**

| Anxiety Source | Design Solution |
|---------------|-----------------|
| "Will I lose my data?" | Import/export tools, visible backup indicators, migration wizards |
| "Is this secure?" | Trust signals: SSL badges, privacy policies, testimonials |
| "What if I make a mistake?" | Undo everywhere, non-destructive defaults, preview before commit |
| "Can I go back to the old way?" | Trial periods, data portability, easy downgrade path |
| "Will this take too long to learn?" | Progressive disclosure, contextual help, familiar patterns |
| "Will I look stupid using this?" | Private by default, guided onboarding, success celebrations |

**Reducing Inertia (The "good enough" problem):**

| Inertia Source | Design Solution |
|---------------|-----------------|
| "My current tool works fine" | Show the gap: what they're missing, what they're losing |
| "I've invested too much time" | Easy data import, preserve existing workflows |
| "I don't want to relearn" | Use familiar patterns, provide migration guidance |
| "Switching is too much effort" | One-click import, guided setup, concierge onboarding |
| "My team won't adopt it" | Team onboarding flows, admin controls, gradual rollout |

**Amplifying Push (Ethical, not manipulative):**

| Push Source | Design Application |
|------------|-------------------|
| Current pain points | Show how specific pain points are resolved in the new design |
| Wasted time | Calculate and display time savings ("You saved 2 hours this week") |
| Missed opportunities | Show what becomes possible ("Teams using this ship 40% faster") |
| Growing complexity | Demonstrate how the new solution handles scale better |

**Amplifying Pull (The desired outcome):**

| Pull Source | Design Application |
|------------|-------------------|
| Desired outcome | Show the end state first (before/after, preview mode) |
| Ease of use | Demo mode, interactive tours, "try it now" patterns |
| Social proof | Show who else has switched ("Join 10,000+ teams") |
| Aspiration | Show the best possible outcome (gallery of excellent results) |

---

## 4. Job Stories: From Research to UI Requirements

### Job Story Format

The format originated at Intercom and replaces user stories for design purposes:

```
When [situation/trigger],
I want to [motivation/action],
So I can [expected outcome].
```

**Key differences from user stories:**
- No persona ("As a...") -- focuses on situation, not identity
- Emphasizes context and causality, not role and feature
- Directly translatable to UI requirements

### Job Story to UI Requirement Translation

| Job Story Component | UI Requirement |
|--------------------|----------------|
| When [situation] | Entry point: where/when does the UI appear? |
| I want to [motivation] | Core interaction: what does the user do? |
| So I can [outcome] | Success state: what does completion look like? |

### Worked Examples

**Job Story 1:**
"When I'm reviewing my team's work at the end of the week, I want to see who completed
their tasks and who's behind, so I can address blockers before they snowball."

| Component | UI Requirement |
|-----------|----------------|
| Trigger | Dashboard accessible from main nav; relevant on Fridays |
| Core view | Team progress grid: members as rows, tasks as columns, status as color |
| Primary data | Completion rate per person, overdue items highlighted |
| Action | Click a person to see their specific blockers |
| Success state | Manager can identify issues in < 30 seconds |
| Emotional need | Confidence that nothing is falling through cracks |

**Job Story 2:**
"When a customer sends an urgent support message, I want to see their account context
immediately, so I can help them without asking redundant questions."

| Component | UI Requirement |
|-----------|----------------|
| Trigger | New message notification with urgency indicator |
| Core view | Split panel: conversation on left, customer context on right |
| Primary data | Account tier, recent activity, previous tickets, key metrics |
| Action | Reply with context-aware templates |
| Success state | Agent responds with relevant context in first message |
| Emotional need | Agent feels competent and prepared, not scrambling |

**Job Story 3:**
"When I'm deciding whether to buy this product, I want to see how it compares to
alternatives I'm considering, so I can justify my decision to my team."

| Component | UI Requirement |
|-----------|----------------|
| Trigger | Pricing page or feature comparison request |
| Core view | Comparison table with competitors; highlighting advantages |
| Primary data | Features, pricing, limitations, customer reviews |
| Action | Share comparison with team, start trial |
| Success state | User can articulate why this product wins |
| Social need | User looks like they did thorough research |

---

## 5. JTBD-Driven Information Architecture

### Traditional IA vs. Job-Based IA

**Traditional (feature-organized):**
```
Home
|-- Documents
|   |-- Create
|   |-- Templates
|   |-- Shared
|-- Calendar
|   |-- Events
|   |-- Scheduling
|-- Reports
|   |-- Analytics
|   |-- Exports
|-- Settings
    |-- Account
    |-- Integrations
```

**Job-based (organized by user jobs):**
```
Home (My Work Today)
|-- Plan (coordinate with my team)
|   |-- Schedule a meeting
|   |-- Assign work
|   |-- Set deadlines
|-- Do (get my work done)
|   |-- My tasks
|   |-- Docs I'm working on
|   |-- Messages needing response
|-- Review (understand progress)
|   |-- Team status
|   |-- My performance
|   |-- What's overdue
|-- Share (communicate results)
    |-- Send a report
    |-- Present to stakeholders
    |-- Export data
```

### Navigation Design Principles

| Principle | Implementation |
|-----------|---------------|
| Label with verbs, not nouns | "Send a message" not "Messages" |
| Group by job, not feature | "Get paid" section contains invoicing, payment links, and tax tools |
| Surface the primary job | The most common job gets the most prominent position |
| Support job switching | Users often switch between related jobs; make transitions smooth |
| Show progress | Indicate job completion status in navigation ("3 of 5 tasks done") |

---

## 6. Competitive Displacement Through Design

### The Switch Interview Framework

Understanding why users switch FROM competitors reveals design requirements:

| Interview Question | Design Implication |
|-------------------|-------------------|
| "What were you using before?" | Design for familiar interaction patterns |
| "What made you start looking?" | Address push forces directly in onboarding |
| "What almost stopped you from switching?" | Reduce identified anxieties in the UI |
| "What do you miss from the old tool?" | Either incorporate or explicitly address |
| "When did you know this was the right choice?" | Amplify that moment in the experience |

### Competitive Design Audit Framework

Evaluate competitor interfaces on the same JTBD dimensions:

| Dimension | Your Design | Competitor A | Competitor B |
|-----------|-------------|-------------|-------------|
| Functional (time to complete job) | ___ seconds | ___ seconds | ___ seconds |
| Functional (steps to complete job) | ___ steps | ___ steps | ___ steps |
| Emotional (confidence score 1-5) | /5 | /5 | /5 |
| Social (shareability score 1-5) | /5 | /5 | /5 |
| Anxiety reduction (1-5) | /5 | /5 | /5 |
| Inertia handling (migration ease 1-5) | /5 | /5 | /5 |

---

## 7. JTBD User Flow Design

### Flow Design Process

**Step 1: Map the job steps**
Break the high-level job into atomic sub-jobs:

```
High-level job: "Hire a freelancer for a design project"

Sub-jobs:
1. Define what I need done (clarify scope)
2. Find qualified candidates (search & filter)
3. Evaluate candidates (compare portfolios, reviews, rates)
4. Communicate requirements (brief the selected candidate)
5. Agree on terms (price, timeline, deliverables)
6. Monitor progress (check milestones)
7. Accept deliverables (review & approve)
8. Pay and close (complete transaction)
```

**Step 2: Design a screen for each sub-job**
Each sub-job gets a focused interface. Don't combine multiple sub-jobs on one screen
unless they are genuinely done simultaneously.

**Step 3: Design transitions between sub-jobs**
- Clear progress indicators showing where the user is in the flow
- Ability to go back without losing work
- Smart defaults that carry context forward
- Skip options for sub-jobs that aren't needed

**Step 4: Design the "struggling moment"**
Identify where users are most likely to struggle or abandon, and add:
- Contextual help at decision points
- Social proof near commitment points
- Reduced-friction alternatives (e.g., "Not sure? Try our quiz")
- Save-and-resume for complex flows

### Flow Evaluation Criteria

| Criterion | Question | Score (1-5) |
|-----------|----------|-------------|
| Job completion | Can users complete the entire job without leaving the flow? | /5 |
| Progress clarity | Do users always know where they are and what's next? | /5 |
| Effort proportionality | Is the effort required proportional to the job's value? | /5 |
| Error recovery | Can users recover from mistakes without restarting? | /5 |
| Context preservation | Does the flow preserve context across steps? | /5 |
| Abandonment prevention | Are struggle points addressed with help/alternatives? | /5 |

---

## 8. Outcome-Driven Design Metrics

### Defining Success by Job Completion

Traditional metrics measure feature usage. JTBD metrics measure job completion.

| Traditional Metric | JTBD Metric | Why It's Better |
|-------------------|-------------|-----------------|
| "Users clicked the export button" | "Users successfully shared a report with stakeholders" | Measures the outcome, not the action |
| "Session duration: 12 minutes" | "Job completed in 3 minutes (down from 12)" | Less time = better if the job is done |
| "DAU/MAU ratio: 0.4" | "Jobs completed per user per week: 5" | Measures value delivery, not just opening the app |
| "Feature adoption: 23%" | "Percentage of users who completed their primary job: 78%" | Measures success, not feature awareness |
| "NPS: 45" | "Would you hire this product again for the same job? 92% yes" | Directly measures job satisfaction |

### Outcome-Based Design KPIs

| KPI | Measurement Method | Target |
|-----|-------------------|--------|
| Job completion rate | % of users who start and finish the primary job | > 80% |
| Time-to-value | Time from first visit to first job completion | < 5 minutes |
| Job satisfaction | Post-completion micro-survey (1-5 stars) | > 4.0 |
| Return hiring rate | % of users who complete the job again within 7 days | > 60% |
| Job abandonment points | Funnel analysis showing where users stop | < 20% drop at any step |
| Error recovery rate | % of users who recover from errors vs. abandon | > 70% |

---

## 9. Reducing Switching Costs Through Design

### The Switching Cost Matrix

| Cost Type | Definition | Design Solution |
|-----------|-----------|-----------------|
| Learning cost | Time to learn the new interface | Familiar patterns, contextual help, progressive disclosure |
| Data migration cost | Effort to move existing data | Import wizards, API integrations, manual entry assistance |
| Integration cost | Connecting to existing tools | Pre-built integrations, webhooks, Zapier-style connectors |
| Workflow cost | Adapting existing processes | Customizable workflows, templates matching current process |
| Social cost | Convincing team to switch | Team trial features, admin controls, training resources |
| Emotional cost | Letting go of the familiar | Side-by-side comparison, gradual transition options |

### Design Patterns That Reduce Switching Costs

**1. The Bridge Pattern:**
Design the new interface to feel familiar to users of the top 3 competitors.
Map competitor keyboard shortcuts, use similar terminology, offer "coming from X?" setup flows.

**2. The Import Pattern:**
One-click data import from competitors. Show progress, handle edge cases gracefully,
validate imported data, let users review before committing.

**3. The Gradual Migration Pattern:**
Let users use both old and new tools simultaneously during transition. Sync data between them.
Don't force an all-or-nothing switch.

**4. The Guided Setup Pattern:**
Step-by-step configuration that asks about the user's current workflow and pre-configures
the new tool to match. "How do you currently organize your projects?" -> auto-create matching structure.

---

## 10. Case Studies: JTBD-Driven Design in Practice

### Intercom: Designing the Inbox

**Job:** "When a customer needs help, I want to resolve their issue quickly, so I can
maintain customer satisfaction and handle my workload."

**Design decisions driven by the job:**
- Customer context panel shows account info alongside conversation (no tab switching)
- Saved replies are searchable and insert with a keyboard shortcut (speed)
- Assignment and routing happen in-conversation (don't break context)
- Resolution metrics are visible but not distracting (emotional: competence without pressure)
- Collision detection shows when another agent is viewing the same conversation (prevent duplicate work)

### Basecamp: The Hill Chart

**Job:** "When managing a project, I want to know if we're making progress without
micromanaging my team, so I can intervene only when needed."

**Design decisions driven by the job:**
- Hill chart metaphor: uphill = figuring things out, downhill = executing (conceptual model)
- Team members self-report progress by dragging dots on the hill (reduces manager effort)
- No percentage-complete numbers (those are usually fiction; the hill is more honest)
- Updates are asynchronous (doesn't require meetings or status reports)
- Historical snapshots show trajectory (is progress accelerating or stalling?)

### Stripe: The Payment Form

**Job:** "When a customer is ready to pay, I want to collect their payment information
quickly and securely, so I can complete the sale without losing the customer."

**Design decisions driven by the job:**
- Pre-built payment elements that look native to any site (reduce implementation anxiety)
- Real-time card validation with brand detection (feedback, error prevention)
- Single-line card input that auto-formats (constraint: correct format enforced)
- Minimal fields: just card number, expiry, CVC (reduce effort proportional to job)
- Trust signals built into the UI element (security badges, card brand logos)

---

## 11. JTBD Design Evaluation Framework

### Complete Evaluation Checklist

**Job Clarity:**
- [ ] The primary job-to-be-done is explicitly identified
- [ ] Functional, emotional, and social dimensions are addressed
- [ ] The job is framed from the user's perspective, not the product's

**Force Analysis:**
- [ ] Push forces are acknowledged in the design (why users come here)
- [ ] Pull forces are communicated (what progress looks like)
- [ ] Anxieties are identified and reduced through design
- [ ] Inertia is addressed (migration, familiarity, learning curve)

**Flow Design:**
- [ ] Each sub-job has a focused interface
- [ ] Progress through the job is visible and clear
- [ ] Transitions between sub-jobs preserve context
- [ ] Struggle points have contextual support

**Outcome Alignment:**
- [ ] Success is defined as job completion, not feature usage
- [ ] The interface measures outcomes, not activity
- [ ] Users can verify they've completed their job

**Competitive Position:**
- [ ] The design is evaluated against alternatives (including non-consumption)
- [ ] Switching costs are minimized
- [ ] The design clearly outperforms alternatives on the primary job

### JTBD Alignment Score Card

| Dimension | Question | Score (1-5) |
|-----------|----------|-------------|
| Job fit | Does this interface directly address the user's job? | /5 |
| Functional progress | Does it reduce time/effort to complete the job? | /5 |
| Emotional progress | Does it build confidence and reduce anxiety? | /5 |
| Social progress | Does it help the user look good to others? | /5 |
| Anxiety reduction | Does it address fears about switching/using? | /5 |
| Inertia handling | Does it make adoption easy? | /5 |
| Outcome clarity | Can users tell when the job is done? | /5 |

**Total: /35**

| Range | Assessment |
|-------|-----------|
| 30-35 | Exceptional -- the design deeply serves the job |
| 25-29 | Strong -- clear job alignment with minor gaps |
| 20-24 | Adequate -- serves the job but misses dimensions |
| 15-19 | Weak -- job alignment is superficial |
| < 15 | Failing -- the design is feature-driven, not job-driven |

---

## 12. Sources and Attribution

Primary Sources:
- Christensen, Clayton. "Competing Against Luck." Harper Business, 2016.
- Ulwick, Tony. "Jobs to Be Done: Theory to Practice." IDEA BITE PRESS, 2016.
- Moesta, Bob. "Demand-Side Sales 101." Lioncrest Publishing, 2020.
- Klement, Alan. "When Coffee and Kale Compete." NYC Press, 2018.
- Intercom. "Intercom on Jobs to be Done." 2016.
- Intercom Blog: "Designing Features Using Job Stories" (intercom.com/blog/using-job-stories-design-features-ui-ux/)
- Intercom Blog: "How we accidentally invented Job Stories" (intercom.com/blog/accidentally-invented-job-stories/)
- JTBD.info: "What is Jobs to be Done?" (jtbd.info)
- Jobs-to-be-Done.org: "Unpacking the Progress Making Forces Diagram" (jobstobedone.org)
