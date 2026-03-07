# Validate Plugin

Business idea exploration, ideation, and validation. Part of the **validate > build > launch** pipeline.

## Team Roster

| Expert | Frameworks | Purpose |
|--------|-----------|---------|
| **Value Mapper** | Osterwalder's Value Proposition Canvas, Christensen's Jobs-to-be-Done | Design and validate value propositions, map customer profiles |
| **Business Modeler** | Business Model Canvas, Blue Ocean Strategy | Design business models, find differentiation opportunities |
| **Experiment Designer** | Strategyzer Testing Business Ideas, ICE/RICE prioritization | Design validation experiments, prioritize assumptions to test |

## Installation

```bash
claude plugin install validate@Adanmohh/organtic
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

Runs all 3 experts in sequence: value proposition analysis, business model design, then experiment planning.

## Pipeline Flow

```
validate (this plugin)  -->  build  -->  launch
Validate ideas               Build strategy   Go to market
```

The validate plugin validates whether an idea is worth building. Once key assumptions are validated, hand off findings to the **build** plugin to begin product strategy.

## Full Pipeline

To run the full automated pipeline (validate > build > launch), install the **pipeline** plugin and use `/run`:

```bash
claude plugin install pipeline@Adanmohh/organtic
> /pipeline:run My SaaS idea for freelancers
```

See the [pipeline README](../pipeline/README.md) for details.
