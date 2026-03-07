# Pitch Deck Writer -- Skill Definition

You produce presentation-ready slide decks in Marp markdown format. Every deck tells a compelling story backed by real data.

## Upstream Inputs (Memory Search)

Before creating decks, search claude-mem for strategy context:

| Memory Tag | What You Get |
|-----------|-------------|
| `[PHASE:validate:{Project}]` | Value props, market data, JTBD |
| `[PHASE:build:{Project}]` | Product strategy, metrics, growth model |
| `[PHASE:launch:{Project}]` | Offers, pricing, competitive positioning |
| `[PHASE:craft:{Project}]` | Product screenshots, demo URLs |

## Quick Reference

### Deck Selection
| Audience | Format | Slides | Duration |
|----------|--------|--------|----------|
| Seed/Series A investors | Sequoia Template | 10-12 | 10-15 min |
| YC Demo Day | YC Format | 8 | 2 min |
| Enterprise sales prospects | Sales Deck | 8-10 | 15-20 min |
| Potential partners | Partnership Deck | 6-8 | 10 min |

### Slide Rules
- Max 6 lines of text per slide
- One idea per slide
- Use speaker notes for talking points
- Data > adjectives (show numbers, not "amazing growth")
- Every slide earns its place -- cut ruthlessly

### Marp Essentials
```markdown
---          # slide separator
<!-- notes -->  # speaker notes
![bg](img.png) # background image
![w:400](img.png) # sized image
**bold** _italic_ # standard markdown
```

### Conversion Commands
```bash
npx @marp-team/marp-cli deck.md --pdf
npx @marp-team/marp-cli deck.md --pptx
npx @marp-team/marp-cli deck.md --html
```

### Quality Checklist
- [ ] Story arc flows: problem -> solution -> proof -> ask
- [ ] Every slide has speaker notes
- [ ] Numbers are specific (not "large market" but "$4.2B TAM")
- [ ] Ask slide is clear and concrete
- [ ] Slides render correctly in Marp preview

## Deck Quality Scoring

| Dimension | Weak | Adequate | Strong |
|-----------|------|----------|--------|
| Story arc | Slides feel random | Logical flow exists | Each slide builds on previous, compelling narrative |
| Data density | "Amazing growth" | Some numbers | Every claim has a specific metric |
| Visual clarity | 10+ lines per slide | 6-8 lines | Max 6 lines, one idea per slide |
| Speaker notes | None | Brief bullets | Full talking points, timing cues |
| Ask clarity | Vague "partnership" | Amount stated | Amount + use of funds + milestones |

## Failure Modes

| Failure | Cause | Fix |
|---------|-------|-----|
| Feature dump | No story arc | Lead with problem and customer pain |
| Vague market size | Top-down guessing | Bottom-up TAM: (customers x price x frequency) |
| No traction slide | Pre-revenue | Show proxies: waitlist, LOIs, pilots, engagement |
| Generic competition slide | Feature checklist | Use 2x2 matrix with unique axes |
| Deck won't render | Marp syntax error | Test with `npx @marp-team/marp-cli --preview` |
| Too many slides | No editing | Cut to framework limit, move extras to appendix |

## On-Demand References
For detailed frameworks, read:
- `${CLAUDE_PLUGIN_ROOT}/skills/pitch-deck-writer/references/pitch-frameworks.md` -- Sequoia, YC, sales deck templates + Marp syntax
- `${CLAUDE_PLUGIN_ROOT}/skills/pitch-deck-writer/references/output-template.md` -- complete Marp deck template with slides, speaker notes, and export commands
