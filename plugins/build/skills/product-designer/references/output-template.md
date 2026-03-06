# Product Designer -- Output Template

This template defines the structured output format for every design produced by The Product
Designer. Every section is mandatory. Incomplete outputs fail quality review.

---

## Template Structure Overview

```
1. Design Brief           -- Context, constraints, requirements
2. Job Analysis           -- JTBD decomposition with forces
3. Design Principles Log  -- Which Norman principles apply and how
4. Design Output          -- Production-ready HTML/CSS/JS
5. Design Variations      -- 2-3 options with tradeoff analysis
6. Accessibility Audit    -- WCAG AA compliance verification
7. Design Decision Log    -- What was chosen and why
8. Evaluation Scorecards  -- Norman scores + JTBD alignment
9. Component Inventory    -- Reusable pieces extracted
10. Quality Checklist     -- Final verification
```

---

## Section 1: Design Brief

```markdown
## Design Brief

### Job Context
- **Primary Job:** [What is the user trying to accomplish?]
- **Trigger Situation:** [When/where does this need arise?]
- **Current Solution:** [How are users solving this today?]
- **Why Current Solution Fails:** [What push forces exist?]

### User Profile
- **Experience Level:** [Novice / Intermediate / Expert / Mixed]
- **Usage Frequency:** [One-time / Occasional / Daily / Continuous]
- **Device Context:** [Desktop-primary / Mobile-primary / Multi-device]
- **Accessibility Needs:** [Standard WCAG AA / Enhanced requirements]

### Functional Requirements
| # | Requirement | Priority | Source |
|---|------------|----------|--------|
| F1 | [Requirement description] | Must / Should / Could | [Spec/research] |
| F2 | [Requirement description] | Must / Should / Could | [Spec/research] |
| F3 | [Requirement description] | Must / Should / Could | [Spec/research] |

### Emotional Requirements
| # | Feeling | Design Implication |
|---|---------|-------------------|
| E1 | [How user should feel] | [How we achieve this in the UI] |
| E2 | [How user should feel] | [How we achieve this in the UI] |

### Social Requirements
| # | Perception | Design Implication |
|---|-----------|-------------------|
| S1 | [How user wants to be seen] | [How we support this] |
| S2 | [How user wants to be seen] | [How we support this] |

### Constraints
- **Technical:** [Framework requirements, browser support, performance budget]
- **Brand:** [Color palette, typography, voice/tone guidelines]
- **Content:** [Copy constraints, localization requirements]
- **Timeline:** [Relevant deadlines or scope limits]

### Success Criteria
| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| [Job completion rate] | [> X%] | [Funnel analysis] |
| [Time to complete] | [< X seconds] | [Session recording] |
| [Error rate] | [< X%] | [Error logging] |
| [Satisfaction score] | [> X/5] | [Post-task survey] |
```

---

## Section 2: Job Analysis

```markdown
## Job Analysis

### Job Map
Break the primary job into ordered sub-jobs:

| Step | Sub-Job | User Thought | Design Requirement |
|------|---------|-------------|-------------------|
| 1 | [First sub-job] | "[What user is thinking]" | [What the UI must do] |
| 2 | [Second sub-job] | "[What user is thinking]" | [What the UI must do] |
| 3 | [Third sub-job] | "[What user is thinking]" | [What the UI must do] |
| ... | ... | ... | ... |

### Forces Analysis

#### Promoting Forces
| Force Type | Description | Design Response |
|-----------|-------------|-----------------|
| Push | [Current pain point driving user here] | [How we acknowledge this] |
| Pull | [Desired outcome attracting user] | [How we communicate this] |

#### Blocking Forces
| Force Type | Description | Design Response |
|-----------|-------------|-----------------|
| Anxiety | [Fear/uncertainty about using this] | [How we reduce this] |
| Inertia | [Habit/comfort keeping user with status quo] | [How we overcome this] |

### Struggling Moments
Identify the top 3 points where users are most likely to struggle or abandon:

| # | Struggling Moment | Root Cause | Design Intervention |
|---|-------------------|-----------|-------------------|
| 1 | [Where they struggle] | [Why they struggle] | [How we help] |
| 2 | [Where they struggle] | [Why they struggle] | [How we help] |
| 3 | [Where they struggle] | [Why they struggle] | [How we help] |

### Job Stories
Write 3-5 job stories that drive the design:

1. When [situation], I want to [motivation], so I can [outcome].
2. When [situation], I want to [motivation], so I can [outcome].
3. When [situation], I want to [motivation], so I can [outcome].
```

