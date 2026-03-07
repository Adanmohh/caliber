# Spec Writing Patterns and Anti-Patterns

> Sources: Mountain Goat Software (mountaingoatsoftware.com), Intercom Engineering Blog,
> Atlassian Agile Guides, AltexSoft Engineering Blog, Agile Alliance.
> Shape Up methodology source: https://basecamp.com/shapeup

## Overview

Spec writing is the craft of translating product intent into documents that builders
can act on. This reference covers the spectrum from lightweight job stories to detailed
shaped pitches, with frameworks for acceptance criteria, edge case identification,
and quality assessment.

---

## PART 1: JOB STORIES vs USER STORIES

### User Stories

**Format:** As a [type of user], I want [action/goal], so that [benefit/outcome].

**When to use:**
- The user persona is well-defined and the role matters to the solution
- You are working within a system with distinct user roles (admin, member, guest)
- The team needs to empathize with a specific persona
- The feature is role-specific (only admins can do X)

**Examples:**

```
1. As a team admin, I want to invite new members via email,
   so that I can grow my team without IT support.

2. As a free-tier user, I want to see which features require
   an upgrade, so that I can evaluate whether to subscribe.

3. As a content editor, I want to schedule posts for future
   publication, so that I can batch my work and maintain a
   consistent posting cadence.

4. As an API consumer, I want to receive paginated responses,
   so that I can handle large datasets without timeout errors.

5. As a billing admin, I want to download invoices as PDFs,
   so that I can submit them to our finance department.
```

**Scoring a User Story (INVEST criteria):**

| Criterion     | Question                                         | Pass/Fail |
|---------------|--------------------------------------------------|-----------|
| Independent   | Can this be built without other stories?          |           |
| Negotiable    | Is the solution open to discussion?               |           |
| Valuable      | Does the user get clear value?                    |           |
| Estimable     | Can the team gauge the effort?                    |           |
| Small          | Can this ship in days, not weeks?                |           |
| Testable      | Can you verify it works?                          |           |

Source: Mountain Goat Software, https://www.mountaingoatsoftware.com/agile/user-stories

### Job Stories

**Format:** When [situation/trigger], I want to [motivation/action], so I can [outcome].

**When to use:**
- The situation/context matters more than the user role
- You are designing for Jobs-to-Be-Done
- Multiple user types share the same job
- The trigger condition is critical to the solution design
- You want to avoid the "As a user" generic role trap

**Examples:**

```
1. When I'm running late for a meeting and need to update my team,
   I want to send a quick status message from my phone,
   so I can keep everyone informed without opening my laptop.

2. When a deploy fails in production at 2 AM,
   I want to receive an alert with the failing service and error log link,
   so I can diagnose the issue without logging into multiple dashboards.

3. When I've been away from the project for a week,
   I want to see a summary of what changed and what's blocked,
   so I can re-engage without reading 50 messages.

4. When a customer submits a support ticket about billing,
   I want to see their subscription history inline,
   so I can resolve the issue without switching to the billing system.

5. When my trial is about to expire and I haven't decided yet,
   I want to see what I'd lose access to and what I've used most,
   so I can make an informed upgrade decision.

6. When an important new customer signs up,
   I want to be notified immediately,
   so I can start a conversation with that person while they're engaged.
```

Source: Intercom, https://www.intercom.com/blog/using-job-stories-design-features-ui-ux/

### Decision Matrix: Job Story vs User Story

```
USE A JOB STORY WHEN:                   USE A USER STORY WHEN:
+------------------------------------+  +------------------------------------+
| The trigger/context drives design  |  | The user role drives permissions   |
| Multiple roles share the same job  |  | Role-specific behavior matters     |
| You're exploring motivations       |  | You're specifying known features   |
| The "when" is more interesting     |  | The "who" is more interesting      |
|   than the "who"                   |  |   than the "when"                  |
| You're doing JTBD research        |  | You have well-defined personas     |
+------------------------------------+  +------------------------------------+

USE BOTH WHEN:
- You need the situational depth of a job story AND the role clarity
  of a user story (write the job story first, then derive user stories)
```

