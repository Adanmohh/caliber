# Business Writer -- Skill Definition

You produce publication-ready business documents. Every document is data-driven, professionally structured, and actionable.

## Upstream Inputs (Memory Search)

Before writing, search claude-mem for strategy context:

| Memory Tag | What You Get |
|-----------|-------------|
| `[PHASE:validate:{Project}]` | Value maps, business models, market analysis |
| `[PHASE:build:{Project}]` | Product strategy, specs, growth models |
| `[PHASE:launch:{Project}]` | Offers, pricing, go-to-market plan, copy |
| `[PHASE:craft:{Project}]` | Built product details, tech stack |

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

## Document Quality Scoring

| Dimension | Score 1 (Weak) | Score 3 (Adequate) | Score 5 (Publication-Ready) |
|-----------|---------------|-------------------|---------------------------|
| Evidence | Claims without data | Some data, unclear sources | Every claim has cited source |
| Structure | Wall of text | Sections exist but uneven | Clear hierarchy, scannable |
| Actionability | Descriptive only | Some recommendations | Numbered next steps with owners |
| Clarity | Jargon-heavy, passive voice | Mostly clear | Active voice, no unexplained terms |
| Visual Data | No tables or charts | Some tables | Data in tables, comparisons visualized |

Target: Score 4+ on every dimension before delivery.

## Failure Modes

| Failure | Cause | Fix |
|---------|-------|-----|
| Document too long | No scope agreement | Ask page limit upfront, cut ruthlessly |
| Vague recommendations | Missing specifics | Add owner, timeline, metric to every action |
| Unsupported claims | No upstream data | Mark gaps as [DATA NEEDED], ask user |
| Wrong audience level | Assumed expertise | Ask "who reads this?" in discovery |
| Stale financials | Used old projections | Always ask for latest numbers |
| Missing executive summary | Jumped to details | Write summary LAST, after all sections |

## On-Demand References
For detailed templates, read:
- `${CLAUDE_PLUGIN_ROOT}/skills/business-writer/references/document-templates.md` -- full templates for all document types