---

## Section 3: Design Principles Log

```markdown
## Design Principles Applied

### Norman's Principles Application

| Principle | How It's Applied | Specific UI Element |
|-----------|-----------------|-------------------|
| Affordances | [What affordances are designed] | [Which elements] |
| Signifiers | [What signifiers communicate action] | [Which elements] |
| Mapping | [How controls map to outcomes] | [Which interactions] |
| Feedback | [What feedback is provided] | [Which states/transitions] |
| Constraints | [What errors are prevented] | [Which validations/limits] |
| Conceptual Model | [What mental model is supported] | [Overall structure] |

### Gulf of Execution Audit
| Question | Answer | Evidence |
|----------|--------|----------|
| Can users discover available actions? | [Yes/No/Partial] | [Specific elements] |
| Can users determine how to act? | [Yes/No/Partial] | [Labels, signifiers] |
| Can users map intention to action? | [Yes/No/Partial] | [Mapping approach] |

### Gulf of Evaluation Audit
| Question | Answer | Evidence |
|----------|--------|----------|
| Can users perceive system state? | [Yes/No/Partial] | [Status indicators] |
| Can users interpret what happened? | [Yes/No/Partial] | [Feedback messages] |
| Can users evaluate success? | [Yes/No/Partial] | [Success states] |

### Error Prevention Strategy
| Error Type | Prevention Method | Recovery Method |
|-----------|-------------------|-----------------|
| Slips | [How slips are prevented] | [How to recover from slips] |
| Mistakes | [How mistakes are prevented] | [How to recover from mistakes] |

### Gestalt Principles Applied

Reference: Gestalt principles describe how the human visual system organizes
elements into groups and patterns. Apply these deliberately when arranging
UI elements.

- **Proximity**: Elements near each other are perceived as a group. Use spacing
  to cluster related controls and separate unrelated ones.
- **Similarity**: Elements sharing visual properties (color, shape, size) are
  perceived as related. Use consistent styling for items of the same type.
- **Continuity**: The eye follows smooth lines and curves. Use alignment and
  visual flow to guide the user through a sequence of steps or information.
- **Closure**: The mind completes incomplete shapes. Use partial borders,
  implied containers, and open shapes that the brain finishes naturally.
- **Figure-Ground**: The visual system separates foreground from background.
  Use contrast, elevation (shadows), and overlays to distinguish interactive
  elements from their surroundings. Critical for modals, drawers, and tooltips.
- **Common Fate**: Elements moving in the same direction are perceived as a
  group. Use coordinated animations and transitions to show relationships
  between elements that change state together.

| Principle | Application |
|-----------|-------------|
| Proximity | [How spacing groups related elements] |
| Similarity | [How visual similarity shows relationships] |
| Continuity | [How alignment guides the eye] |
| Closure | [How incomplete shapes are completed mentally] |
| Figure-Ground | [How foreground/background separation works] |
| Common Fate | [How coordinated movement shows relationships] |
| Common Region | [How enclosed areas group elements] |

### Conversion Design Principles (if applicable)
| Principle | Application |
|-----------|-------------|
| Attention Ratio | [Links-to-goals ratio on this page] |
| Encapsulation | [How CTA is visually framed] |
| Contrast | [How CTA stands out from surroundings] |
| Directional Cues | [How visual flow guides toward CTA] |
| Whitespace | [How space emphasizes key elements] |
| Social Proof | [Where trust signals are placed] |
| Urgency/Scarcity | [How time/quantity limits are shown, if authentic] |
```