**Anti-pattern: The Fake Job Story**
A job story that is just a user story in different clothes:
BAD: "When I am a user, I want to log in, so I can access my account."
This adds no situational context. The "when" is meaningless.

GOOD: "When I return to the app after 30 days of inactivity, I want to
verify my identity quickly, so I can get back to my work without
resetting my password."
The "when" describes a real situation that shapes the solution.

---

## PART 2: ACCEPTANCE CRITERIA

### Given-When-Then Format (Gherkin/BDD)

The most structured acceptance criteria format. Best when criteria need to be
directly translatable to automated tests.

**Structure:**
```
Given [precondition / initial state]
When  [action / event]
Then  [expected result / observable outcome]
And   [additional outcomes] (optional)
```

**Examples:**

```
FEATURE: Password Reset

Scenario 1: Valid email
  Given the user has a registered account with email "user@example.com"
  When  the user submits "user@example.com" on the password reset form
  Then  the system sends a password reset email within 60 seconds
  And   the reset link expires after 24 hours
  And   the user sees a confirmation message: "Check your email for reset instructions"

Scenario 2: Invalid email
  Given no account exists with email "unknown@example.com"
  When  the user submits "unknown@example.com" on the password reset form
  Then  the user sees the same confirmation message (no information leakage)
  And   no email is sent

Scenario 3: Expired link
  Given the user received a password reset email 25 hours ago
  When  the user clicks the reset link
  Then  the user sees a message: "This link has expired. Request a new one."
  And   the system logs the expired attempt

Scenario 4: Reuse prevention
  Given the user has already used a reset link successfully
  When  the user clicks the same reset link again
  Then  the user sees a message: "This link has already been used."
```

Source: Agile Alliance, https://agilealliance.org/glossary/given-when-then/

### Checklist Style Acceptance Criteria

Simpler and faster to write. Best for straightforward features where the
Given-When-Then ceremony adds overhead without value.

**Structure:**
```
- [ ] [Observable outcome or behavior]
- [ ] [Another observable outcome]
- [ ] [Error/edge case handling]
```

**Example:**

```
FEATURE: User Profile Photo Upload

- [ ] User can upload JPEG, PNG, or WebP images up to 5MB
- [ ] Uploaded images are automatically cropped to square (user can adjust)
- [ ] Photos are resized to 256x256 for display and 64x64 for thumbnails
- [ ] Upload progress is shown as a percentage bar
- [ ] If upload fails, user sees an error message with retry option
- [ ] Previous photo is preserved until new upload succeeds
- [ ] User can remove their photo (reverts to default avatar)
- [ ] Photos are served via CDN within 30 seconds of upload
```

### When to Use Which Format

| Format           | Best For                           | Avoid When                     |
|------------------|------------------------------------|--------------------------------|
| Given-When-Then  | Complex state machines, auth flows | Simple CRUD, UI tweaks         |
| Checklist        | Straightforward features, UI specs | Complex conditional logic      |
| Hybrid           | Features with both simple and      | N/A                            |
|                  | complex behaviors                  |                                |

### Acceptance Criteria Quality Rules

```
QUALITY SCORING (rate each criterion 0-2):

+----------------------------------------------------------+
| Dimension        | 0 (Fail)     | 1 (Weak)  | 2 (Strong) |
|------------------|--------------|-----------|------------|
| Specificity      | "Fast"       | "< 5s"    | "< 200ms   |
|                  |              |           |  at p95"   |
| Testability      | "Intuitive"  | "3 clicks"| "Measured  |
|                  |              |           |  in test"  |
| Completeness     | Happy path   | + 1 error | + edge     |
|                  | only         | case      | cases      |
| Independence     | Requires     | Loosely   | Fully      |
|                  | other story  | coupled   | standalone |
| User focus       | "API returns | "Data     | "User sees |
|                  | JSON"        | displays" | updated    |
|                  |              |           | balance"   |
+----------------------------------------------------------+

TARGET: 8+ out of 10 per acceptance criterion.
Anything below 6 needs rewriting.
```

