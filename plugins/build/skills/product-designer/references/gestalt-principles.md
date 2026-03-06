# Gestalt Principles for UI/UX Design

## Source Attribution
- Primary: "Laws of UX" by Jon Yablonski (2020)
- Supporting: Max Wertheimer, Kurt Koffka, Wolfgang Kohler (Gestalt psychology founders)
- Applied context: Don Norman's "The Design of Everyday Things" (perceptual organization)

---

## Overview

Gestalt principles describe how the human visual system organizes individual
elements into coherent groups, patterns, and structures. In UI design, these
principles govern how users perceive layout, hierarchy, and relationships
between interface elements -- often without conscious awareness.

Applying these principles deliberately prevents common design failures where
users misgroup controls, miss important elements, or struggle to parse
information hierarchy.

---

## 1. Proximity

**Principle:** Elements placed close together are perceived as belonging to
the same group.

**UI Application:**
- Group related form fields together; separate logical sections with whitespace
- Place labels close to their associated inputs (closer than to adjacent fields)
- Cluster action buttons that relate to the same object
- Use card spacing to separate distinct content items

**Common Violations:**
- Equal spacing between all elements (no visual grouping)
- Label equidistant between two fields (ambiguous association)
- Related actions scattered across the interface

```
CORRECT                           INCORRECT
+-----------+                     +-----------+
| Name      |                     | Name      |
| [________]|                     | [________]|
| Email     |  <- close to input  |           |
| [________]|                     | Email     |  <- ambiguous
|           |  <- space between   | [________]|
| Password  |     groups          |           |
| [________]|                     | Password  |
+-----------+                     | [________]|
                                  +-----------+
```

---

## 2. Similarity

**Principle:** Elements sharing visual properties (color, shape, size, texture)
are perceived as related, even when spatially separated.

**UI Application:**
- Use consistent button styles for same-category actions
- Apply the same icon style across navigation items
- Color-code related status indicators
- Use typography weight/size consistently for the same content type

**Common Violations:**
- Primary actions styled differently on different pages
- Mixing icon styles (outline and filled) without semantic meaning
- Using similar colors for unrelated purposes

---

## 3. Continuity

**Principle:** The eye follows smooth lines, curves, and paths. Elements
arranged along a line or curve are perceived as more related than elements
not on the path.

**UI Application:**
- Align form fields along a vertical axis for scanning
- Use progress indicators that form a clear left-to-right or top-to-bottom path
- Arrange stepper components along a visible line
- Use alignment grids to create visual flow through the page

**Common Violations:**
- Misaligned elements that break the scanning path
- Random placement of elements without grid alignment
- Progress steps that jump positions across the page

---

## 4. Closure

**Principle:** The mind fills in missing information to complete familiar shapes
and patterns. Partially visible objects are perceived as whole.

**UI Application:**
- Horizontal scroll indicators: show partial cards at the edge to signal more content
- Use implied containers (partial borders) to group without heavy visual weight
- Truncated text with ellipsis signals more content exists
- Partially visible list items signal scrollability

**Common Violations:**
- Cutting content at exact container edges (no hint of more content)
- Using complete borders everywhere (visual heaviness, unnecessary)
- No indication that content continues beyond the viewport

---

## 5. Figure-Ground

**Principle:** The visual system separates a scene into a foreground (figure)
and background (ground). The figure receives attention; the ground recedes.

**UI Application:**
- Modals and dialogs: dim the background to push it to ground, elevate the dialog
  to figure with shadow and contrast
- Dropdown menus: elevate above the page surface
- Toast notifications: float above page content
- Active states: elevate selected items above siblings
- Use z-index, shadows, and backdrop overlays deliberately

**Common Violations:**
- Modals without backdrop dimming (unclear what is interactive)
- Flat dropdowns that do not visually separate from page content
- Competing visual layers without clear hierarchy

---

## 6. Common Fate

**Principle:** Elements that move in the same direction or change together are
perceived as a group.

**UI Application:**
- Accordion sections: content and toggle animate together
- Drag-and-drop: selected items move as a unit
- Loading states: related skeleton placeholders pulse in sync
- Collapse/expand transitions: grouped items animate together
- Scroll-linked animations: elements that scroll at the same rate feel grouped

**Common Violations:**
- Uncoordinated animations where related elements move independently
- Inconsistent transition timing between grouped elements
- Parallax effects that accidentally separate related content

---

## 7. Common Region

**Principle:** Elements enclosed within the same boundary are perceived as
a group, even if they differ in other visual properties.

**UI Application:**
- Cards: enclose related content within a bordered/shadowed container
- Form sections: group related fields within a fieldset or visual boundary
- Toolbars: enclose related actions within a shared background
- Table rows: alternating backgrounds reinforce row grouping

**Common Violations:**
- Overuse of cards (when proximity alone would suffice)
- Nested containers creating visual clutter
- Boundaries that enclose unrelated items

---

## Quick Reference Table

| Principle | Key Question | Design Lever |
|-----------|-------------|-------------|
| Proximity | Are related items close together? | Spacing, margins, padding |
| Similarity | Do related items look alike? | Color, shape, size, weight |
| Continuity | Does the eye flow smoothly through content? | Alignment, grids, paths |
| Closure | Can users infer what is partially hidden? | Truncation, partial visibility |
| Figure-Ground | Is the active layer clearly separated? | Shadow, overlay, contrast |
| Common Fate | Do related items change together? | Animation, transitions |
| Common Region | Are groups bounded visually? | Cards, borders, backgrounds |

---

## Application Checklist

When reviewing any design output, verify:

- [ ] Proximity: Related controls are grouped; unrelated controls are separated
- [ ] Similarity: Same-type elements share consistent visual styling
- [ ] Continuity: Content flows along clear visual paths with grid alignment
- [ ] Closure: Scrollable/expandable content hints at hidden elements
- [ ] Figure-Ground: Interactive overlays (modals, dropdowns) are clearly elevated
- [ ] Common Fate: Grouped elements animate/transition together
- [ ] Common Region: Logical sections use visual boundaries appropriately (not excessively)