---

## Section 4: Design Output

```markdown
## Design Output

### File Structure
- `index.html` -- Main HTML structure
- `styles.css` -- Stylesheet (or inline Tailwind classes)
- `script.js` -- Interactive behavior (if needed)

### Responsive Breakpoints
| Breakpoint | Width | Layout Changes |
|-----------|-------|----------------|
| Mobile | 320px - 767px | [Describe layout] |
| Tablet | 768px - 1023px | [Describe layout] |
| Desktop | 1024px - 1439px | [Describe layout] |
| Wide | 1440px+ | [Describe layout] |

### HTML
[Complete HTML code here with semantic structure, ARIA attributes,
and accessibility annotations as comments]

### CSS
[Complete CSS code here with responsive breakpoints, custom properties
for theming, and accessibility features like focus states and
prefers-reduced-motion]

### JavaScript
[Complete JavaScript code here with progressive enhancement,
keyboard navigation support, and ARIA state management]

### Color Palette Used
| Role | Hex | Contrast Ratio | WCAG Level |
|------|-----|---------------|------------|
| Primary | #[hex] | [X:1 on background] | [AA/AAA] |
| Primary Hover | #[hex] | [X:1 on background] | [AA/AAA] |
| Text on Primary | #[hex] | [X:1 on primary] | [AA/AAA] |
| Background | #[hex] | -- | -- |
| Text | #[hex] | [X:1 on background] | [AA/AAA] |
| Secondary Text | #[hex] | [X:1 on background] | [AA/AAA] |
| Border | #[hex] | [X:1 on background] | [AA] |
| Error | #[hex] | [X:1 on background] | [AA/AAA] |
| Success | #[hex] | [X:1 on background] | [AA/AAA] |

### Typography Used
| Role | Font | Size | Weight | Line Height |
|------|------|------|--------|-------------|
| Heading 1 | [Font name] | [size] | [weight] | [line-height] |
| Heading 2 | [Font name] | [size] | [weight] | [line-height] |
| Body | [Font name] | [size] | [weight] | [line-height] |
| Small/Caption | [Font name] | [size] | [weight] | [line-height] |
| Button | [Font name] | [size] | [weight] | [line-height] |
```

---

## Section 5: Design Variations

```markdown
## Design Variations

### Variation A: [Name/Theme]
**Approach:** [Brief description of the design philosophy for this variation]
**Strengths:** [What this variation does well]
**Weaknesses:** [Where this variation falls short]
**Best For:** [Scenarios where this variation excels]

[Code or key visual description]

### Variation B: [Name/Theme]
**Approach:** [Brief description of the design philosophy for this variation]
**Strengths:** [What this variation does well]
**Weaknesses:** [Where this variation falls short]
**Best For:** [Scenarios where this variation excels]

[Code or key visual description]

### Variation C: [Name/Theme] (optional)
**Approach:** [Brief description of the design philosophy for this variation]
**Strengths:** [What this variation does well]
**Weaknesses:** [Where this variation falls short]
**Best For:** [Scenarios where this variation excels]

[Code or key visual description]

### Variation Comparison Matrix

| Criterion | Var A | Var B | Var C |
|-----------|-------|-------|-------|
| Visual clarity | /5 | /5 | /5 |
| Information density | /5 | /5 | /5 |
| Emotional tone | /5 | /5 | /5 |
| Conversion potential | /5 | /5 | /5 |
| Accessibility | /5 | /5 | /5 |
| Implementation complexity | /5 | /5 | /5 |
| Mobile responsiveness | /5 | /5 | /5 |
| **Total** | **/35** | **/35** | **/35** |

### Recommendation
**Selected Variation:** [A/B/C]
**Rationale:** [Why this variation best serves the user's job, with specific
reference to Norman's principles and JTBD alignment]
**What to borrow from other variations:** [Specific elements from non-selected
variations that should be incorporated]
```

