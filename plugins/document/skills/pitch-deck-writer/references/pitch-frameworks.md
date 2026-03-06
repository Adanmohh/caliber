# Pitch Deck Frameworks Reference

## Sequoia Capital Template (10-12 slides)

| Slide | Content | Goal |
|-------|---------|------|
| 1. Title | Company name, tagline, logo, presenter | Set the stage |
| 2. Problem | Pain point with data, who feels it | Create urgency |
| 3. Solution | Your product/service, how it solves the problem | Show the fix |
| 4. Why Now | Market timing, trends, enabling technology | Justify timing |
| 5. Market Size | TAM / SAM / SOM with sources | Show opportunity |
| 6. Product | Screenshots, demo, key features (3 max) | Make it tangible |
| 7. Business Model | Revenue streams, pricing, unit economics | Show sustainability |
| 8. Traction | Metrics chart, growth rate, key milestones | Prove momentum |
| 9. Competition | 2x2 matrix positioning (not feature table) | Show differentiation |
| 10. Team | Founders + key hires, relevant wins | Build confidence |
| 11. Financials | 3-year projection, key assumptions, burn | Show path |
| 12. The Ask | Amount, use of funds, milestones to hit | Close the deal |

### Sequoia Slide Principles
- Each slide answers ONE question
- Lead with the insight, not the data
- Use the "So what?" test on every slide

---

## YC Demo Day Format (8 slides, 2 minutes)

| Slide | Time | Content |
|-------|------|---------|
| 1. Hook | 10s | One sentence that grabs attention |
| 2. Problem | 15s | The pain, quantified |
| 3. Solution | 15s | What you built |
| 4. Traction | 20s | The big number (MRR, growth %, users) |
| 5. How it works | 15s | 3-step or screenshot |
| 6. Market | 10s | TAM one-liner |
| 7. Team | 10s | Why you win |
| 8. Ask | 10s | Raising $X at $Y |

### YC Principles
- Traction is the star -- if you have it, lead with it
- No animations, no transitions, no gimmicks
- Practice until 2 minutes is second nature

---

## Sales Deck Structure (8-10 slides)

| Slide | Purpose |
|-------|---------|
| 1. Title | Company + prospect name (personalize) |
| 2. Their World | Show you understand their industry/challenges |
| 3. The Problem | Specific pain they feel (use their language) |
| 4. The Cost | What this problem costs them (time/money/risk) |
| 5. The Solution | Your product as the answer |
| 6. How It Works | Demo or walkthrough (3 steps max) |
| 7. Proof | Case study, testimonial, metrics from similar customer |
| 8. Pricing | Options table (3 tiers recommended) |
| 9. Next Steps | Clear CTA with timeline |
| 10. Q&A | Contact info, appendix slides if needed |

### Sales Deck Principles
- It's about THEM, not you
- Every slide should make them nod
- End with a specific next step and date

---

## Marp Markdown Quick Reference

### Basic Structure
```markdown
---
marp: true
theme: default
paginate: true
style: |
  section { font-family: 'Segoe UI', sans-serif; }
  h1 { color: #2d3748; }
---

# Slide Title

Content here

<!-- Speaker notes go here -->

---

# Next Slide

More content
```

### Directives
```markdown
<!-- _class: lead -->       # Center-aligned title slide
<!-- _paginate: false -->    # Hide page number
<!-- _backgroundColor: #1a1a2e --> # Dark background
<!-- _color: white -->       # White text
```

### Images
```markdown
![bg](image.png)            # Full background
![bg left](image.png)       # Split layout, image left
![bg right:40%](image.png)  # Split layout, image right 40%
![w:500](image.png)         # Inline, fixed width
```

### Multi-column (CSS)
```markdown
<div style="display: flex; gap: 2rem;">
<div>

**Left Column**
- Point 1
- Point 2

</div>
<div>

**Right Column**
- Point 3
- Point 4

</div>
</div>
```

---

## Partnership Proposal Deck (6-8 slides)

| Slide | Purpose |
|-------|---------|
| 1. Title | Your brand + "Partnership Proposal for [Partner Name]" |
| 2. Shared Vision | What you both believe about the market/industry |
| 3. The Opportunity | Specific gap that partnership fills, with market data |
| 4. What We Bring | Your unique assets, audience, technology, or distribution |
| 5. What You Bring | Their unique assets (shows you did your homework) |
| 6. Partnership Model | Structure: revenue share, co-marketing, integration, or reseller |
| 7. Success Metrics | Shared KPIs, measurement plan, timeline to first results |
| 8. Proposed Next Steps | Specific ask with timeline ("pilot program starting [date]") |

### Partnership Deck Principles
- It's 50/50 — show equal value, not "please partner with us"
- Research their strategy — reference their annual report, blog posts, recent moves
- Quantify the opportunity for THEM, not just for you
- Include a low-risk pilot option — partnerships start small

---

## Common Pitch Mistakes

| Mistake | Fix |
|---------|-----|
| Too much text per slide | Max 6 lines, use speaker notes for detail |
| No clear ask | State exact amount and use of funds on final slide |
| Feature dump | Show 3 key features max, link to product for rest |
| Vague market size | Use bottom-up TAM calculation, cite sources |
| No traction slide | If pre-traction, show waitlist, LOIs, pilot results |
| Generic competition slide | Use 2x2 matrix with unique axes, not feature checklist |
| Team slide with headshots only | Add one relevant accomplishment per person |
| No storytelling | Open with a customer story or surprising statistic |
| Ignoring the audience | Investor decks focus on returns; sales decks focus on ROI |
| Skipping speaker notes | Notes ensure consistent delivery across presenters |
