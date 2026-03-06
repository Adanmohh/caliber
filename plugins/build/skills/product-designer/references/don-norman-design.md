# Don Norman's Design Principles -- Complete Reference

Source: "The Design of Everyday Things" by Don Norman (Revised & Expanded Edition, 2013)

This reference codifies Norman's design psychology for direct application when generating
production-ready interfaces. Every principle includes a definition, digital application rules,
scoring criteria, failure modes, and code-level implications.

---

## 1. The Six Fundamental Design Principles

Norman identifies six principles that determine whether a design is usable. These are not
suggestions -- they are the physics of human-centered design.

### 1.1 Affordances

**Definition:** An affordance is a relationship between the properties of an object and the
capabilities of the agent that determine just how the object could possibly be used. A chair
affords sitting. A button affords pressing. Affordances exist whether or not they are visible.

**Digital Application:**
- A clickable element must behave like a clickable element (cursor change, visual depth, hover state)
- A text input must look like a container that accepts text (border, background differentiation, placeholder)
- A draggable element must signal its draggability (grab cursor, drag handle, subtle shadow suggesting liftability)
- A scrollable container must indicate overflow content exists (scroll shadows, partial content visibility)

**Scoring Criteria (1-5):**

| Score | Description |
|-------|-------------|
| 1 | Interactive elements are indistinguishable from static content |
| 2 | Some elements have affordances, but inconsistently applied |
| 3 | Most interactive elements have visible affordances |
| 4 | All interactive elements have clear, consistent affordances |
| 5 | Affordances are so clear that zero-instruction use is possible |

**Failure Modes:**
- Flat design that removes all depth cues from buttons (the "ghost button" problem)
- Links that look like plain text (no color, no underline, no cursor change)
- Clickable cards where only part of the card is actually clickable
- Touch targets that are visually large but have small hit areas
- Disabled elements that look identical to enabled ones

**Code Implications:**
```css
/* Affordance: buttons must look pressable */
.btn {
  border-radius: 6px;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.08);
  cursor: pointer;
  transition: transform 0.1s ease, box-shadow 0.1s ease;
}
.btn:hover { transform: translateY(-1px); box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
.btn:active { transform: translateY(0); box-shadow: 0 1px 2px rgba(0,0,0,0.08); }
.btn:disabled { opacity: 0.5; cursor: not-allowed; transform: none; }
```

### 1.2 Signifiers

**Definition:** Signifiers communicate where the action should take place. While affordances
determine what actions are possible, signifiers communicate where and how to perform the action.
Signifiers are more important than affordances in practice because they are what the user
actually perceives.

**Critical Distinction -- Affordances vs. Signifiers:**
This is the most commonly confused pair in design. An affordance is a capability that exists
regardless of perception. A signifier is a perceivable indicator of that capability.

| Concept | Example | Key Difference |
|---------|---------|----------------|
| Affordance | A door can be pushed open | The physical relationship -- the door CAN be pushed |
| Signifier | A flat plate on the door | The visual cue that TELLS you to push |
| Anti-pattern | A door handle on a push door | A signifier that communicates the wrong affordance |

**Digital Application:**
- Icons WITH labels (icons alone are ambiguous -- the hamburger menu icon is not universally understood)
- Underlined blue text signals "this is a link" (cultural signifier)
- A pencil icon on a field signals "this is editable"
- A "+" button signals "add new item"
- Placeholder text in an input signals "type here"
- A chevron (>) on a list item signals "tap to see more"

**Scoring Criteria (1-5):**

| Score | Description |
|-------|-------------|
| 1 | Users must guess how to interact with the interface |
| 2 | Some signifiers present but many actions are hidden |
| 3 | Primary actions have clear signifiers; secondary actions less so |
| 4 | All actions have appropriate signifiers with consistent visual language |
| 5 | Signifiers form a complete, learnable visual vocabulary |

**Failure Modes:**
- Relying on icon-only navigation without labels
- Swipe gestures with no visual hint of swipeability
- Hidden menus accessible only via long-press or right-click
- Hover-dependent interactions on touch devices (hover is not available)
- Using identical visual treatment for clickable and non-clickable elements

