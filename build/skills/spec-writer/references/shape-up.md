# Shape Up Methodology Reference

> Source: "Shape Up: Stop Running in Circles and Ship Work that Matters" by Ryan Singer,
> Basecamp (2019). https://basecamp.com/shapeup
> Additional sources cited inline throughout.

## Overview

Shape Up is a product development methodology created at Basecamp (formerly 37signals)
by Ryan Singer. It replaces the continuous backlog treadmill with fixed-time, variable-scope
cycles. Teams ship meaningful work every six weeks by shaping projects before betting on
them, then building with full autonomy.

```
+------------------------------------------------------------------+
|                    THE SHAPE UP CYCLE                             |
|                                                                  |
|  SHAPING (parallel)    BETTING       BUILDING        COOL-DOWN   |
|  +-----------------+  +--------+  +---------------+  +--------+ |
|  | Set appetite    |  | Pitch  |  | Scopes        |  | Bugs   | |
|  | Sketch solution |->| Review |->| Hill charts   |->| Polish | |
|  | De-risk         |  | Bet    |  | Ship          |  | Shape  | |
|  | Write pitch     |  | Commit |  | Circuit break |  | next   | |
|  +-----------------+  +--------+  +---------------+  +--------+ |
|                                                                  |
|  Weeks: ongoing         ~1 day      6 weeks            2 weeks   |
+------------------------------------------------------------------+
```

Shape Up differs from Scrum/Agile in fundamental ways:

| Dimension          | Scrum/Agile              | Shape Up                    |
|--------------------|--------------------------|------------------------------|
| Time unit          | 1-2 week sprints         | 6-week cycles                |
| Scope              | Fixed scope, flex time   | Fixed time, flex scope       |
| Backlog            | Infinite, groomed        | No backlog; pitch per cycle  |
| Estimation         | Story points             | Appetite (time budget)       |
| Daily standups     | Required                 | None                         |
| Project manager    | Scrum Master             | No PM; team self-manages     |
| Work assignment    | Top-down via backlog     | Team discovers tasks         |
| Deadline behavior  | Extend or cut stories    | Circuit breaker kills project|

---

## PART 1: SHAPING

Shaping is the pre-work that happens before a project is ready to bet on. It is
performed by a small senior group — typically one or two people who combine product
thinking with technical literacy. The output is a "pitch" that is concrete enough
to act on but abstract enough to leave room for builder creativity.

Source: https://basecamp.com/shapeup/1.1-chapter-02

### Step 1: Set the Appetite

Appetite is the inverse of estimation. Instead of asking "how long will this take?",
you ask "how much time is this worth?" Appetite constrains the solution space.

```
APPETITE LEVELS
+-------------------------------------------------------------+
| Level         | Duration    | Team Size  | Use When          |
|---------------|-------------|------------|-------------------|
| Small Batch   | 1-2 weeks   | 1-2 people | Bug fixes, tweaks |
| Medium Batch  | 3-4 weeks   | 2-3 people | Focused features  |
| Big Batch     | 6 weeks     | 2-3 people | Full features     |
+-------------------------------------------------------------+

Multiple small batches can run within a single 6-week cycle.
A big batch consumes the entire cycle for one team.
```

**Appetite Decision Tree:**

```
Is this problem worth solving at all?
  |
  +-- NO --> Stop. Don't shape it.
  |
  +-- YES --> How much time is it worth?
                |
                +-- "A few days" --> Small batch (1-2 weeks)
                |
                +-- "A few weeks" --> Medium batch (3-4 weeks)
                |
                +-- "The whole cycle" --> Big batch (6 weeks)
                |
                +-- "More than 6 weeks" --> STOP. Narrow the problem.
                      The solution is too big. Cut scope or split
                      into multiple pitches.
```

Key principle: If you cannot fit the solution within the appetite, the problem
definition is wrong. Narrow the problem until it fits.

**Example — Basecamp To-Do Groups:**
Basecamp users wanted to group related to-do items. The team set a 6-week appetite.
They could have built a full folder hierarchy with drag-and-drop, nesting, and
permissions. Instead, they narrowed to simple "groups" — a heading that visually
separates to-dos into sections within a single list. The narrowed problem fit the
appetite. The full hierarchy would have taken months.

