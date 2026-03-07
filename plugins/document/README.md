# Document Plugin

Professional business document generation for the Organtic ecosystem.

## Agents

| Agent | Produces | Output Format |
|-------|----------|---------------|
| Business Writer | Business plans, one-pagers, case studies, SOPs, executive summaries | Markdown (pandoc-ready) |
| Pitch Deck Writer | Investor pitch decks, sales decks, partnership proposals | Marp markdown (PDF/PPTX-ready) |

## Commands

| Command | Description | Agent |
|---------|-------------|-------|
| `business-plan` | Generate a comprehensive business plan | Business Writer |
| `one-pager` | Create a one-page business summary | Business Writer |
| `case-study` | Write a customer case study | Business Writer |
| `pitch-deck` | Create an investor pitch deck | Pitch Deck Writer |

## Install

```bash
claude plugin add C:\Users\Omistaja\document
```

## Usage Examples

```
> /business-plan
> /one-pager
> /case-study
> /pitch-deck
```

Or invoke agents directly:

```
> Write a business plan for our SaaS product targeting HR teams
> Create a Series A pitch deck -- we have $50K MRR and 200 customers
> Generate a case study about how Acme Corp reduced churn by 40%
```

## Pipeline Position

This plugin consumes outputs from upstream strategy plugins:

```
[validate] --> [build] --> [launch] --> [document]
```

The Document plugin turns strategy findings into publication-ready deliverables for investors, partners, customers, and internal teams.

## Output Conversion

**Business documents (pandoc):**
```bash
pandoc document.md -o document.pdf
```

**Pitch decks (Marp):**
```bash
npx @marp-team/marp-cli deck.md --pdf
npx @marp-team/marp-cli deck.md --pptx
```
