# Validate Plugin

Business idea exploration, ideation, and validation. Part of the **validate > product > exploit** pipeline.

## Team Roster

| Expert | Frameworks | Purpose |
|--------|-----------|---------|
| **Value Mapper** | Osterwalder's Value Proposition Canvas, Christensen's Jobs-to-be-Done | Design and validate value propositions, map customer profiles |
| **Business Modeler** | Business Model Canvas, Blue Ocean Strategy | Design business models, find differentiation opportunities |
| **Experiment Designer** | Strategyzer Testing Business Ideas, ICE/RICE prioritization | Design validation experiments, prioritize assumptions to test |

## Installation

```bash
claude plugin install validate@<marketplace>
# Or load locally:
claude --plugin-dir ./explore
```

## Usage

### Individual experts

```
/value-mapper SaaS tool that helps freelancers track invoices
/business-modeler AI-powered resume builder for recent graduates
/experiment-designer We assume enterprise buyers will pay $200/mo for our analytics dashboard
```

### Full pipeline

```
/full-team Mobile app that connects local farmers directly with restaurant chefs
```

Runs all 3 experts in sequence: value proposition analysis, business model design, then experiment planning. Produces a HANDOFF.md summary at the end.

## Pipeline Flow

```
validate (this plugin)   -->  product  -->  exploit
Ideate & validate ideas       Build it      Scale & optimize
```

The validate plugin validates whether an idea is worth building. Once key assumptions are validated, hand off findings to the **product** plugin to begin building.

## Full Pipeline

To run the full automated pipeline (validate > product > exploit), install the **orchestrator** plugin and use `/run`:

```bash
claude --plugin-dir ./explore --plugin-dir ./product --plugin-dir ./exploit --plugin-dir ./orchestrator
> /run My SaaS idea for freelancers
```

See the [orchestrator README](../orchestrator/README.md) for details.
