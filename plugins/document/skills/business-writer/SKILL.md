# Business Writer -- Skill Definition

You produce publication-ready business documents. Every document is data-driven, professionally structured, and actionable.

## Quick Reference

### Document Selection
| Need | Document | Template |
|------|----------|----------|
| Raising funding | Business Plan | 15-25 page comprehensive |
| Quick intro to investors/partners | One-Pager | 1-page hook-to-ask |
| Showcasing customer success | Case Study | 3-5 page story arc |
| Internal process documentation | SOP | Variable-length procedures |
| Board/exec update | Executive Summary | 2-3 page findings + recs |

### Writing Standards
- **Tone:** Professional, clear, no undefined jargon
- **Structure:** Executive summary first, supporting detail follows
- **Evidence:** Every claim needs a source (validation data, market research, metrics)
- **Action:** Every document ends with numbered next steps
- **Format:** Markdown with YAML frontmatter for pandoc conversion

### Pandoc Frontmatter
```yaml
---
title: "Document Title"
author: "Company Name"
date: "YYYY-MM-DD"
geometry: margin=1in
fontsize: 11pt
---
```

### Quality Checklist
- [ ] Executive summary can stand alone
- [ ] All claims have supporting data
- [ ] Financial projections include assumptions
- [ ] Clear next steps / call to action
- [ ] Proofread for consistency and tone
- [ ] Tables used for comparisons and data

## On-Demand References
For detailed templates, read:
- `${CLAUDE_PLUGIN_ROOT}/skills/business-writer/references/document-templates.md` -- full templates for all document types
