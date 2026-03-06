---
description: "Run one plugin's full expert team (validate, build, or launch)"
argument-hint: "<validate|build|launch> [project name]"
allowed-tools: Read, Glob, Grep, Bash, WebSearch, Write, Agent, AskUserQuestion
---

# Run Single Plugin Team

Execute the setup script in single-plugin mode:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/setup-pipeline.sh" --mode single-plugin $ARGUMENTS
```

Parse the first argument to determine which plugin to run:
- If it starts with "validate" → run the validate full-team protocol
- If it starts with "build" → run the build full-team protocol
- If it starts with "launch" → run the launch full-team protocol

**Before starting:** Search memory for existing project context using `search` MCP tool. Look for `[VALIDATE:]`, `[BUILD:]`, `[LAUNCH:]` tags with the project name.

Then load ALL skill files and references for every expert in that plugin and run the full orchestration protocol as defined in that plugin's full-team command.

Ask the user questions as needed using AskUserQuestion.

After completion, save findings to memory with the appropriate phase tag:
- `[VALIDATE:pipeline-complete:{ProjectName}]`
- `[BUILD:pipeline-complete:{ProjectName}]`
- `[LAUNCH:pipeline-complete:{ProjectName}]`