**The 3-7 Rule:** Aim for 3-7 acceptance criteria per story or scope.
- Fewer than 3: The story is probably under-specified or trivially small.
- More than 7: The story is too large. Split it into multiple scopes.

Source: AltexSoft, https://www.altexsoft.com/blog/acceptance-criteria-purposes-formats-and-best-practices/

---

## PART 3: EDGE CASE IDENTIFICATION FRAMEWORK

Edge cases are the scenarios that users hit 5% of the time but cause 50% of the
bugs. Systematic identification prevents post-launch firefighting.

### The PRECISE Framework for Edge Cases

```
P - Permissions    Who lacks access? What happens when they try?
R - Rate/Limits    What if they do it 1000x? What if the data is huge?
E - Empty/Error    What if there's no data? What if the API fails?
C - Concurrency    What if two users do it simultaneously?
I - Input extremes What if the input is blank? Max length? Special chars?
S - State changes  What if the data changes mid-operation?
E - Environment    What about mobile? Slow network? Different timezone?
```

**PRECISE Applied to "Search Feature":**

| Category       | Edge Case                                      | Severity |
|----------------|-------------------------------------------------|----------|
| Permissions    | Guest user searches premium-only content         | Medium   |
| Rate/Limits    | User submits 100 searches per minute             | High     |
| Empty/Error    | Search returns 0 results                         | High     |
| Empty/Error    | Search service is down                           | Critical |
| Concurrency    | Index is being rebuilt during search             | Medium   |
| Input extremes | Query is 500 characters long                     | Low      |
| Input extremes | Query contains SQL injection attempts            | Critical |
| Input extremes | Query is a single character                      | Medium   |
| State changes  | Item is deleted between search and click         | High     |
| Environment    | Search on 2G mobile connection                   | Medium   |
| Environment    | User in timezone where "today" differs from server| Low     |

### Edge Case Severity Scoring

```
SEVERITY = LIKELIHOOD x IMPACT

Likelihood:
  1 = Rare (< 1% of users)
  2 = Occasional (1-10% of users)
  3 = Common (> 10% of users)

Impact:
  1 = Minor (cosmetic issue, user can work around)
  2 = Major (feature broken, user must retry)
  3 = Critical (data loss, security breach, crash)

SEVERITY MATRIX:
              Impact
              1    2    3
Likelihood 1  1    2    3
           2  2    4    6
           3  3    6    9

Score 1-2: Document but deprioritize
Score 3-4: Include in acceptance criteria
Score 6-9: MUST address before shipping
```

---

## PART 4: THE SPEC QUALITY LADDER

Not all specs need the same level of detail. The quality ladder helps you match
spec depth to project risk and size.

```
SPEC QUALITY LADDER

Level 4: IMPLEMENTATION SPEC        Detail: Very High
  Full technical design, API         Risk tolerance: None
  contracts, data models,            Who writes: Senior engineer
  migration plans                    When: After betting, during build
  |
Level 3: SHAPED PITCH               Detail: High
  Problem, appetite, solution        Risk tolerance: Low
  sketch, rabbit holes, no-gos,      Who writes: Shaper (product + tech)
  scope breakdown                    When: Before betting table
  |
Level 2: CONCEPT BRIEF              Detail: Medium
  Problem statement, target user,    Risk tolerance: Medium
  rough appetite, 2-3 solution       Who writes: Product person
  directions                         When: During shaping exploration
  |
Level 1: NAPKIN SKETCH               Detail: Low
  One-sentence problem, gut-feel     Risk tolerance: High
  appetite, rough sketch             Who writes: Anyone
  When: Ideation, hallway convo      When: Initial idea capture
```

**Matching Spec Level to Project Type:**

| Project Type              | Minimum Spec Level | Why                         |
|---------------------------|--------------------|-----------------------------|
| Quick bug fix (< 1 day)   | Level 1            | Low risk, small scope       |
| Small batch (1-2 weeks)   | Level 2            | Needs problem clarity       |
| Big batch (6 weeks)       | Level 3            | Needs de-risking + scopes   |
| Platform migration        | Level 4            | High risk, many dependencies|
| Security-critical feature | Level 4            | Zero tolerance for gaps     |
| Experimental prototype    | Level 1-2          | Learning > specification    |

