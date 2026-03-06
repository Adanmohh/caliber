---
description: "Cancel the active pipeline"
allowed-tools: Bash, Read
---

# Cancel Pipeline

1. Check if `.claude/pipeline.local.md` exists using Bash: `test -f .claude/pipeline.local.md && echo "EXISTS" || echo "NOT_FOUND"`

2. **If NOT_FOUND:** Say "No active pipeline to cancel."

3. **If EXISTS:**
   - Read `.claude/pipeline.local.md` to get the project name and current phase
   - Remove the file using Bash: `rm .claude/pipeline.local.md`
   - Report: "Cancelled pipeline for [project name] (was at phase: [phase])"
   - Note: Memory from completed phases is preserved and can be retrieved in future sessions
