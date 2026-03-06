---
name: test
description: Test a built product using strategy-informed personas and Playwright browser automation
agent: tester
args:
  - name: url
    description: URL of the application to test (e.g., http://localhost:5173)
    required: false
---

Test a built product against strategy-informed user personas. If a URL is provided, navigate directly to it. Otherwise, ask for the application URL. Search memory for upstream strategy outputs to create personas based on real user research, then execute browser-based tests using Playwright MCP. Generate a detailed test report with screenshots and pass/fail results per persona per flow.
