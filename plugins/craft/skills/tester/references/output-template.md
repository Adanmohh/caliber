# Tester -- Output Template

> Every test engagement produces a structured report saved to `test-results/`. Adapt sections based on scope -- a quick smoke test may skip accessibility and performance, but a full test covers all sections.

---

## OUTPUT STRUCTURE OVERVIEW

```
COMPLETE TEST REPORT:

1. Test Summary
2. Environment Details
3. Persona Test Results (per persona)
4. Accessibility Audit
5. Performance Metrics
6. Console & Network Errors
7. Critical Issues
8. Recommendations
9. Quality Checklist
```

---

## SECTION 1: TEST SUMMARY

```
================================================================
TEST SUMMARY
================================================================

Project:        {Project Name}
URL Tested:     {https://example.com}
Date:           {YYYY-MM-DD}
Tester:         Organtic Tester Agent
Browser:        Chromium (Playwright MCP)

RESULTS OVERVIEW:
| Metric               | Count |
|----------------------|-------|
| Total Test Flows     | {N}   |
| Passed               | {N}   |
| Failed               | {N}   |
| Critical Issues      | {N}   |
| High Issues          | {N}   |
| Medium Issues        | {N}   |
| Low Issues           | {N}   |

PASS RATE: {X%}

OVERALL VERDICT: {PASS | CONDITIONAL PASS | FAIL}

Verdict criteria:
- PASS: 0 critical, 0 high issues
- CONDITIONAL PASS: 0 critical, 1-3 high issues with workarounds
- FAIL: Any critical issue OR 4+ high issues

================================================================
```

---

## SECTION 2: ENVIRONMENT DETAILS

```
================================================================
ENVIRONMENT DETAILS
================================================================

| Property         | Value                     |
|-----------------|---------------------------|
| URL              | {https://example.com}     |
| Viewport         | {1280x720 | 375x667}     |
| Browser          | {Chromium via Playwright}  |
| Auth Required    | {Yes/No}                  |
| Test Account     | {email if applicable}     |
| Network          | {Standard | Throttled}    |

================================================================
```

---

## SECTION 3: PERSONA TEST RESULTS

Repeat this section for each test persona (typically 2-3).

```
================================================================
PERSONA {N}: {Name} -- {Role}
================================================================

PROFILE:
| Field            | Value                                    |
|-----------------|------------------------------------------|
| Name             | {Name}                                   |
| Context          | {Brief persona context}                  |
| Job-to-be-done   | {Primary JTBD from strategy phase}       |
| Tech Comfort     | {Low | Medium | High}                    |
| Device           | {Desktop | Mobile | Tablet}              |

---

FLOW {N}.1: {Flow Name}
Expected Path: {Page 1} -> {Page 2} -> {Page 3} -> {Outcome}

| Step | Action                    | Expected Result           | Actual Result | Status | Screenshot         |
|------|--------------------------|--------------------------|---------------|--------|--------------------|
| 1    | Navigate to {URL}        | {Page loads, element visible} | {What happened} | {PASS/FAIL} | {screenshot-01.png} |
| 2    | Click {element}          | {Expected behavior}       | {What happened} | {PASS/FAIL} | {screenshot-02.png} |
| 3    | Fill {form field}        | {Input accepted}          | {What happened} | {PASS/FAIL} | {screenshot-03.png} |
| 4    | Submit {form}            | {Success state}           | {What happened} | {PASS/FAIL} | {screenshot-04.png} |
| 5    | Verify {outcome}         | {Expected final state}    | {What happened} | {PASS/FAIL} | {screenshot-05.png} |

FLOW RESULT: {PASS | FAIL}
COMPLETION TIME: {X seconds/steps}
SUCCESS CRITERIA MET: {Yes | Partial | No}

---

FLOW {N}.2: {Flow Name}
[Repeat flow table structure]

---

ISSUES FOUND FOR THIS PERSONA:
| #  | Severity | Step | Description                      | Recommendation              |
|----|----------|------|----------------------------------|-----------------------------|
| 1  | {Crit/High/Med/Low} | {N} | {What went wrong}     | {How to fix it}             |
| 2  | {Crit/High/Med/Low} | {N} | {What went wrong}     | {How to fix it}             |

================================================================
```

---

## SECTION 4: ACCESSIBILITY AUDIT