### 1.3 Mapping

**Definition:** Mapping is the relationship between two sets of things -- the controls and
their results. The best mapping is "natural mapping" where the relationship between controls
and the things they affect is obvious.

**The Stove Problem:** Four burners in a square, four controls in a line. Which control
maps to which burner? Natural mapping would arrange controls in the same spatial pattern
as the burners. This is the canonical example.

**Digital Application:**
- Left/right arrows that match left/right movement in a carousel
- Slider controls where left = less and right = more (matching reading direction)
- Volume controls where up = louder (matching spatial metaphor)
- Tab order that matches visual layout (left-to-right, top-to-bottom)
- Form fields ordered to match the mental model of the task (name before address before payment)
- Settings grouped by the thing they affect, not by technical category

**Mapping Quality Hierarchy:**

| Level | Type | Example |
|-------|------|---------|
| Best | Direct manipulation | Drag to reorder items in a list |
| Good | Spatial correspondence | Controls positioned near what they control |
| Acceptable | Grouping | Controls grouped with related elements via visual containers |
| Poor | Labels only | Controls connected to targets only by text labels |
| Worst | Arbitrary | Controls have no perceivable relationship to targets |

**Scoring Criteria (1-5):**

| Score | Description |
|-------|-------------|
| 1 | Control-to-effect relationships are arbitrary or confusing |
| 2 | Some natural mappings exist but many controls feel disconnected |
| 3 | Most controls have understandable mappings |
| 4 | Spatial layouts consistently match the domain model |
| 5 | Controls feel like direct extensions of the things they affect |

**Failure Modes:**
- Settings pages organized by engineering subsystem rather than user task
- Form fields whose tab order doesn't match visual order
- Toggle switches where on/off direction is ambiguous
- Navigation menus that don't reflect the site's content hierarchy
- Pagination controls at the top of a list but results appear below

### 1.4 Feedback

**Definition:** Full and continuous information about the results of actions and the current
state of the system. Without feedback, the user is left wondering: "Did it work? What happened?
What state am I in?"

**The Feedback Timing Spectrum:**

| Timing | Threshold | Application |
|--------|-----------|-------------|
| Immediate | < 100ms | Button press visual response, input character echo |
| Fast | 100ms - 1s | Form validation, toggle state change, hover effects |
| Delayed | 1s - 10s | API responses, file uploads, search results (show spinner) |
| Long | > 10s | Complex operations (show progress bar with percentage) |

**Digital Application:**
- Button press: visual depression, color change, or ripple effect within 100ms
- Form submission: loading state on the button, then success/error message
- Drag and drop: ghost element follows cursor, drop zones highlight
- Navigation: active state on current menu item, breadcrumb trail
- Data changes: optimistic UI updates with rollback on failure
- Background operations: progress bars, not spinners (spinners give no progress info)

**Scoring Criteria (1-5):**

| Score | Description |
|-------|-------------|
| 1 | Actions produce no visible response; user repeatedly clicks/taps |
| 2 | Some feedback exists but is delayed, subtle, or inconsistent |
| 3 | Primary actions give feedback; secondary actions sometimes don't |
| 4 | All actions produce appropriate, timely feedback |
| 5 | Feedback is immediate, informative, and proportional to action importance |

