# Cross-Agent Handoff Schema

## Standard Handoff Block Format

Every expert produces a handoff block at the end of their output:

### HANDOFF: {ExpertName} → {DownstreamExpert(s)}

**Key Outputs:**
- {Bullet list of 3-5 key deliverables with their scores/metrics}

**Decisions Made:**
- {Bullet list of key decisions that downstream experts should NOT revisit}

**Open Questions:**
- {Bullet list of unresolved questions for downstream experts}

**Critical Constraints:**
- {Any constraints downstream experts must respect}

## Phase Handoff Tags

Phase-level summaries use memory tags:
- [VALIDATE:pipeline-complete:{ProjectName}]
- [BUILD:pipeline-complete:{ProjectName}]
- [LAUNCH:strategy-complete:{ProjectName}]
- [LAUNCH:coherence-complete:{ProjectName}]
- [LAUNCH:pipeline-complete:{ProjectName}]
