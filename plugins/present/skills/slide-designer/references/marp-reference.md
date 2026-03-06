# Marp Markdown Reference

## Frontmatter

```yaml
---
marp: true
theme: default
paginate: true
header: "Company Name"
footer: "Confidential"
style: |
  section {
    font-family: 'Inter', sans-serif;
  }
---
```

## Slide Separators
- `---` separates slides
- `<!-- _class: lead -->` for special slide classes

## Directives

| Directive | Effect |
|-----------|--------|
| `<!-- _paginate: false -->` | Hide page number |
| `<!-- _header: "" -->` | Remove header |
| `<!-- _backgroundColor: #1a1a2e -->` | Dark background |
| `<!-- _color: white -->` | Text color |
| `<!-- _class: lead -->` | Centered layout |
| `<!-- _class: invert -->` | Dark theme |

### Global vs Local Directives
- **Global** (no underscore): `<!-- paginate: true -->` applies to all slides from that point
- **Local** (with underscore): `<!-- _paginate: false -->` applies to current slide only

## Speaker Notes

```markdown
<!-- Speaker notes go here. They appear in presenter mode but not on slides. -->
```

Multiple lines:
```markdown
<!--
These are speaker notes.
They can span multiple lines.
Use them for talking points and context.
-->
```

## Images

### Background Images
- `![bg](image.jpg)` — full background image
- `![bg left:40%](image.jpg)` — split layout with image on left
- `![bg right:60%](image.jpg)` — split with image on right
- `![bg contain](image.jpg)` — fit image to slide
- `![bg cover](image.jpg)` — cover entire slide
- `![bg blur:5px](image.jpg)` — blurred background
- `![bg brightness:0.5](image.jpg)` — darkened background
- `![bg opacity:0.3](image.jpg)` — semi-transparent background

### Multiple Backgrounds
```markdown
![bg](image1.jpg)
![bg](image2.jpg)
```
Displays images side by side.

### Inline Images
- `![w:300](image.jpg)` — set width
- `![h:200](image.jpg)` — set height
- `![w:300 h:200](image.jpg)` — set both

## Text Formatting
- `**bold**` — bold text
- `*italic*` — italic text
- `~~strikethrough~~` — strikethrough
- `` `code` `` — inline code
- `> blockquote` — blockquote (useful for quotes slide type)

## Lists
```markdown
- Unordered item
- Another item
  - Nested item

1. Ordered item
2. Another item
```

## Tables
```markdown
| Column A | Column B | Column C |
|----------|----------|----------|
| Data 1   | Data 2   | Data 3   |
| Data 4   | Data 5   | Data 6   |
```

## Code Blocks
````markdown
```javascript
const greeting = "Hello, World!";
console.log(greeting);
```
````

## Math (KaTeX)
- Inline: `$E = mc^2$`
- Block: `$$\sum_{i=1}^{n} x_i$$`

## Custom CSS Themes

### Inline Theme (in frontmatter)
```yaml
---
marp: true
style: |
  section {
    background: #0f172a;
    color: #e2e8f0;
    font-family: 'Inter', sans-serif;
    padding: 60px;
  }
  h1 { color: #3b82f6; font-size: 2.5em; }
  h2 { color: #60a5fa; border-bottom: 2px solid #3b82f6; }
---
```

### External Theme File
```css
/* @theme caliber */
@import 'default';

section {
  background: #0f172a;
  color: #e2e8f0;
  font-family: 'Inter', sans-serif;
  padding: 60px;
}

h1 { color: #3b82f6; font-size: 2.5em; }
h2 { color: #60a5fa; border-bottom: 2px solid #3b82f6; padding-bottom: 10px; }

section.lead {
  display: flex;
  flex-direction: column;
  justify-content: center;
  text-align: center;
}

section.lead h1 { font-size: 3.5em; }

section.invert {
  background: #ffffff;
  color: #0f172a;
}

table { width: 100%; border-collapse: collapse; }
th { background: #1e293b; color: #3b82f6; padding: 12px; }
td { padding: 10px; border-bottom: 1px solid #334155; }

blockquote {
  border-left: 4px solid #3b82f6;
  padding-left: 20px;
  font-style: italic;
  font-size: 1.3em;
}
```

## Two-Column Layout

```html
<div style="display: flex; gap: 40px;">
<div style="flex: 1;">

### Left Column
- Point 1
- Point 2

</div>
<div style="flex: 1;">

### Right Column
- Point 3
- Point 4

</div>
</div>
```

### Three-Column Layout
```html
<div style="display: flex; gap: 20px;">
<div style="flex: 1;">

### Column 1
Content here

</div>
<div style="flex: 1;">

### Column 2
Content here

</div>
<div style="flex: 1;">

### Column 3
Content here

</div>
</div>
```

## CLI Commands

| Command | Output |
|---------|--------|
| `npx @marp-team/marp-cli slides.md` | HTML |
| `npx @marp-team/marp-cli slides.md -o slides.pdf` | PDF |
| `npx @marp-team/marp-cli slides.md --pptx -o slides.pptx` | PowerPoint |
| `npx @marp-team/marp-cli slides.md --images png` | PNG per slide |
| `npx @marp-team/marp-cli slides.md --images jpeg` | JPEG per slide |
| `npx @marp-team/marp-cli --theme custom.css slides.md` | Custom theme |
| `npx @marp-team/marp-cli -w slides.md` | Watch mode (live reload) |
| `npx @marp-team/marp-cli -s ./` | Server mode (preview in browser) |
| `npx @marp-team/marp-cli --html slides.md` | Allow raw HTML |
| `npx @marp-team/marp-cli --pdf-notes slides.md -o slides.pdf` | PDF with speaker notes |

## Best Practices
- **6x6 rule:** max 6 bullets, max 6 words each (aim for even fewer)
- **One message per slide:** if you need two ideas, use two slides
- **Data slides:** use tables for comparisons, not bullet lists
- **Speaker notes:** always include them for presenter context
- **Title slides:** title + subtitle only, no extra content
- **Section breaks:** use `<!-- _class: lead -->` to visually separate major sections
- **Closing slide:** always end with a clear CTA or next-steps slide
- **Contrast:** ensure text is readable against backgrounds (WCAG AA minimum)
- **Consistent spacing:** use the same padding/margins throughout
- **File naming:** use descriptive names like `q4-strategy-review.md` not `slides.md`
