# AI-Native Business Model Patterns

Sources: Bessemer AI Pricing Playbook (2025), Osterwalder BMC extended for AI,
industry analysis of AI-native companies (2024-2026).

---

## 1. DECISION TREE: IS THIS AN AI-NATIVE BUSINESS?

```
Does the core value proposition require AI/ML to function?
  YES --> Use AI-BMC (this document) alongside standard BMC
  NO  --> Does AI enhance the value proposition significantly?
    YES --> Use standard BMC + add AI extensions from Section 2
    NO  --> Use standard BMC only (skip this document)

If AI-BMC applies, determine the AI role:
  AI IS the product (e.g., ChatGPT, Midjourney) --> Full AI-BMC
  AI enhances the product (e.g., Grammarly, Spotify recs) --> Standard BMC + AI cost/moat sections
  AI automates operations (e.g., AI customer support) --> Standard BMC + AI cost section only
```

---

## 2. AI-BMC EXTENSIONS (4 Additional Blocks)

Add these blocks alongside the standard 9-block canvas when AI is core:

| Extension Block       | What to Document                                      | Key Questions                                    |
|----------------------|-------------------------------------------------------|--------------------------------------------------|
| AI Data Sources      | Training data, real-time data, user-generated data    | What data do we need? Do we have rights to it?   |
| Model Architecture   | Foundation model vs fine-tuned vs custom, hosting      | Build vs buy vs API? On-device vs cloud?         |
| AI Ethics/Governance | Bias mitigation, explainability, compliance            | EU AI Act risk tier? YMYL domain? Audit process? |
| Inference Economics  | Cost per query, latency targets, scaling curve         | What does each API call cost? How does it scale? |

---

## 3. AI-NATIVE REVENUE MODELS

| Revenue Model               | How It Works                                          | Best For                        | Risk Level | Example                    |
|-----------------------------|-------------------------------------------------------|---------------------------------|------------|----------------------------|
| Per-token / API-call        | Charge per unit of AI usage                           | Developer platforms, APIs       | Medium     | OpenAI API, AWS Bedrock    |
| Outcome-based               | Charge when AI delivers measurable result             | High-value decisions, sales     | High       | AI legal review, AI hiring |
| AI-enhanced freemium        | Free basic features, AI power features behind paywall | Consumer/prosumer apps          | Medium     | Grammarly, Canva AI        |
| Usage-based + seat floor    | Base per-seat fee + variable AI usage charges         | B2B SaaS with AI features      | Low        | GitHub Copilot, Notion AI  |
| Data-network-effect moat    | Free/cheap entry, value grows with user data          | Platforms with learning loops   | High       | Waze, Tesla FSD            |
| Subscription + AI credits   | Fixed monthly fee includes N AI operations            | Predictable billing for users   | Low        | Jasper, Copy.ai            |
| Revenue share / commission  | AI generates revenue, platform takes percentage       | AI agents acting on behalf      | High       | AI sales agents, AI traders|

### Revenue Model Selection Decision Tree

```
Is AI output high-value and measurable?
  YES --> Outcome-based or revenue share
  NO  --> Is usage highly variable across users?
    YES --> Usage-based + seat floor OR per-token
    NO  --> Is there a clear free-to-paid upgrade path?
      YES --> AI-enhanced freemium OR subscription + credits
      NO  --> Subscription with tiered AI limits
```

---

## 4. AI COST STRUCTURE

| Cost Category        | Description                              | Scaling Behavior      | Typical % of COGS | Optimization Levers                    |
|---------------------|------------------------------------------|-----------------------|--------------------|----------------------------------------|
| Inference compute   | Per-query GPU/API cost                   | Linear with usage     | 40-70%             | Model distillation, caching, batching  |
| Training compute    | Model training/fine-tuning runs          | Periodic spikes       | 5-20%              | Smaller models, transfer learning      |
| Data acquisition    | Purchasing/licensing training data       | Front-loaded          | 5-15%              | User-generated data, synthetic data    |
| Model maintenance   | Retraining, drift monitoring, evaluation | Ongoing, predictable  | 5-10%              | Automated pipelines, monitoring        |
| GPU amortization    | Hardware depreciation (if self-hosted)   | Fixed                 | 10-30%             | Cloud vs own, spot instances           |
| Human-in-the-loop   | Review, correction, safety monitoring    | Semi-linear           | 5-15%              | Better models reduce HITL needs        |

### Key Metric: Inference Cost Ratio