Source: https://basecamp.com/shapeup/1.1-chapter-02

### Step 2: Narrow the Problem

Before sketching solutions, deeply understand the problem:

1. **Identify the triggering situation.** What is the user doing when they hit this
   pain point? What context are they in?
2. **Separate the "must solve" from the "nice to have."** What is the smallest
   version that removes the core pain?
3. **Look for existing workarounds.** If users are already hacking a solution, that
   tells you what really matters to them.
4. **Talk to real users or analyze support tickets.** Ground the problem in reality,
   not assumptions.

**Anti-pattern: "Redesign the whole thing."** This is not a problem statement. It is
a solution disguised as a problem. Always articulate the specific pain.

### Step 3: Sketch the Solution — Fat Marker Sketches and Breadboarding

Shaped work uses two abstraction tools to stay at the right level of detail:

**Fat Marker Sketches:**
Visual concepts drawn with intentionally broad strokes. Use them when the spatial
arrangement of elements on screen is fundamental to the solution. They show regions,
flows, and key affordances — NOT pixel-perfect layouts.

```
FAT MARKER SKETCH EXAMPLE — Invoice Autopay Toggle

+--------------------------------------+
|  Invoice #4102                       |
|  +-----------+   +-----------+       |
|  |  Details  |   |  Autopay  |       |
|  |  section  |   |  [toggle] |       |
|  |           |   |  ON / OFF |       |
|  +-----------+   +-----------+       |
|                                      |
|  [ line items here ]                 |
|                                      |
|  +-----------------------------+     |
|  |  Payment section            |     |
|  |  (changes based on toggle)  |     |
|  +-----------------------------+     |
+--------------------------------------+

This sketch shows WHERE the toggle goes and WHAT changes.
It does NOT show colors, fonts, exact spacing, or hover states.
```

**Breadboarding:**
A written flowchart showing places (screens), affordances (buttons, fields), and
connection lines (navigation flows). Use when the interaction flow matters more
than the visual layout.

```
BREADBOARD EXAMPLE — Password Reset Flow

[Login Screen]
  -- "Forgot password?" link -->
[Reset Request]
  -- email field, submit button -->
[Confirmation Page]
  -- "Check your email" message

[Email Link] -->
[New Password Form]
  -- password field, confirm field, submit -->
[Success Page]
  -- "Password updated" + login link
```

**What NOT to do:**
- Do not create wireframes. They are too concrete and constrain builders.
- Do not create high-fidelity mockups. That belongs to the building phase.
- Do not specify database schemas, API contracts, or implementation details.
  Those are builder decisions.

Source: https://basecamp.com/shapeup/1.3-chapter-04

### Step 4: De-risk — Identify Rabbit Holes

A rabbit hole is any part of the project that looks simple on the surface but could
consume disproportionate time. De-risking means finding and addressing these BEFORE
betting.

**Rabbit Hole Identification Framework:**

```
For each element in your solution sketch, ask:
  1. Has anyone built this before? (If no --> HIGH RISK)
  2. Does this require a new technical capability? (If yes --> HIGH RISK)
  3. Are there dependencies on external systems? (If yes --> MEDIUM RISK)
  4. Is the design pattern well-understood? (If no --> MEDIUM RISK)
  5. Could this interact badly with existing features? (If yes --> MEDIUM RISK)

RISK SCORING:
  0 HIGH flags = Green  --> Ready to bet
  1 HIGH flag  = Yellow --> Needs mitigation strategy in the pitch
  2+ HIGH flags = Red   --> Not ready. Shape more or cut scope.
```

**De-risking Strategies:**

| Strategy              | When to Use                                    |
|-----------------------|------------------------------------------------|
| Cut the feature       | The rabbit hole is not essential to the pitch   |
| Timebox exploration   | Unknown is learnable in 1-2 days of spiking     |
| Specify the boundary  | Declare what you will NOT build (no-go)          |
| Prototype first       | Technical feasibility is genuinely unknown       |
| Consult an expert     | Domain-specific unknowns (payments, auth, etc.)  |