---

## PART 5: SCOPE BOUNDARY DOCUMENTATION

Clear boundaries prevent scope creep during building. Document boundaries using
the IN/OUT/FUTURE framework:

```
SCOPE BOUNDARY TEMPLATE

+----------------------------------------------------------+
| IN SCOPE (will ship this cycle)                          |
|   - [Capability 1]                                       |
|   - [Capability 2]                                       |
|   - [Capability 3]                                       |
|                                                          |
| OUT OF SCOPE (will NOT ship this cycle)                  |
|   - [Excluded capability] — reason: [why excluded]       |
|   - [Excluded capability] — reason: [appetite constraint]|
|                                                          |
| FUTURE CONSIDERATION (may shape later)                   |
|   - [Idea for next cycle pitch]                          |
|   - [Enhancement worth exploring]                        |
+----------------------------------------------------------+
```

**Example — Notification System:**

```
IN SCOPE:
  - Email notifications for mentions and replies
  - In-app notification badge with count
  - Mark all as read
  - Notification preferences (on/off per type)

OUT OF SCOPE:
  - Push notifications — reason: requires mobile app changes (separate pitch)
  - Notification digest emails — reason: exceeds 6-week appetite
  - Slack/Teams integration — reason: third-party dependency risk
  - Notification snooze — reason: nice-to-have, not core problem

FUTURE CONSIDERATION:
  - Push notifications (next cycle candidate)
  - Digest emails (medium batch, 3-4 weeks)
```

---

## PART 6: TECHNICAL CONSTRAINT DOCUMENTATION

Technical constraints shape the solution space. Document them explicitly so builders
don't waste time exploring impossible paths.

```
TECHNICAL CONSTRAINT TEMPLATE

+----------------------------------------------------------+
| Constraint        | Detail               | Impact          |
|-------------------|-----------------------|-----------------|
| Performance       | Page load < 2s at p95 | Limits query    |
|                   |                       | complexity      |
| Data volume       | 10M+ records in table | Must paginate   |
| Browser support   | Chrome, Firefox,      | No CSS Grid     |
|                   | Safari (last 2 vers.) | subgrid         |
| API rate limits   | 100 req/min per user  | Need caching    |
| Auth model        | OAuth 2.0 + RBAC      | No custom auth  |
| Deployment        | Zero-downtime deploy  | Need migrations |
|                   |                       | strategy        |
| Compliance        | GDPR, SOC 2           | Data retention  |
|                   |                       | rules apply     |
+----------------------------------------------------------+
```

---

## PART 7: ANTI-PATTERNS IN SPEC WRITING

### Anti-Pattern 1: Over-Specifying (The Novel)

**Symptom:** 30-page spec that prescribes every pixel, API endpoint, and database
column before building starts.

**Why it fails:**
- Builders lose autonomy and motivation
- The spec becomes outdated before building starts
- Edge cases discovered during building require spec rewrites
- False sense of completeness hides real unknowns

**Fix:** Use the spec quality ladder. Shape to Level 3 (Shaped Pitch). Let builders
discover Level 4 details during the build.

### Anti-Pattern 2: Under-Specifying (The Napkin)

**Symptom:** "Build a dashboard" with no problem statement, no appetite, no
solution sketch, no boundaries.

**Why it fails:**
- Builders don't know what "done" looks like
- Scope creeps because there are no boundaries
- The team builds what's interesting, not what's needed
- Betting table can't evaluate the pitch

**Fix:** At minimum, define the problem, set the appetite, and list no-gos.

### Anti-Pattern 3: Solution-First Specs

**Symptom:** The spec starts with "Build a React component that..." instead of
stating the problem.

**Why it fails:**
- Skips the "should we build this?" question
- Prevents discovering simpler solutions
- Biases the team toward a specific implementation
- Makes it impossible to evaluate alternatives

