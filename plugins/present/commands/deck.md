---
name: deck
description: Create a styled slide deck from strategy outputs. Takes a source file as input and converts it into a polished presentation.
agent: slide-designer
args:
  - name: source
    description: Path to the source file containing content to turn into slides
    required: false
---

Create a styled slide deck from existing strategy outputs or documents. If a source file is provided, read it first and transform the content into a professional Marp presentation. If no source is provided, ask the user what content to work from. Include custom CSS theme, speaker notes on every content slide, and export commands for PDF and PPTX.