---

## Section 6: Accessibility Audit

```markdown
## Accessibility Audit (WCAG 2.1 AA)

### Perceivable
| Criterion | Status | Notes |
|-----------|--------|-------|
| 1.1.1 Non-text Content: All images have alt text | Pass/Fail | [Details] |
| 1.3.1 Info and Relationships: Semantic HTML used | Pass/Fail | [Details] |
| 1.3.2 Meaningful Sequence: DOM order matches visual order | Pass/Fail | [Details] |
| 1.4.1 Use of Color: Info not conveyed by color alone | Pass/Fail | [Details] |
| 1.4.3 Contrast (Minimum): 4.5:1 for text, 3:1 for large text | Pass/Fail | [Details] |
| 1.4.4 Resize Text: Works at 200% zoom | Pass/Fail | [Details] |
| 1.4.11 Non-text Contrast: 3:1 for UI components | Pass/Fail | [Details] |

### Operable
| Criterion | Status | Notes |
|-----------|--------|-------|
| 2.1.1 Keyboard: All functionality via keyboard | Pass/Fail | [Details] |
| 2.1.2 No Keyboard Trap: Focus is never trapped | Pass/Fail | [Details] |
| 2.4.1 Bypass Blocks: Skip navigation link provided | Pass/Fail | [Details] |
| 2.4.3 Focus Order: Logical focus sequence | Pass/Fail | [Details] |
| 2.4.6 Headings and Labels: Descriptive headings | Pass/Fail | [Details] |
| 2.4.7 Focus Visible: Visible focus indicator | Pass/Fail | [Details] |
| 2.5.5 Target Size: 44x44px minimum touch targets | Pass/Fail | [Details] |

### Understandable
| Criterion | Status | Notes |
|-----------|--------|-------|
| 3.1.1 Language of Page: lang attribute set | Pass/Fail | [Details] |
| 3.2.1 On Focus: No unexpected context change on focus | Pass/Fail | [Details] |
| 3.2.2 On Input: No unexpected context change on input | Pass/Fail | [Details] |
| 3.3.1 Error Identification: Errors clearly described | Pass/Fail | [Details] |
| 3.3.2 Labels or Instructions: Input labels provided | Pass/Fail | [Details] |
| 3.3.3 Error Suggestion: Correction suggestions provided | Pass/Fail | [Details] |

### Robust
| Criterion | Status | Notes |
|-----------|--------|-------|
| 4.1.1 Parsing: Valid HTML | Pass/Fail | [Details] |
| 4.1.2 Name, Role, Value: ARIA attributes correct | Pass/Fail | [Details] |

### Screen Reader Testing Notes
[Notes on how the interface will be experienced by screen reader users,
including reading order, landmark regions, and live regions for dynamic content]

### Keyboard Navigation Map
| Key | Action | Context |
|-----|--------|---------|
| Tab | [What it does] | [Where] |
| Shift+Tab | [What it does] | [Where] |
| Enter | [What it does] | [Where] |
| Space | [What it does] | [Where] |
| Escape | [What it does] | [Where] |
| Arrow keys | [What they do] | [Where] |
```

---

## Section 7: Design Decision Log

```markdown
## Design Decision Log

| # | Decision | Options Considered | Choice | Rationale |
|---|----------|-------------------|--------|-----------|
| D1 | [What was decided] | [Option A, Option B, ...] | [Selected option] | [Why, referencing principles] |
| D2 | [What was decided] | [Option A, Option B, ...] | [Selected option] | [Why, referencing principles] |
| D3 | [What was decided] | [Option A, Option B, ...] | [Selected option] | [Why, referencing principles] |
| D4 | [What was decided] | [Option A, Option B, ...] | [Selected option] | [Why, referencing principles] |
| D5 | [What was decided] | [Option A, Option B, ...] | [Selected option] | [Why, referencing principles] |

### Key Tradeoffs Made
| Tradeoff | What We Gained | What We Sacrificed | Why It's Worth It |
|----------|---------------|--------------------|--------------------|
| [Tradeoff 1] | [Gain] | [Loss] | [Justification] |
| [Tradeoff 2] | [Gain] | [Loss] | [Justification] |
| [Tradeoff 3] | [Gain] | [Loss] | [Justification] |

### Rejected Alternatives
For significant decisions, document why alternatives were rejected:

**[Decision Name]:**
- Rejected: [Alternative approach]
- Reason: [Why it failed to serve the job or violated a principle]
- Reference: [Norman principle or JTBD dimension that disqualified it]
```

