# Persona Testing Reference

## Creating Test Personas from Strategy Outputs

### From Value Mapper (validate phase)

The Value Mapper produces customer segments with:
- Jobs-to-be-done (functional, social, emotional)
- Pains (frustrations, obstacles, risks)
- Gains (desired outcomes, benefits)

Transform each customer segment into a test persona:

| Strategy Output | Test Persona Field |
|----------------|-------------------|
| Customer segment name | Persona name + role |
| Functional JTBD | Primary test flow |
| Pains | Negative test cases (what should NOT happen) |
| Gains | Success criteria (what should happen) |
| Importance score (1-5) | Test priority |

### Example Transformation

**Strategy output:**
- Segment: "HR Managers at mid-size companies"
- Functional JTBD: "Monitor team burnout levels and intervene early"
- Pain: "Current surveys take too long, response rates are low"
- Gain: "Real-time visibility into team wellbeing"

**Test persona:**
- Name: Sarah, HR Manager
- Context: 200-person company, manages 3 teams
- Primary flow: Login > Dashboard > View burnout scores > Identify at-risk team > Send intervention
- Negative tests: Survey should not take > 2 minutes; Dashboard should not show stale data
- Success criteria: Can identify at-risk team member within 30 seconds of logging in

### Persona Count Guidelines

| Product Complexity | Personas | Flows per Persona |
|-------------------|----------|-------------------|
| Landing page | 1-2 | 1-2 (view + convert) |
| Simple MVP | 2-3 | 2-3 per persona |
| Multi-role app | 3-4 | 3-5 per persona |

---

## Playwright MCP Test Patterns

### Navigation + Verification

```
1. browser_navigate to URL
2. browser_snapshot to see current state
3. Verify expected elements exist in snapshot
4. browser_take_screenshot for evidence
```

### Form Interaction

```
1. browser_snapshot to find form fields
2. browser_fill_form with field values
3. browser_click on submit button
4. browser_wait_for navigation or response
5. browser_snapshot to verify result
6. browser_take_screenshot for evidence
```

### Multi-Step Flow

```
1. browser_navigate to starting page
2. For each step in persona flow:
   a. browser_snapshot (find next action target)
   b. Execute action (click/fill/select)
   c. browser_wait_for (page update or navigation)
   d. browser_snapshot (verify expected state)
   e. browser_take_screenshot (evidence)
   f. browser_console_messages (check for errors)
3. browser_network_requests (check for failed calls)
```

### Error Detection

```
# After each navigation:
console_messages = browser_console_messages
errors = [m for m in console_messages if m.type == "error"]

# After full flow:
network = browser_network_requests
failures = [r for r in network if r.status >= 400]
```

---

## Accessibility Quick Checks

These can be verified via browser_snapshot:

| Check | How to Verify |
|-------|--------------|
| All images have alt text | Look for `img` elements in snapshot, check for `[alt]` |
| Form inputs have labels | Look for `label` elements or `aria-label` attributes |
| Buttons have accessible names | Check button text or `aria-label` in snapshot |
| Color contrast | Take screenshot, visually inspect text readability |
| Keyboard navigation | Use `browser_press_key` with Tab, Enter, Escape |
| Focus indicators | Tab through elements, check for visible focus ring in screenshots |
| Heading hierarchy | Check h1 > h2 > h3 order in snapshot |

---

## Test Report Quality Checklist

- [ ] Every test traces to a persona and JTBD
- [ ] Screenshots taken at every step
- [ ] Console errors checked after each navigation
- [ ] Network failures checked at end of each flow
- [ ] All issues have severity ratings
- [ ] Recommendations prioritized by severity
- [ ] Report saved as markdown in test-results/
- [ ] Summary stored in memory with [PHASE:test:{Project}] tag

---

## Common Test Scenarios

### Landing Page Tests

| Persona | Flow | Checkpoints |
|---------|------|------------|
| First-time visitor | Homepage > Scroll > Read features > Click CTA | H1 visible, CTA above fold, form works, thank-you page loads |
| Returning visitor | Homepage > Pricing > FAQ > CTA | Pricing table renders, FAQ accordion works, CTA works |
| Mobile user | Same flows at 375px viewport | All content visible, tap targets 44px+, no horizontal scroll |

### MVP Tests

| Persona | Flow | Checkpoints |
|---------|------|------------|
| New user | Signup > Onboarding > First action | Account created, onboarding completes, core feature works |
| Returning user | Login > Dashboard > Core workflow | Auth works, data persists, workflow completes |
| Admin | Login > Settings > Manage users | Admin panel accessible, CRUD operations work |

### Common Failures to Check

| Failure | How to Detect |
|---------|--------------|
| Broken authentication | Login returns error or doesn't redirect |
| Missing CORS headers | Network request shows CORS error |
| Unhandled errors | Console shows uncaught exceptions |
| Broken responsive layout | Screenshot at mobile width shows overflow |
| Dead links | Click link, check for 404 |
| Slow page load | Network requests show > 3s total load |
| Missing error messages | Submit invalid form, check for user feedback |