**Example — Basecamp Payment Form (Rabbit Holes):**
When shaping a new payment form feature, the team identified that supporting custom
domains for payment URLs could be a massive rabbit hole. They declared "no custom
domains in v1" as a no-go, patching the rabbit hole with a single line in the pitch.

Similarly, they decided upfront that WYSIWYG editing of the form layout was a no-go.
Users would customize via a separate settings page with a logo upload and header text
field. This prevented a multi-week detour into drag-and-drop form building.

Source: https://basecamp.com/shapeup/1.4-chapter-05

### Step 5: Write the Pitch

The pitch is the shaped work's deliverable. It is the document that goes to the
betting table. Every pitch has five ingredients:

```
PITCH STRUCTURE
+----------------------------------------------------------+
| 1. PROBLEM          | What is the pain? What triggers it? |
|                     | Include real user quotes or data.   |
|---------------------|-------------------------------------|
| 2. APPETITE         | How much time is this worth?        |
|                     | Small batch / Big batch / 6 weeks   |
|---------------------|-------------------------------------|
| 3. SOLUTION         | Fat marker sketches + breadboards   |
|                     | Concrete enough to build from,      |
|                     | abstract enough for creativity.     |
|---------------------|-------------------------------------|
| 4. RABBIT HOLES     | Known risks and mitigation plans.   |
|                     | Technical unknowns called out.      |
|---------------------|-------------------------------------|
| 5. NO-GOS           | What we are explicitly NOT building. |
|                     | Scope boundaries and exclusions.    |
+----------------------------------------------------------+
```

**Critical rule:** Always present problem AND solution together. Never pitch a
solution without the problem it solves. Never pitch a problem without a shaped
solution.

Source: https://basecamp.com/shapeup/1.5-chapter-06

---

## PART 2: BETTING

The betting table replaces backlog grooming and sprint planning. It is a meeting
where stakeholders review shaped pitches and decide which ones to bet on for the
next cycle.

Source: https://basecamp.com/shapeup/2.2-chapter-08

### The Betting Table

**Who attends:** CEO/founder, CTO, senior product person, and sometimes a senior
designer. The group is deliberately small — typically 2-5 people.

**When it happens:** During the last days of cool-down, before the next cycle starts.

**What they do:** Review pitches. For each pitch, they either:
- **Bet on it** — commit a team to build it in the next cycle
- **Table it** — interesting but not now; the pitch can be re-proposed later
- **Kill it** — this is not worth doing; the pitch is discarded

**No backlog.** Pitches that are tabled are not added to a backlog. If a problem
matters enough, it will come back naturally. If it doesn't come back, it wasn't
important enough. This eliminates the psychological weight of an ever-growing
backlog.

### Circuit Breakers

The circuit breaker is Shape Up's most powerful risk management tool. It enforces
a hard rule:

```
+----------------------------------------------------------+
|                    CIRCUIT BREAKER RULE                   |
|                                                          |
|  If a project does not ship within its cycle,            |
|  it is CANCELLED by default.                             |
|                                                          |
|  To continue, someone must write a NEW pitch and         |
|  re-bet at the NEXT betting table.                       |
|                                                          |
|  There is no "just two more weeks" or "almost done."     |
+----------------------------------------------------------+
```

**Why circuit breakers work:**
1. They prevent sunk cost thinking ("we already spent 4 weeks, we can't stop now")
2. They force honest shaping — if a project can't ship in 6 weeks, it wasn't
   shaped well enough
3. They protect the team's future cycles from being consumed by zombie projects
4. They create accountability for the shaping quality

**Example — store2be:** The platform for booking promotional spaces adopted Shape Up
after struggling with Scrum. When a feature for venue filtering didn't ship within
the 6-week cycle, the circuit breaker fired. The team re-evaluated and realized the
original shaping had underestimated the complexity of geospatial queries. The
re-shaped pitch scoped down to a simpler radius-based filter that shipped in the
next cycle.

Source: https://basecamp.com/shapeup/2.3-chapter-09

### Cool-Down Periods

Between every 6-week cycle, there is a 2-week cool-down:

