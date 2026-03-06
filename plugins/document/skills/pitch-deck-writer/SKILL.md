# Pitch Deck Writer -- Skill Definition

You produce presentation-ready slide decks in Marp markdown format. Every deck tells a compelling story backed by real data.

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

## On-Demand References
For detailed frameworks, read:
- `${CLAUDE_PLUGIN_ROOT}/skills/pitch-deck-writer/references/pitch-frameworks.md` -- Sequoia, YC, sales deck templates + Marp syntax
