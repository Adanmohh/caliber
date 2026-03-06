---
description: "Resume a pipeline from a specific phase for an existing project"
argument-hint: "<validate|build|launch> [project name]"
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion, mcp__plugin_claude-mem_mcp-search__search, mcp__plugin_claude-mem_mcp-search__get_observations, mcp__plugin_claude-mem_mcp-search__timeline
---

# Resume Pipeline

This command resumes a pipeline from a specific phase. Useful when:
- A previous pipeline was interrupted
- You want to re-run a phase with updated information
- You want to skip to a later phase because earlier phases were done separately

Execute the setup script with the specified start phase:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/setup-pipeline.sh" --start-phase $ARGUMENTS
```

**Before starting:** Search claude-mem for prior phase work:
1. Call `mcp__plugin_claude-mem_mcp-search__search` with NO query — use filters only: `limit` 30
2. Scan the index for observations mentioning "{ProjectName}", "validate", "build", "launch", or "pipeline"
3. Call `mcp__plugin_claude-mem_mcp-search__get_observations` with relevant IDs to get full details

Review what prior phases have been completed and build on their findings.

Then proceed with the current phase protocol as defined in the pipeline run command.