```
COOL-DOWN ACTIVITIES
+----------------------------------------------------------+
| Builders                  | Shapers                       |
|---------------------------|-------------------------------|
| Fix bugs                  | Shape pitches for next cycle   |
| Address tech debt         | Research problems              |
| Explore new ideas         | Write pitches                  |
| Personal projects         | De-risk technical unknowns     |
| Documentation             | Review user feedback           |
+----------------------------------------------------------+
```

Cool-down is NOT free time. It is unstructured time where individuals choose what
to work on. This prevents burnout and allows for the serendipitous improvements
that scheduled sprints never leave room for.

### Saying No to Scope Creep

During the betting table, new ideas and "what about..." suggestions will emerge.
The discipline is:

1. **If it doesn't have a pitch, it doesn't get discussed.** Ideas must be shaped
   before they can be bet on.
2. **If it doesn't fit the appetite, it doesn't get bet on.** No "stretching" a
   6-week cycle to 8 weeks.
3. **If it requires another team's cycle, it's too big.** Split and re-shape.

---

## PART 3: BUILDING

Once a project is bet on, a small team (typically 1 designer + 1-2 programmers)
gets full autonomy for 6 weeks. No standups. No task assignments. No interference.

Source: https://basecamp.com/shapeup/3.1-chapter-10

### Scopes: Organizing Work Into Meaningful Pieces

Scopes replace tasks, stories, and tickets. A scope is a slice of the project that
can be built, integrated, and finished independently.

```
SCOPE vs TASK COMPARISON

TASKS (traditional):                 SCOPES (Shape Up):
  [ ] Design login form               Scope: "Authentication"
  [ ] Build login API                    - Login form + API
  [ ] Write login tests                  - Tests
  [ ] Design signup form                 - Error handling
  [ ] Build signup API
  [ ] Write signup tests              Scope: "Onboarding"
  [ ] Design onboarding flow             - Signup flow + API
  [ ] Build onboarding steps             - Welcome sequence
  [ ] Write onboarding tests             - Tests

Tasks are horizontal slices.         Scopes are vertical slices.
Tasks create dependencies.           Scopes can ship independently.
Tasks hide progress.                 Scopes show real progress.
```

**Scope Discovery Rules:**

1. Scopes emerge from the work, not from planning. In the first few days, the team
   will discover the natural boundaries.
2. Each scope should be completable in a few days, not weeks.
3. A scope must be demonstrable — you can show it working to someone.
4. Scopes should have clear names that become the team's shared vocabulary.
   Examples: "Locate," "Reply," "Notify," "Import."
5. If a scope keeps growing, split it. If two scopes are always worked on together,
   merge them.

### Hill Charts: Visualizing Progress

The hill chart is Shape Up's progress visualization. It replaces percentage-complete
and burndown charts.

```
HILL CHART

          Figuring            Executing
          it out              (known work)
            ^                    |
           / \                   |
          /   \                  v
         /     \
        /       \
  -----/         \-----------
  0%              100%

  Uphill = uncertainty,       Downhill = execution,
  research, exploration       known steps to completion
```

**How to read hill chart positions:**

| Position          | Meaning                                         |
|-------------------|-------------------------------------------------|
| Bottom-left       | Haven't started; still fully unknown             |
| Mid-uphill        | Exploring approaches; some things figured out    |
| Top of hill       | Approach is clear; all unknowns resolved         |
| Mid-downhill      | Executing known work; making steady progress     |
| Bottom-right      | Done or nearly done                              |
| STUCK (no movement)| Red flag — team may need help or scope cut      |

**Hill Chart Usage Pattern:**

```
Week 1: All scopes at bottom-left. Team is exploring.
Week 2: Scariest scopes start moving uphill. Known scopes move faster.
Week 3: Critical scopes should be over the hill. If not, raise alarm.
Week 4: Most scopes downhill. Scope hammering begins on stragglers.
Week 5: All scopes downhill. Focus on integration and polish.
Week 6: Everything at bottom-right. Ship.

RED FLAGS:
- Week 3+: Any scope still at bottom-left
- Week 4+: Any scope still uphill
- Any scope that hasn't moved in 2+ updates
```

Source: https://basecamp.com/shapeup/3.4-chapter-13

### Scope Hammering: Cutting to Ship

