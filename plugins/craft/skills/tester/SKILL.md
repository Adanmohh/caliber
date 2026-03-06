---
name: tester
description: Strategy-informed testing using Playwright MCP. Creates test personas from JTBD research and validates built products against user jobs. Activates for testing, QA, or verification requests.
---

# Tester

You test built products against the user personas and jobs-to-be-done identified during strategy phases. Tests are executed via Playwright MCP browser automation.

## Quick Reference

### Persona Template

| Field | Example |
|-------|---------|
| Name | Sarah, HR Manager |
| Context | Mid-size company, 200 employees, tracks burnout |
| Job-to-be-done | Monitor team wellbeing and intervene early |
| Expected flow | Login > Dashboard > View team scores > Flag at-risk member > Send check-in |
| Success criteria | Can complete full flow in < 5 clicks; sees actionable data |

### Test Checkpoint Types

| Type | What to Check | Playwright MCP Tool |
|------|--------------|-------------------|
| Visual | Expected text/element visible | `browser_snapshot` |
| Navigation | Page loaded, correct URL | `browser_navigate` |
| Interaction | Button clickable, form fillable | `browser_click`, `browser_fill_form` |
| Evidence | Screenshot captured | `browser_take_screenshot` |
| Errors | No console errors | `browser_console_messages` |
| Network | No failed requests | `browser_network_requests` |

### Severity Levels

| Severity | Definition | Example |
|----------|-----------|---------|
| Critical | User cannot complete job-to-be-done | Login form broken, 500 error on submit |
| High | Job completable but with significant friction | Button not visible without scrolling, confusing copy |
| Medium | Minor UX issue, doesn't block job | Slow load time, missing hover state |
| Low | Polish issue | Typo, inconsistent spacing |

## Execution Flow

```
1. Search memory for personas + JTBD
   |
   v
2. Create 2-3 test personas with flows
   |
   v
3. Present test plan -> User approves
   |
   v
4. Execute via Playwright MCP:
   For each persona:
     navigate -> snapshot -> action -> screenshot -> verify -> log
   |
   v
5. Check console errors + network failures
   |
   v
6. Generate report -> Save to test-results/
   |
   v
7. Store summary in memory [PHASE:test:{Project}]
```

## Report Template

```markdown
# Test Report: {Project Name}
Date: {YYYY-MM-DD}
URL: {tested URL}

## Summary
| Persona | Flows Tested | Passed | Failed | Critical Issues |
|---------|-------------|--------|--------|-----------------|
| {name}  | {count}     | {n}    | {n}    | {count}         |

## Persona 1: {Name} -- {Role}
Job: {JTBD}

### Flow: {flow name}
| Step | Action | Expected | Result | Screenshot |
|------|--------|----------|--------|------------|
| 1 | Navigate to /login | Login form visible | PASS | screenshot-01.png |
| 2 | Fill email + password | Fields accept input | PASS | screenshot-02.png |
| 3 | Click "Sign In" | Redirect to dashboard | FAIL | screenshot-03.png |

### Issues Found
| # | Severity | Description | Recommendation |
|---|----------|-------------|----------------|
| 1 | Critical | Login returns 500 error | Check auth endpoint |

## Console Errors
{list of JavaScript errors found}

## Network Errors
{list of failed HTTP requests (4xx, 5xx)}

## Recommendations
1. {prioritized fix recommendations}
```

## Key Constraints
- Always search memory for strategy context before creating personas
- Take screenshots at EVERY step (minimum 1 per action)
- Check console messages after every navigation
- Never skip the test plan approval step
- Report must include severity ratings for all issues
- Save report as markdown file in test-results/ directory

## Reference Files
- **On-demand:** `references/persona-testing.md` -- Detailed persona creation from JTBD, Playwright MCP patterns, accessibility testing checklist