**Failure Modes:**
- Submit buttons with no loading state (user clicks repeatedly)
- Success messages that appear far from the action that triggered them
- Error messages that disappear before the user reads them
- Auto-save with no save indicator (user doesn't know if work is persisted)
- Page loads with no skeleton screen or loading indicator
- Notifications that stack without user control

**Code Implications:**
```css
/* Feedback: button loading state */
.btn--loading {
  position: relative;
  color: transparent;
  pointer-events: none;
}
.btn--loading::after {
  content: '';
  position: absolute;
  width: 16px; height: 16px;
  top: 50%; left: 50%;
  margin: -8px 0 0 -8px;
  border: 2px solid currentColor;
  border-right-color: transparent;
  border-radius: 50%;
  animation: spin 0.6s linear infinite;
}
```

### 1.5 Constraints

**Definition:** Constraints limit the possible actions, reducing the chance of error. Norman
identifies four types of constraints.

**The Four Types of Constraints:**

| Type | Definition | Digital Example |
|------|-----------|----------------|
| Physical | Shape/size limits what can be done | Input field with maxlength attribute; file upload that only accepts images |
| Cultural | Learned conventions about behavior | Red = error/danger; green = success/safe; X = close |
| Semantic | Meaning of the situation constrains action | A "reply" button only appears on messages that can be replied to |
| Logical | Reasoning makes the correct choice obvious | Only one option remains, so it must be correct (e.g., auto-selecting the only shipping method) |

**Digital Application:**
- Input masks that enforce format (phone numbers, dates, credit cards)
- Disabled states on buttons until required fields are complete
- Date pickers that gray out invalid dates (past dates for future bookings)
- Dropdown menus that limit choices to valid options
- Step-by-step wizards that prevent jumping to step 3 before completing step 1
- Character counters that show remaining characters
- Type-restricted inputs (number, email, url) that invoke correct mobile keyboards

**Scoring Criteria (1-5):**

| Score | Description |
|-------|-------------|
| 1 | Users can easily enter invalid data or reach error states |
| 2 | Some constraints exist but many error paths remain open |
| 3 | Common errors are constrained; edge cases can still fail |
| 4 | Comprehensive constraints guide users toward valid actions |
| 5 | It is nearly impossible to make an error; the design constrains without frustrating |

**Failure Modes:**
- Free-text inputs where a dropdown would prevent errors
- No validation until form submission (all errors at once)
- Overly restrictive constraints that block legitimate input (rejecting valid but unusual names/addresses)
- Constraints applied inconsistently across similar forms
- No explanation when a constraint blocks an action (just a disabled button with no tooltip)

### 1.6 Conceptual Models

**Definition:** A conceptual model is an explanation, usually highly simplified, of how
something works. It does not have to be complete or accurate as long as it is useful.

**The System Image:** Users form their conceptual model from the "system image" -- everything
they can perceive about the system: its appearance, behavior, documentation, and reputation.
Designers cannot communicate directly with users; they communicate through the system image.

**Digital Application:**
- Folder/file metaphor for document organization (conceptual model borrowed from physical world)
- Shopping cart metaphor for e-commerce (items go "in," can be removed, then "checked out")
- Dashboard metaphor for analytics (gauges, charts, status indicators like a car dashboard)
- Inbox metaphor for messages (items arrive, are read, archived, or deleted)
- Canvas metaphor for design tools (infinite surface, zoom, pan, place objects)

**Model Communication Techniques:**

| Technique | Description | Example |
|-----------|-------------|---------|
| Visual metaphor | UI elements that mirror real-world objects | Trash can icon for delete |
| Progressive disclosure | Reveal complexity gradually | Basic settings visible; advanced behind "Show more" |
| Onboarding tours | Walk through the mental model | Tooltip sequence explaining key concepts |
| Empty states | Explain what WILL be here | "No projects yet. Create your first project to get started." |
| Consistent patterns | Same action = same behavior everywhere | Swipe to delete works on all list items |

**Scoring Criteria (1-5):**

| Score | Description |
|-------|-------------|
| 1 | The system's behavior is unpredictable; users cannot form a mental model |
| 2 | Partial model forms but breaks down in common scenarios |
| 3 | Basic model is clear; some features feel disconnected |
| 4 | Coherent model that covers most interactions |
| 5 | User can predict system behavior for actions they haven't tried yet |

---

## 2. The Seven Stages of Action

Norman's model of human action describes how people interact with the world. Every
interaction crosses two gulfs: the Gulf of Execution (figuring out what to do) and the
Gulf of Evaluation (figuring out what happened).

### The Seven Stages

```
                    [1. GOAL]
                   /         \
         Gulf of              Gulf of
        Execution            Evaluation
        /                            \
[2. PLAN]                      [7. COMPARE]
   |                                |
[3. SPECIFY]                  [6. INTERPRET]
   |                                |
[4. PERFORM]  --- THE WORLD --- [5. PERCEIVE]
```

**Stage 1 -- Goal:** Form the goal (what do I want to accomplish?)
**Stage 2 -- Plan:** Formulate the intention (how will I do it?)
**Stage 3 -- Specify:** Specify the action sequence (what exact steps?)
**Stage 4 -- Perform:** Execute the action (do the thing)
**Stage 5 -- Perceive:** Perceive the state of the world (what do I see now?)
**Stage 6 -- Interpret:** Interpret the perception (what does this mean?)
**Stage 7 -- Compare:** Compare the outcome with the goal (did it work?)

### Gulf of Execution -- Design Checklist

The Gulf of Execution is the gap between what the user wants to do and what the interface
allows them to do. A wide gulf means the user struggles to figure out how to act.

| Question | Design Solution |
|----------|----------------|
| Can users discover what actions are possible? | Visible controls, signifiers, affordances |
| Can users determine how to perform the action? | Labels, tooltips, placeholder text, examples |
| Can users map intention to action? | Natural mapping, spatial correspondence |
| Can users execute the action? | Adequate touch targets, accessible controls |

**Narrow the Gulf of Execution by:**
- Making all available actions visible (no hidden gestures)
- Labeling actions with verbs that match user intent ("Save draft" not "Submit")
- Grouping related actions together
- Providing keyboard shortcuts for power users alongside visible controls
- Using progressive disclosure to manage complexity without hiding essential actions

### Gulf of Evaluation -- Design Checklist

The Gulf of Evaluation is the gap between the actual state of the system and the user's
understanding of that state. A wide gulf means the user can't tell what happened.

| Question | Design Solution |
|----------|----------------|
| Can users perceive the system state? | Visible status indicators, changed states |
| Can users interpret what they perceive? | Clear language, familiar patterns, consistent icons |
| Can users evaluate whether the goal was achieved? | Success states, confirmation messages, progress |

**Narrow the Gulf of Evaluation by:**
- Showing system state at all times (saved/unsaved, online/offline, synced/unsynced)
- Using clear success and error messages with specific information
- Providing undo for reversible actions so users feel safe exploring
- Animating transitions so users understand what changed and why
- Maintaining context: don't navigate users away from their task unexpectedly

---

## 3. Human Error: Slips vs. Mistakes

Norman makes a critical distinction between two types of human error. Each requires
fundamentally different design responses.

### Slips

**Definition:** The user has the correct goal and correct plan but fails to execute
the action properly.

**Types of Slips:**

| Slip Type | Description | Digital Example |
|-----------|-------------|-----------------|
| Capture | A frequently used action overrides the intended one | Typing a password into the username field by habit |
| Description | Similar actions get confused | Clicking "Delete" instead of "Edit" when they're adjacent |
| Data-driven | External data captures attention | Typing the current date when entering a birth date |
| Associative activation | Internal association triggers wrong action | Saying "reply all" when meaning "reply" |
| Loss of activation | Forgetting the goal mid-action | Opening a new tab and forgetting why |
| Mode | Taking action appropriate for one mode while in another | Typing while Caps Lock is on |

**Design Solutions for Slips:**
- Separate destructive actions from common actions (don't put "Delete" next to "Edit")
- Provide undo for all reversible actions
- Use confirmation dialogs for destructive actions (but not for routine ones)
- Show mode indicators clearly (Caps Lock warning, current editing mode)
- Auto-save frequently so data loss is impossible
- Add sufficient spacing between touch targets

### Mistakes

**Definition:** The user forms the wrong goal or wrong plan. Even perfectly executed
actions lead to wrong outcomes because the plan itself was wrong.

**Types of Mistakes:**

| Mistake Type | Description | Digital Example |
|--------------|-------------|-----------------|
| Rule-based | Applying the wrong rule to the situation | Using "forward" when "reply" was appropriate |
| Knowledge-based | Incomplete understanding leads to wrong action | Deleting a database table thinking it would only hide the data |
| Memory-lapse | Forgetting a step or the goal itself | Closing a browser tab with unsaved changes |

**Design Solutions for Mistakes:**
- Make the system state visible so users can verify their plan
- Provide clear conceptual models so users understand consequences
- Use progressive disclosure to reveal complexity gradually
- Show previews before committing actions ("This will send to 1,247 recipients")
- Design checklists into complex workflows
- Provide contextual help at decision points

### Error Recovery Framework

| Error Severity | Response Time | Design Pattern |
|---------------|---------------|----------------|
| Trivial | Immediate undo | Inline undo link ("Message archived. Undo") |
| Moderate | Undo + explanation | Modal with explanation and undo option |
| Serious | Confirmation + undo | Multi-step confirmation with clear consequences |
| Irreversible | Prevention + confirmation | "Type the project name to confirm deletion" |

---

## 4. Knowledge in the Head vs. Knowledge in the World

**Principle:** People operate with a combination of knowledge stored in memory (in the head)
and information available in the environment (in the world). Good design minimizes the
need for knowledge in the head.

### Application Decision Matrix

| Situation | Use Knowledge in the World | Use Knowledge in the Head |
|-----------|---------------------------|--------------------------|
| First-time use | Labels, signifiers, instructions | Never -- user has no prior knowledge |
| Frequent use | Available but not prominent | Keyboard shortcuts, gestures |
| Error-prone tasks | Checklists, constraints, validation | Never -- don't rely on memory for safety |
| Power users | Discoverable but not required | Command palettes, shortcuts |
| Casual users | Always visible and prominent | Minimize -- they forget between sessions |

**Digital Application:**
- Show labels on all form fields (don't rely on users remembering placeholder text)
- Provide format hints ("MM/DD/YYYY") next to date inputs
- Use recognition over recall: show options in dropdowns rather than requiring typed input
- Keep important information visible on screen, not hidden behind clicks
- Breadcrumbs show where users are in the hierarchy (knowledge in the world)
- Recent items lists reduce reliance on memory

---

## 5. Natural Mapping in Digital Interfaces

### Mapping Patterns for Common UI Elements

| UI Element | Natural Mapping | Anti-pattern |
|-----------|-----------------|--------------|
| Volume/brightness slider | Left = less, Right = more | Inverted direction |
| Vertical list with up/down | Up arrow = scroll up (content moves down) | Inverted scrolling without opt-in |
| Image gallery | Swipe left = next (reading direction) | Swipe left = previous |
| Toggle switch | Right = on, colored = active | Left = on, or no color change |
| Accordion | Click header = expand below | Content expands above or elsewhere |
| Tabs | Click tab = content appears below tab | Content appears in a different viewport region |
| Sidebar navigation | Click item = main content changes | Sidebar itself changes unexpectedly |
| Zoom controls | + = zoom in, - = zoom out | Reversed symbols |
| Star ratings | Left to right = 1 to 5 | Right to left or random |
| Progress steps | Left to right = earlier to later | Steps in non-chronological arrangement |

---

## 6. The Design Thinking Process

Norman advocates a human-centered design process with four key activities:

### The Double Diamond

```
Phase 1: DISCOVER          Phase 2: DEFINE
  (Diverge)                  (Converge)
    /\                          /\
   /  \                        /  \
  /    \                      /    \
 /      \                    /      \
/________\                  /________\

Phase 3: DEVELOP           Phase 4: DELIVER
  (Diverge)                  (Converge)
    /\                          /\
   /  \                        /  \
  /    \                      /    \
 /      \                    /      \
/________\                  /________\
```

**1. Observation:** Watch real users in real contexts. Don't ask what they want -- observe
what they do. Pay attention to workarounds, frustrations, and unexpected uses.

**2. Ideation:** Generate many ideas. Don't evaluate during ideation. Quantity leads to
quality. Question everything, including the problem statement itself.

**3. Prototyping:** Make ideas tangible quickly. Test with real users early. Prototypes
should be quick and cheap -- the point is to learn, not to build.

**4. Testing:** Test with real users. Observe, don't ask for opinions. Watch where they
struggle, succeed, and are surprised. Iterate based on observed behavior.

**AI Agent Application:** An AI agent collapses this cycle dramatically:
- Observation is replaced by JTBD analysis and competitive research
- Ideation produces 2-3 complete design variations simultaneously
- Prototyping IS the output -- working code, not mockups
- Testing criteria are embedded in the evaluation framework (Norman scores, JTBD alignment)

---

## 7. Design Evaluation Checklist

Use this checklist to evaluate every design output against Norman's principles.

### Quick Evaluation (Score each 1-5)

| # | Principle | Question | Score |
|---|-----------|----------|-------|
| 1 | Affordances | Can users perceive what actions are possible? | /5 |
| 2 | Signifiers | Do visual cues communicate how and where to act? | /5 |
| 3 | Mapping | Do controls and their effects have a natural spatial/logical relationship? | /5 |
| 4 | Feedback | Does every action produce immediate, informative feedback? | /5 |
| 5 | Constraints | Does the design prevent errors through limiting invalid actions? | /5 |
| 6 | Conceptual Model | Can users predict system behavior based on the interface? | /5 |

**Total: /30**

**Score Interpretation:**

| Range | Assessment | Action Required |
|-------|------------|-----------------|
| 25-30 | Excellent | Minor polish only |
| 20-24 | Good | Address specific weak areas |
| 15-19 | Adequate | Significant redesign of 2-3 principles |
| 10-14 | Poor | Fundamental rethinking required |
| < 10 | Failing | Start over with principle-first approach |

### Deep Evaluation Questions

**Gulf of Execution:**
- Can a first-time user complete the primary task without help?
- Are all available actions discoverable within 5 seconds?
- Is the action vocabulary consistent (same verb/icon = same action everywhere)?
- Can users predict what will happen before they act?

**Gulf of Evaluation:**
- After every action, does the user know what happened?
- Can the user determine the system state at any moment?
- Are success and failure states visually distinct?
- Does the interface confirm that the user's goal was achieved?

**Error Handling:**
- Are destructive actions separated from common actions?
- Can the user undo the last action?
- Do error messages explain what went wrong AND how to fix it?
- Are slips prevented through physical/logical constraints?

---

## 8. Common Digital Design Anti-Patterns (Norman Violations)

| Anti-pattern | Norman Principle Violated | Fix |
|-------------|--------------------------|-----|
| Mystery meat navigation (icon-only menus) | Signifiers | Add text labels to all navigation icons |
| Infinite scroll with no position indicator | Feedback, Conceptual Model | Add scroll progress, "back to top" button |
| Modal dialogs that block context | Conceptual Model | Use inline expansion or side panels |
| Disabled buttons with no explanation | Constraints, Feedback | Tooltip explaining why the action is unavailable |
| Auto-advancing carousels | Feedback, Constraints | Let users control carousel advancement |
| Pagination that reloads the page | Feedback, Conceptual Model | Use AJAX loading with scroll position preservation |
| Toast notifications that disappear quickly | Feedback | Persist until dismissed or provide notification center |
| Multi-level dropdown menus | Mapping, Constraints | Use mega menus or separate pages |
| Custom scrollbars that hide | Signifiers, Affordances | Preserve native scrollbar behavior or show persistent indicators |
| Dark patterns (deceptive UI) | All principles | Design honestly; never weaponize psychology against users |

---

## 9. Sources and Attribution

Primary Source:
- Norman, Don. "The Design of Everyday Things: Revised and Expanded Edition." Basic Books, 2013.

Additional References:
- Norman, Don. "Emotional Design: Why We Love (or Hate) Everyday Things." Basic Books, 2004.
- Norman, Don. "Living with Complexity." MIT Press, 2010.
- Nielsen Norman Group (nngroup.com) -- research articles on usability principles.
- UX Magazine -- "Understanding Don Norman's Principles of Interaction"