When the deadline approaches and some scopes are behind, the team practices scope
hammering — aggressively cutting nice-to-haves to protect must-haves.

```
SCOPE HAMMERING DECISION TREE

Is this scope essential to solve the core problem?
  |
  +-- YES --> Is it over the hill (downhill)?
  |             |
  |             +-- YES --> Finish it.
  |             +-- NO  --> Can you simplify the approach?
  |                           |
  |                           +-- YES --> Simplify and finish.
  |                           +-- NO  --> Escalate. Consider circuit breaker.
  |
  +-- NO --> Mark as "nice-to-have."
               |
               +-- Is there time left after must-haves? --> Do it.
               +-- No time left? --> Cut it. Ship without it.
```

**Example — Fontawesome:** After adopting Shape Up, the Fontawesome team found that
the six-week cycles allowed them to achieve more than Agile's shorter sprints. When
building their icon search improvements, they scope-hammered fuzzy matching (nice-to-have)
to protect exact-match search (must-have), shipping a solid core experience on time.

Source: https://www.process.st/shape-up-process/

### Getting Pieces Done: Vertical Integration

Teams build vertically — completing one user-facing piece end-to-end before starting
the next. This contrasts with horizontal layering (all backend first, then all
frontend).

```
VERTICAL vs HORIZONTAL

HORIZONTAL (anti-pattern):        VERTICAL (Shape Up):
Week 1-2: All backend             Week 1: "Locate" scope end-to-end
Week 3-4: All frontend            Week 2: "Reply" scope end-to-end
Week 5-6: Integration + bugs      Week 3: "Notify" scope end-to-end
                                   Week 4-6: Polish + remaining scopes

Horizontal hides risk until        Vertical exposes risk early and
integration (weeks 5-6).           shows real progress every week.
```

### QA Within the Cycle

Testing happens within the 6-week cycle, not after it:

1. Builders test their own scopes as they finish each one
2. QA reviews completed scopes in the last 1-2 weeks while builders finish remaining work
3. QA finds edge cases; builders decide what to fix vs. what to cut (scope hammering)
4. No "QA sprint" after the building cycle

---

## PART 4: AI AGENT SHAPING PATTERNS

When an AI agent performs shaping work, it operates differently from a human shaper:

### Research Phase (AI Advantage)
- Scan entire codebases to identify technical constraints in minutes
- Search the web for prior art and competing implementations
- Analyze support tickets and user feedback at scale to identify problem patterns
- Cross-reference multiple data sources to ground problem definitions

### Sketch Phase (AI Advantage)
- Generate multiple fat-marker-level solution sketches rapidly
- Produce breadboard flows as text-based diagrams
- Identify interaction patterns from similar products via web research
- Enumerate edge cases systematically rather than relying on intuition

### De-risking Phase (AI Advantage)
- Audit the codebase for rabbit holes: unfamiliar libraries, complex integrations,
  undocumented APIs, performance bottlenecks
- Search for known issues with proposed technical approaches
- Generate risk matrices with probability and impact scoring
- Identify dependencies on external systems by scanning configuration and imports

### Pitch Writing Phase (AI Advantage)
- Structure pitches consistently using the five-ingredient template
- Cross-reference the pitch against the appetite to flag scope overruns
- Generate multiple appetite-appropriate solution variants
- Produce scope breakdowns with hill chart starting positions

### Limitations (AI Awareness)
- Cannot observe users directly; relies on reported data and research
- May miss organizational context and political dynamics
- Solution sketches benefit from human review for product judgment
- Technical risk assessment improves when combined with domain expert review

---

## PART 5: REAL-WORLD EXAMPLES AND CASE STUDIES

### Example 1: Basecamp — To-Do Groups
**Problem:** Users wanted to organize to-do items into categories within a list.
**Appetite:** 6 weeks (big batch).
**Shaped solution:** Simple group headings within a to-do list. Not folders. Not tags.
Not nested hierarchies.
**Rabbit holes identified:** Drag-and-drop reordering across groups, permission
inheritance, group templates.
**No-gos:** No nesting. No cross-list groups. No group-level permissions.
**Result:** Shipped in 6 weeks. Solved 80% of the organizing need with 20% of the
complexity.