---

## Section 8: Evaluation Scorecards

```markdown
## Evaluation Scorecards

### Norman's Design Principles Score

| # | Principle | Score | Evidence |
|---|-----------|-------|----------|
| 1 | Affordances | /5 | [Specific elements demonstrating affordances] |
| 2 | Signifiers | /5 | [Specific signifiers in the design] |
| 3 | Mapping | /5 | [How controls map to outcomes] |
| 4 | Feedback | /5 | [Feedback mechanisms implemented] |
| 5 | Constraints | /5 | [Constraints preventing errors] |
| 6 | Conceptual Model | /5 | [Mental model supported] |
| **Total** | | **/30** | |

### JTBD Alignment Score

| # | Dimension | Score | Evidence |
|---|-----------|-------|----------|
| 1 | Job Fit | /5 | [How directly it addresses the job] |
| 2 | Functional Progress | /5 | [Time/effort reduction] |
| 3 | Emotional Progress | /5 | [Confidence/delight created] |
| 4 | Social Progress | /5 | [How it helps user look good] |
| 5 | Anxiety Reduction | /5 | [Fears addressed] |
| 6 | Inertia Handling | /5 | [Adoption friction reduced] |
| 7 | Outcome Clarity | /5 | [How users know they're done] |
| **Total** | | **/35** | |

### Combined Score
- Norman Score: /30
- JTBD Score: /35
- **Combined: /65**

| Range | Assessment | Action |
|-------|-----------|--------|
| 55-65 | Exceptional | Ship with minor polish |
| 45-54 | Strong | Address specific gaps before shipping |
| 35-44 | Adequate | Significant iteration on weak areas needed |
| 25-34 | Weak | Major redesign required on failing dimensions |
| < 25 | Failing | Return to Design Brief and restart |
```

---

## Section 9: Component Inventory

```markdown
## Component Inventory

### Reusable Components Extracted

| # | Component | Props/Variants | Usage Count | Reuse Potential |
|---|-----------|---------------|-------------|-----------------|
| C1 | [Component name] | [Variants: primary, secondary, etc.] | [Times used] | [High/Medium/Low] |
| C2 | [Component name] | [Variants] | [Times used] | [High/Medium/Low] |
| C3 | [Component name] | [Variants] | [Times used] | [High/Medium/Low] |

### Design Tokens Defined

#### Colors
| Token | Value | Usage |
|-------|-------|-------|
| --color-primary | #[hex] | [Where used] |
| --color-primary-hover | #[hex] | [Where used] |
| --color-bg | #[hex] | [Where used] |
| --color-text | #[hex] | [Where used] |
| --color-error | #[hex] | [Where used] |
| --color-success | #[hex] | [Where used] |

#### Spacing
| Token | Value | Usage |
|-------|-------|-------|
| --space-xs | 4px | [Where used] |
| --space-sm | 8px | [Where used] |
| --space-md | 16px | [Where used] |
| --space-lg | 24px | [Where used] |
| --space-xl | 32px | [Where used] |
| --space-2xl | 48px | [Where used] |

#### Typography
| Token | Value | Usage |
|-------|-------|-------|
| --font-family | [Font stack] | [Where used] |
| --font-size-sm | [size] | [Where used] |
| --font-size-base | [size] | [Where used] |
| --font-size-lg | [size] | [Where used] |
| --font-size-xl | [size] | [Where used] |

#### Borders & Shadows
| Token | Value | Usage |
|-------|-------|-------|
| --radius-sm | [value] | [Where used] |
| --radius-md | [value] | [Where used] |
| --radius-lg | [value] | [Where used] |
| --shadow-sm | [value] | [Where used] |
| --shadow-md | [value] | [Where used] |
| --shadow-lg | [value] | [Where used] |
```