```
Inference Cost Ratio = Inference Cost per Query / Revenue per Query

< 0.10: Excellent margin -- scale aggressively
0.10-0.30: Healthy -- standard SaaS-like economics
0.30-0.50: Tight -- optimize model or increase price
> 0.50: Unsustainable -- rethink model size, caching, or pricing
```

---

## 5. AI COMPETITIVE MOATS

| Moat Type                | How It Works                                          | Strength | Time to Build | Defensibility |
|--------------------------|-------------------------------------------------------|----------|---------------|---------------|
| Proprietary data flywheel| More users --> more data --> better model --> more users| Strong   | 12-24 months  | High          |
| Fine-tuning advantage    | Domain-specific fine-tuning on proprietary corpus      | Medium   | 3-6 months    | Medium        |
| Embedding lock-in        | Users' data embedded in your system (workflows, history)| Strong  | 6-12 months   | High          |
| Switching costs          | Integration depth, learned preferences, custom configs | Medium   | 3-6 months    | Medium        |
| Speed/latency advantage  | Custom infrastructure for faster inference             | Weak     | 1-3 months    | Low           |
| Regulatory compliance    | First to achieve certification in regulated domain     | Strong   | 6-18 months   | High          |
| Brand trust (YMYL)       | Established trust in high-stakes domains               | Strong   | 12-36 months  | High          |

### Moat Assessment Scoring

Score each moat dimension 1-5 for your business. Total >= 20 indicates strong defensibility.

```
Data flywheel:        [1-5]  (5 = unique, growing, proprietary dataset)
Fine-tuning depth:    [1-5]  (5 = years of domain-specific training data)
Embedding lock-in:    [1-5]  (5 = deeply integrated into user workflows)
Switching costs:      [1-5]  (5 = months of migration effort for users)
Regulatory position:  [1-5]  (5 = certified/approved, competitors are not)
Brand trust:          [1-5]  (5 = recognized authority in domain)

Total: [X]/30
  25-30: Strong moat -- defensible position
  18-24: Moderate moat -- some protection, invest in weakest areas
  12-17: Weak moat -- vulnerable to well-funded competitors
  < 12:  No moat -- commoditization risk is high
```

---

## 6. AI RISK FACTORS

| Risk Category        | Specific Risk                                          | Likelihood | Impact | Mitigation Strategy                      |
|---------------------|--------------------------------------------------------|------------|--------|------------------------------------------|
| Hallucination       | AI produces confident but incorrect outputs            | High       | High   | Guardrails, HITL review, confidence scores|
| Regulation          | EU AI Act compliance, sector-specific rules            | Medium     | High   | Risk tier assessment, compliance roadmap  |
| Model dependency    | Upstream provider changes API, pricing, or terms       | Medium     | High   | Multi-model architecture, abstraction layer|
| Commoditization     | Foundation model improvements erase your advantage     | High       | Medium | Build moats in data/UX, not just AI       |
| Vendor lock-in      | Tied to single cloud/model provider                    | Medium     | Medium | Provider-agnostic architecture            |
| Cost volatility     | Inference costs change unpredictably                   | Medium     | Medium | Usage caps, cost monitoring, model optimization|
| Data privacy        | Training/inference on sensitive user data              | Medium     | High   | On-device processing, data minimization   |
| Model obsolescence  | New model generation makes yours irrelevant            | High       | Medium | Modular architecture, rapid adoption capability|

### EU AI Act Risk Tiers (Quick Reference)

```
Unacceptable Risk --> Banned (social scoring, real-time biometric ID)
High Risk         --> Strict compliance (healthcare, hiring, credit, education)
Limited Risk      --> Transparency obligations (chatbots, deepfakes)
Minimal Risk      --> No specific obligations (spam filters, games)

Your product's tier: ___
Action required:    ___
```

---

## 7. AI-BMC QUICK DIAGNOSTIC

Before completing a full AI-BMC, answer these 5 questions:

| # | Question                                              | Answer          | Implication                              |
|---|-------------------------------------------------------|-----------------|------------------------------------------|
| 1 | Does removing AI remove the core value proposition?   | Yes/No          | Yes = AI-native; No = AI-enhanced        |
| 2 | What is your inference cost per user per month?       | $___            | > $5/user/mo = pricing pressure          |
| 3 | Do you have a proprietary data advantage?             | Yes/Partial/No  | No = commoditization risk                |
| 4 | Which EU AI Act risk tier applies?                    | Tier: ___       | High = compliance cost + barrier to entry|
| 5 | Can a competitor replicate your AI with a foundation model API call? | Yes/No | Yes = no AI moat, differentiate elsewhere |