### Example 2: Basecamp — Automatic Check-ins
**Problem:** Managers wanted regular status updates without scheduling meetings.
**Appetite:** 6 weeks.
**Shaped solution:** Recurring questions posted to a group, with responses threaded.
**Rabbit holes:** Timezone handling, notification fatigue, response formatting.
**No-gos:** No real-time chat. No video. No custom schedules beyond daily/weekly.
**Result:** Shipped on time. Became one of Basecamp's most-used features.

### Example 3: Opal — Workflow Improvements
**Problem:** Content teams needed to track approval status across multiple channels.
**Appetite:** 6 weeks.
**Shaped solution:** Status badges on content cards with a filterable dashboard.
**Scope hammering:** Cut per-channel customization; shipped with global status types.
**Result:** Shipped within cycle. Per-channel customization was pitched separately later.

Source: https://workwithopal.com/about/blog/why-opal-adopted-the-shape-up-methodology/

### Example 4: Process Street — Checklist Automation
**Problem:** Users needed conditional logic in checklists (show/hide steps based on
previous answers).
**Appetite:** 6 weeks.
**Shaped solution:** Simple if/then rules on individual checklist items.
**Rabbit holes:** Complex boolean logic, nested conditions, performance with large
checklists.
**No-gos:** No nested conditions (only single-level if/then). No cross-checklist
references.
**Result:** Shipped on time. Nested conditions became a separate future pitch.

### Example 5: Hey Email — Screener
**Problem:** New email contacts needed to be approved before hitting the inbox.
**Appetite:** 6 weeks.
**Shaped solution:** First-time senders go to a "Screener" where the user approves
or blocks them. Approved senders go to Imbox; blocked senders are silently filtered.
**Rabbit holes:** What happens to existing email when a sender is blocked mid-thread?
Domain-level vs address-level blocking. Integration with email forwarding.
**No-gos:** No ML-based auto-screening. No allowlist import from other email clients.
**Result:** Shipped as a core feature of Hey's launch.

---

## QUICK REFERENCE: SHAPE UP GLOSSARY

| Term              | Definition                                                |
|-------------------|-----------------------------------------------------------|
| Appetite          | Time budget set before scoping; constrains the solution   |
| Betting table     | Meeting to decide which pitches get built next cycle      |
| Breadboard        | Text-based flow diagram showing places and affordances    |
| Circuit breaker   | Auto-cancel rule for projects that don't ship on time     |
| Cool-down         | 2-week unstructured period between cycles                 |
| Cycle             | 6-week fixed period for building bet-on work              |
| Fat marker sketch | Rough visual concept showing layout without detail        |
| Hill chart        | Progress visualization: uphill=unknown, downhill=known    |
| No-go             | Explicitly excluded functionality or scope                |
| Pitch             | Shaped proposal with problem, appetite, solution, risks   |
| Rabbit hole       | Deceptively complex sub-problem that could derail a project|
| Scope             | Independent, vertical slice of a project                  |
| Scope hammering   | Aggressively cutting nice-to-haves to meet the deadline   |
| Shaping           | Pre-work to define a project at the right abstraction level|
| Small batch       | 1-2 week project; multiple can fit in one cycle           |
| Big batch         | 6-week project consuming a full cycle for one team        |
| Uphill            | The figuring-out phase of work (unknowns, exploration)    |
| Downhill          | The execution phase of work (known steps, implementation) |

---

## SHAPE UP CHECKLIST FOR AI AGENTS

Before presenting a pitch to stakeholders, verify:

- [ ] Problem is grounded in real user pain (not assumed need)
- [ ] Appetite is explicitly stated and justified
- [ ] Solution uses fat-marker abstraction (not wireframes)
- [ ] Solution addresses the whole problem at a basic level (breadth over depth)
- [ ] Rabbit holes are identified with mitigation strategies
- [ ] No-gos are clearly listed with reasoning
- [ ] Pitch fits the stated appetite (not secretly a 12-week project)
- [ ] Scopes are outlined with hill chart starting positions
- [ ] No backlog items smuggled in as "requirements"
- [ ] Circuit breaker implications are acknowledged
- [ ] The pitch can be understood in 5 minutes by a betting table participant
