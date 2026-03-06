---
description: "Check current pipeline status"
allowed-tools: Read, Bash, mcp__plugin_claude-mem_mcp-search__search
---

# Pipeline Status

Check if `.claude/pipeline.local.md` exists:

```!
test -f .claude/pipeline.local.md && echo "ACTIVE" || echo "NO_PIPELINE"
```

**If NO_PIPELINE:** Say "No active pipeline. Use `/pipeline:run` to start one."

**If ACTIVE:** Read `.claude/pipeline.local.md` and display:
- Project name
- Current phase (validate / build / launch)
- Mode (full-pipeline / single-plugin)
- Status
- Started at

## Plugin Discovery

Run the plugin discovery script to show which plugins are available:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/find-plugins.sh" 2>/dev/null || echo "Plugin discovery failed"
```

Report which plugins were found and which are missing.

## Claude-mem Availability

```!
command -v jq &>/dev/null && echo "jq: OK" || echo "jq: MISSING"
```

Check if claude-mem MCP tools are reachable by calling `mcp__plugin_claude-mem_mcp-search__search` with `limit` 1. Report whether memory is available.

## Phase Progress

Display progress through the pipeline phases:

| Phase | Status |
|-------|--------|
| validate | ? |
| build | ? |
| launch-strategy | ? |
| launch-coherence | ? |
| launch-execution | ? |

Mark the current phase as "IN PROGRESS", earlier phases as "COMPLETE", and later phases as "PENDING".

Also search memory using `search` MCP tool for the project name to show what phases have already completed.
