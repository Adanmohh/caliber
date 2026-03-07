# Slide Designer -- Output Template

> Every presentation is a complete Marp markdown file with custom CSS theme, speaker notes, and export-ready frontmatter. Use the Slide Type Decision Tree in SKILL.md to choose layouts.

---

## OUTPUT STRUCTURE OVERVIEW

```
PRESENTATION STRUCTURE:

1. Title Slide (lead layout)
2. Agenda / Overview
3. Content Slides (mix of types)
4. Summary / Key Takeaways
5. CTA / Next Steps
6. Q&A
7. Appendix (optional)
```

---

## MARP PRESENTATION TEMPLATE

````markdown
---
marp: true
theme: default
paginate: true
header: '{Company Name}'
footer: '{Presentation Title} | {Date}'
style: |
  :root {
    --color-primary: {#hex-primary};
    --color-accent: {#hex-accent};
    --color-bg: {#hex-background};
    --color-bg-alt: {#hex-alt-background};
    --color-text: {#hex-text};
    --color-text-muted: {#hex-muted};
    --font-display: '{Display Font}', sans-serif;
    --font-body: '{Body Font}', sans-serif;
  }
  section {
    background: var(--color-bg);
    color: var(--color-text);
    font-family: var(--font-body);
    padding: 60px;
  }
  h1 {
    font-family: var(--font-display);
    color: var(--color-primary);
    font-size: 2.4em;
    margin-bottom: 0.3em;
  }
  h2 {
    font-family: var(--font-display);
    color: var(--color-accent);
    font-size: 1.6em;
  }
  h3 {
    color: var(--color-text-muted);
    font-size: 1.2em;
  }
  table {
    font-size: 0.85em;
    width: 100%;
  }
  blockquote {
    border-left: 4px solid var(--color-accent);
    padding-left: 1em;
    font-style: italic;
    color: var(--color-text-muted);
  }
  /* Two-column layout */
  .columns {
    display: flex;
    gap: 40px;
  }
  .columns > * {
    flex: 1;
  }
  /* Highlight box */
  .highlight {
    background: var(--color-bg-alt);
    padding: 20px;
    border-radius: 8px;
    border-left: 4px solid var(--color-accent);
  }
---

<!-- _class: lead -->
<!-- _paginate: false -->
<!-- _header: '' -->
<!-- _footer: '' -->

# {Presentation Title}

## {Subtitle or tagline}

**{Presenter Name}** | {Role}
{Date}

<!-- Speaker notes: Welcome the audience, introduce yourself, set expectations for timing and Q&A. -->

---

# Agenda

1. {Topic 1}
2. {Topic 2}
3. {Topic 3}
4. {Topic 4}
5. Key Takeaways & Next Steps

<!-- Speaker notes: Walk through the agenda. Set the audience's expectations for what they'll take away. -->

---

<!-- _class: lead -->

# {Section 1 Title}

<!-- Speaker notes: Transition into first section. Bridge from agenda to first topic. -->

---

# {Content Slide -- Bullets}

- **{Point 1}** -- {supporting detail}
- **{Point 2}** -- {supporting detail}
- **{Point 3}** -- {supporting detail}
- **{Point 4}** -- {supporting detail}

<!-- Speaker notes: {Talking points, examples, elaboration for presenter} -->

---

# {Data Slide -- Table}

| {Column 1} | {Column 2} | {Column 3} | {Column 4} |
|------------|-----------|-----------|-----------|
| {Data}     | {Data}    | {Data}    | {Data}    |
| {Data}     | {Data}    | {Data}    | {Data}    |
| {Data}     | {Data}    | {Data}    | {Data}    |

**Key insight:** {One sentence interpreting the data}

<!-- Speaker notes: Walk through the data. Highlight the most important row or trend. -->

---

# {Comparison Slide -- Two Column}

<div class="columns">
<div>

### {Option A / Before}
- {Point 1}
- {Point 2}
- {Point 3}

</div>
<div>

### {Option B / After}
- {Point 1}
- {Point 2}
- {Point 3}

</div>
</div>

<!-- Speaker notes: Contrast the two sides. Emphasize the key differentiator. -->

---

# {Quote Slide}

> "{Impactful quote or customer testimonial that reinforces the key message}"
>
> -- **{Attribution}**, {Title/Context}

<!-- Speaker notes: Pause for effect after reading the quote. Connect it to the next point. -->

---

# {Image Slide}

![bg right:50%]({./images/filename.png})

## {Title}

- {Point about the image}
- {Point about the image}

<!-- Speaker notes: Describe what the image shows and why it matters. -->

---

# {Metrics / KPI Slide}

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| {KPI 1} | {target} | {actual} | {on-track / at-risk / behind} |
| {KPI 2} | {target} | {actual} | {on-track / at-risk / behind} |
| {KPI 3} | {target} | {actual} | {on-track / at-risk / behind} |

<!-- Speaker notes: Focus on the story behind the numbers, not just the numbers themselves. -->

---

# {Highlight Box Slide}

<div class="highlight">

**{Key Insight or Callout}**

{2-3 sentences expanding on the insight with supporting evidence}

</div>

- {Supporting point}
- {Supporting point}

<!-- Speaker notes: This is the "if you remember one thing" slide. Emphasize the highlight. -->

---

<!-- _class: lead -->

# Key Takeaways

---

# Summary

1. **{Takeaway 1}** -- {one sentence}
2. **{Takeaway 2}** -- {one sentence}
3. **{Takeaway 3}** -- {one sentence}

<!-- Speaker notes: Recap the three most important points. Connect back to the agenda promises. -->

---

# Next Steps

| # | Action | Owner | Deadline |
|---|--------|-------|----------|
| 1 | {Action item} | {Name/role} | {Date} |
| 2 | {Action item} | {Name/role} | {Date} |
| 3 | {Action item} | {Name/role} | {Date} |

<!-- Speaker notes: Be clear about who does what by when. Ask for commitment. -->

---

<!-- _class: lead -->

# Q&A

{Contact email or URL}

<!-- Speaker notes: Open the floor. Have appendix slides ready for anticipated deep-dive questions. -->

---

# Appendix

_Additional slides for reference -- not presented in main deck._

<!-- Add appendix slides below: detailed data, methodology, extended comparisons -->
````

---

## EXPORT COMMANDS

```bash
# PDF
npx @marp-team/marp-cli {filename}.md --pdf --allow-local-files

# PPTX
npx @marp-team/marp-cli {filename}.md --pptx --allow-local-files

# HTML
npx @marp-team/marp-cli {filename}.md --html --allow-local-files

# PNG (one image per slide)
npx @marp-team/marp-cli {filename}.md --images png --allow-local-files

# Preview with live reload
npx @marp-team/marp-cli {filename}.md --preview
```

---

## QUALITY CHECKLIST

```
================================================================
QUALITY CHECKLIST
================================================================

STRUCTURE:
- [ ] Title slide uses `<!-- _class: lead -->` with no pagination
- [ ] Agenda slide present and matches actual content
- [ ] Section breaks use lead-class title slides
- [ ] Summary recaps key points (not new content)
- [ ] Final slide has clear CTA or Q&A prompt

CONTENT:
- [ ] Max 6 lines of text per slide
- [ ] One idea per slide
- [ ] Data in tables, not paragraphs
- [ ] Every claim has supporting evidence
- [ ] Bullets start with bold keyword

SPEAKER NOTES:
- [ ] Every content slide has speaker notes
- [ ] Notes include transition to next slide
- [ ] Notes suggest timing

VISUAL DESIGN:
- [ ] Custom CSS theme with brand colors
- [ ] Color contrast passes WCAG AA (4.5:1)
- [ ] Consistent margins (60px minimum)
- [ ] Max 2 font families
- [ ] Images use `![bg]` syntax with sizing

TECHNICAL:
- [ ] `marp: true` in frontmatter
- [ ] `paginate: true` set
- [ ] Slide separators (`---`) correct
- [ ] Renders clean in `--preview` mode
- [ ] PDF export has expected slide count

================================================================
```