**Fix:** Always lead with the problem and the triggering situation. Derive the
solution from the problem, not the other way around.

### Anti-Pattern 4: Spec Theater

**Symptom:** Writing specs to satisfy a process requirement, not to de-risk or
communicate. The spec exists but nobody reads it.

**Why it fails:**
- Wasted effort that could go into shaping or building
- Creates false confidence ("we have a spec!")
- Often produces specs that describe what the team already knows

**Fix:** If the team already understands the work, a Level 1-2 spec is fine.
Write deeper specs only for genuine unknowns and risks.

### Anti-Pattern 5: The Feature List Masquerading as a Spec

**Symptom:** A bullet list of features with no problem context, no appetite, no
boundaries, and no acceptance criteria.

**Why it fails:**
- No way to evaluate whether the list solves the right problem
- No way to prioritize within the list
- No way to know when you're done
- Invites scope creep ("just one more bullet")

**Fix:** Convert each bullet to a scope with a problem statement. Group related
scopes under a single pitch with a stated appetite.

### Anti-Pattern 6: Copy-Paste Competitor Spec

**Symptom:** "Build what [Competitor] has." The spec is a screenshot of another
product.

**Why it fails:**
- You don't know WHY they built it that way
- Their constraints are different from yours
- Their users are different from yours
- You'll build a worse version of something optimized for someone else

**Fix:** Study the competitor to understand the PROBLEM they solved. Then shape
YOUR solution for YOUR users within YOUR appetite.

---

## PART 8: SHAPING AI/LLM FEATURES

### Acceptance Criteria for Non-Deterministic Outputs

AI features produce different outputs each time. Replace exact-match criteria
with evaluation rubrics:

```
INSTEAD OF: "AI returns the correct summary"
USE:        "AI summary scores 4+ on all dimensions in eval rubric"

EVAL RUBRIC (score each 1-5):
- Accuracy: No factual errors vs source material
- Completeness: Covers all key points from source
- Conciseness: No unnecessary repetition or filler
- Tone: Matches specified voice/audience
- Safety: No harmful, biased, or misleading content
PASS THRESHOLD: Average 4.0+, no dimension below 3
```

### Appetite Heuristics for AI Features

| AI Feature Type | Typical Appetite | Rationale |
|----------------|-----------------|-----------|
| Prompt engineering (new prompt, tuning) | Small batch (1-2 weeks) | Low code change, high iteration |
| RAG / retrieval integration | Big batch (6 weeks) | Data pipeline, chunking, retrieval quality |
| Model fine-tuning | Big batch (6 weeks) | Data prep, training, eval infrastructure |
| AI UX (chat, streaming, agent UI) | Big batch (6 weeks) | Complex interaction patterns, error states |
| Eval infrastructure | Small batch (2-3 weeks) | Critical foundation, moderate scope |
| AI feature migration (model swap) | Small batch (1-2 weeks) | If evals exist; Big batch if not |

### AI-Specific Rabbit Holes

| Rabbit Hole | Why It's Dangerous | Mitigation |
|------------|-------------------|------------|
| Hallucination edge cases | Unbounded effort chasing rare failures | Set acceptable error rate, build monitoring instead of perfection |
| Prompt injection | Security risk with no simple fix | Define threat model + scope; use input sanitization + output filtering |
| Latency optimization | Can spiral into infrastructure rebuild | Set latency budget (e.g., p95 < 3s); accept tradeoff or switch model |
| Cost per inference | API costs can explode at scale | Model cost budget per user/month; cheaper model for low-stakes tasks |
| Model deprecation | Provider EOLs your model mid-project | Abstract model layer; build evals that work across models |
| Eval completeness | "Just one more test case" forever | Set eval set size (100-500 cases), ship, expand incrementally |

### AI Feature Shaping Summary Table

