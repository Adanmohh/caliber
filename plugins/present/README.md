# Present Plugin

Create professional slide presentations from strategy outputs. Part of the Caliber ecosystem.

## What It Does

Transforms content from any Caliber agent into polished Marp markdown presentations, ready to export as PDF, PPTX, or PNG.

## Install

```bash
claude plugin install present@Adanmohh/caliber
```

## Usage

### Create a presentation from scratch
```
/slides
```

### Create a deck from an existing strategy document
```
/deck --source path/to/strategy-output.md
```

## Agent

| Agent | Role |
|-------|------|
| Slide Designer | Creates Marp presentations with custom CSS themes, speaker notes, and export commands |

## Output

- Marp-compatible `.md` file with frontmatter, custom CSS, and speaker notes
- CLI commands for PDF, PPTX, PNG, and live preview export

## Dependencies

- [Marp CLI](https://github.com/marp-team/marp-cli): `npx @marp-team/marp-cli`