---

## Section 10: Quality Checklist

```markdown
## Quality Checklist

### Completeness
- [ ] Design Brief is fully populated with job context and requirements
- [ ] Job Analysis includes forces, struggling moments, and job stories
- [ ] All six Norman principles are addressed in the Principles Log
- [ ] Production-ready code is provided (HTML + CSS + JS as needed)
- [ ] At least 2 design variations are presented with tradeoff analysis
- [ ] Accessibility audit covers all WCAG 2.1 AA criteria
- [ ] Decision log documents at least 5 significant design decisions
- [ ] Both scorecards are completed with evidence

### Code Quality
- [ ] HTML is semantic (proper heading hierarchy, landmark regions, lists)
- [ ] CSS uses custom properties for all theme values
- [ ] Responsive breakpoints are tested at 320px, 768px, 1024px, 1440px
- [ ] All interactive elements have focus states
- [ ] prefers-reduced-motion is respected for animations
- [ ] No inline styles (all styling in CSS)
- [ ] JavaScript is progressive enhancement (page works without JS)

### Design Quality
- [ ] Visual hierarchy clearly guides attention to primary action
- [ ] Color contrast meets WCAG AA (4.5:1 text, 3:1 large text/UI)
- [ ] Typography scale is consistent and harmonious
- [ ] Spacing is consistent (using defined spacing scale)
- [ ] Interactive elements have visible affordances
- [ ] All actions provide appropriate feedback
- [ ] Error states are designed (not just success states)
- [ ] Empty states are designed (not just populated states)
- [ ] Loading states are designed (skeleton screens or progress indicators)

### JTBD Quality
- [ ] The primary job is clearly identified and drives all decisions
- [ ] All three dimensions (functional, emotional, social) are addressed
- [ ] Blocking forces (anxiety, inertia) are specifically addressed in the design
- [ ] Success is defined by job completion, not feature usage
- [ ] The design outperforms the user's current solution on the primary job

### Norman Compliance
- [ ] Norman score is 20+ out of 30
- [ ] No principle scores below 3/5
- [ ] Gulf of Execution is narrow (users can discover and perform actions easily)
- [ ] Gulf of Evaluation is narrow (users always know system state and outcome)
- [ ] Error prevention covers both slips and mistakes
- [ ] Conceptual model is coherent and learnable

### Handoff Readiness
- [ ] Code runs without errors in target browsers
- [ ] All placeholder content is clearly marked for replacement
- [ ] Component inventory identifies reusable pieces
- [ ] Design tokens are documented for design system integration
- [ ] Responsive behavior is documented for each breakpoint
```

---

## Stage-Gated Guidance

Adapt outputs to the venture's current stage. For pre-launch: use hypothesis-driven language, note where user research is needed, and avoid assuming conversion metrics or cohort data exist.

---

## Usage Instructions

1. Copy this template at the start of every design task
2. Complete Section 1 (Design Brief) BEFORE writing any code
3. Complete Section 2 (Job Analysis) to ground decisions in user jobs
4. Complete Section 3 (Principles Log) to plan principle application
5. Write code in Section 4 with principles actively guiding decisions
6. Generate variations in Section 5 -- never ship a single option
7. Run the Accessibility Audit in Section 6 on the recommended variation
8. Document decisions in Section 7 as they are made (not retroactively)
9. Score the design honestly in Section 8 -- low scores are information, not failure
10. Extract reusable components in Section 9 for design system growth
11. Run the Quality Checklist in Section 10 before declaring the design complete

If any Quality Checklist item fails, iterate until it passes. The checklist is
the minimum bar, not the aspiration.