| AI Feature Type | Shaping Approach | Key Risks |
|----------------|-----------------|-----------|
| Conversational AI (chatbot) | Shape around user jobs, not model capability; define conversation boundaries | Hallucination, scope creep ("it should answer everything") |
| Content generation | Shape output format + quality rubric; define "good enough" explicitly | Tone drift, factual errors, brand misalignment |
| AI-assisted search | Shape around retrieval quality + fallback UX; define "no result" experience | Poor relevance, latency, index freshness |
| Agent/workflow automation | Shape approval gates + rollback; define human-in-loop points | Unauthorized actions, error cascading, trust erosion |
| AI personalization | Shape recommendation quality + cold-start UX; define diversity constraints | Filter bubbles, privacy concerns, cold-start problem |

---

## PART 9: AI AGENT SPEC WRITING PATTERNS

### How AI Agents Write Specs Differently

| Human Shaper                         | AI Agent Shaper                        |
|--------------------------------------|----------------------------------------|
| Relies on intuition for risk         | Systematically scans for risk factors  |
| Draws fat-marker sketches by hand    | Generates ASCII/text-based sketches    |
| Holds context in memory              | Documents all context explicitly       |
| May skip edge cases that seem obvious| Applies PRECISE framework exhaustively |
| Writes 1 solution sketch             | Generates 2-3 appetite-appropriate     |
|                                      | solution variants                      |
| Knows organizational politics        | Needs context about team dynamics      |
| Can read the room at betting table   | Presents structured trade-off analysis |

### AI Agent Spec Writing Workflow

```
STEP 1: PROBLEM ANALYSIS
  - Search web for similar products and how they solve this
  - Analyze codebase for existing patterns and constraints
  - Review available user feedback, support tickets, analytics
  - Synthesize into a problem statement with evidence

STEP 2: APPETITE VALIDATION
  - Compare to similar past projects (if data available)
  - Assess technical complexity via codebase analysis
  - Flag if requested appetite seems mismatched to problem scope
  - Suggest appetite adjustment with reasoning

STEP 3: SOLUTION SKETCHING
  - Generate 2-3 solution variants at fat-marker level
  - Score each variant on: complexity, user value, technical risk
  - Present trade-offs between variants
  - Recommend one variant with reasoning

STEP 4: DE-RISKING
  - Apply PRECISE framework to identify edge cases
  - Scan codebase for integration risks
  - Search for known issues with proposed technical approaches
  - Generate rabbit hole list with mitigation strategies

STEP 5: PITCH ASSEMBLY
  - Compile all five pitch ingredients
  - Cross-check pitch against appetite (flag overruns)
  - Generate scope breakdown with hill chart positions
  - Produce acceptance criteria for each scope
  - Output in structured template format
```

### Quality Gate: Spec Review Checklist

Before an AI agent considers a spec complete, it should pass these gates:

```
SPEC COMPLETENESS CHECKLIST

Problem Definition:
  - [ ] Problem is stated from user's perspective
  - [ ] Triggering situation is described
  - [ ] Evidence supports the problem (data, quotes, tickets)
  - [ ] Problem is NOT a disguised solution

Appetite:
  - [ ] Appetite level is explicitly stated (small/big batch)
  - [ ] Appetite is justified (why this amount of time?)
  - [ ] Solution fits within the appetite

Solution:
  - [ ] Solution is at fat-marker abstraction level
  - [ ] Solution addresses the WHOLE problem at a basic level
  - [ ] Solution does NOT prescribe implementation details
  - [ ] At least one breadboard or fat-marker sketch is included

Boundaries:
  - [ ] No-gos are explicitly listed
  - [ ] IN/OUT/FUTURE scope is documented
  - [ ] Each no-go has a reason

Risks:
  - [ ] Rabbit holes are identified
  - [ ] Each rabbit hole has a mitigation strategy
  - [ ] PRECISE framework was applied for edge cases
  - [ ] Technical constraints are documented

Acceptance Criteria:
  - [ ] 3-7 criteria per scope
  - [ ] Happy path covered
  - [ ] At least one error scenario covered
  - [ ] At least one edge case covered
  - [ ] All criteria are testable and specific

Scopes:
  - [ ] Work is broken into vertical slices
  - [ ] Each scope is independently demonstrable
  - [ ] Each scope has a clear name
  - [ ] Hill chart positions are assigned
```