```
================================================================
ACCESSIBILITY AUDIT
================================================================

SCOPE: {Pages/flows tested for accessibility}

| Check                         | Result    | Details                        |
|------------------------------|-----------|--------------------------------|
| Color contrast (WCAG AA)     | {PASS/FAIL} | {Specific failures if any}   |
| Keyboard navigation          | {PASS/FAIL} | {Elements not reachable}     |
| Alt text on images           | {PASS/FAIL} | {Missing alt text count}     |
| Form labels                  | {PASS/FAIL} | {Unlabeled inputs}           |
| Heading hierarchy            | {PASS/FAIL} | {Skipped levels}             |
| Focus indicators             | {PASS/FAIL} | {Missing focus styles}       |
| Screen reader landmarks      | {PASS/FAIL} | {Missing ARIA roles}         |
| Touch target size (48px min) | {PASS/FAIL} | {Undersized targets}         |

ACCESSIBILITY SCORE: {X of 8 checks passed}

CRITICAL ACCESSIBILITY ISSUES:
1. {Issue and impact on users with disabilities}
2. {Issue and impact}

================================================================
```

---

## SECTION 5: PERFORMANCE METRICS

```
================================================================
PERFORMANCE METRICS
================================================================

| Metric                        | Value     | Target    | Status          |
|-------------------------------|-----------|-----------|-----------------|
| Page Load Time                | {X.Xs}    | {< 3s}   | {PASS/FAIL}     |
| Time to Interactive           | {X.Xs}    | {< 5s}   | {PASS/FAIL}     |
| Total Network Requests        | {N}       | {< 50}   | {PASS/FAIL}     |
| Total Transfer Size           | {X MB}    | {< 3 MB} | {PASS/FAIL}     |
| JavaScript Errors on Load     | {N}       | {0}       | {PASS/FAIL}     |
| Failed Network Requests       | {N}       | {0}       | {PASS/FAIL}     |

NOTE: Metrics captured via Playwright MCP browser automation.
For production performance audits, run Lighthouse separately.

================================================================
```

---

## SECTION 6: CONSOLE & NETWORK ERRORS

```
================================================================
CONSOLE & NETWORK ERRORS
================================================================

CONSOLE ERRORS:
| # | Page          | Error Message                       | Severity |
|---|--------------|-------------------------------------|----------|
| 1 | {/page-url}  | {Error text}                        | {Error/Warning} |
| 2 | {/page-url}  | {Error text}                        | {Error/Warning} |

{If none: "No console errors detected."}

NETWORK ERRORS:
| # | Page          | Request URL           | Status | Type    |
|---|--------------|----------------------|--------|---------|
| 1 | {/page-url}  | {/api/endpoint}      | {4xx/5xx} | {XHR/Fetch/Image} |
| 2 | {/page-url}  | {/resource}          | {4xx/5xx} | {Type}  |

{If none: "No network errors detected."}

================================================================
```

---

## SECTION 7: CRITICAL ISSUES

```
================================================================
CRITICAL ISSUES -- REQUIRES IMMEDIATE ATTENTION
================================================================

| #  | Severity | Persona  | Flow    | Description              | Impact                    | Fix Priority |
|----|----------|----------|---------|--------------------------|---------------------------|-------------|
| 1  | Critical | {Name}   | {Flow}  | {What is broken}         | {User cannot do X}        | Immediate   |
| 2  | High     | {Name}   | {Flow}  | {What is broken}         | {User struggles with X}   | This sprint |
| 3  | High     | {Name}   | {Flow}  | {What is broken}         | {User struggles with X}   | This sprint |

{If none: "No critical or high-severity issues found."}

================================================================
```

---

## SECTION 8: RECOMMENDATIONS

```
================================================================
RECOMMENDATIONS
================================================================

IMMEDIATE FIXES (before launch / next release):
1. {Specific fix with technical detail}
2. {Specific fix with technical detail}

SHORT-TERM IMPROVEMENTS (next sprint):
1. {Improvement with expected impact}
2. {Improvement with expected impact}

FUTURE ENHANCEMENTS:
1. {Enhancement for better UX}
2. {Enhancement for better UX}

RETEST REQUIRED:
- [ ] {Flow or feature that needs retesting after fixes}
- [ ] {Flow or feature that needs retesting after fixes}

================================================================
```

---

## SECTION 9: QUALITY CHECKLIST

```
================================================================
QUALITY CHECKLIST
================================================================

TEST COVERAGE:
- [ ] All personas from strategy phase represented
- [ ] Primary JTBD flow tested for each persona
- [ ] Both happy path and error states tested
- [ ] Mobile viewport tested (if applicable)

EVIDENCE:
- [ ] Screenshot captured at every step
- [ ] Console messages checked after every navigation
- [ ] Network requests checked for failures
- [ ] All issues have severity rating

REPORT:
- [ ] Summary table has accurate pass/fail counts
- [ ] Every issue has a recommendation
- [ ] Critical issues section highlights blockers
- [ ] Retest items listed for follow-up

HANDOFF:
- [ ] Report saved to test-results/ directory
- [ ] Summary stored in memory [PHASE:test:{Project}]
- [ ] Screenshots saved alongside report

================================================================
```
