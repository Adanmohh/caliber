# Caliber

Raise the caliber. 23 AI agents that take you from idea to shipped product. A Claude Code plugin marketplace.

```
STRATEGY                                    EXECUTION
validate (3)  >  build (4)  >  launch (7)   craft (4) | document (2) | present (1) | demo (2)
Validate ideas   Build strategy  Go to market  Build it    Write it       Show it       Film it
```

## Quick Install

### All plugins (recommended)
```bash
claude plugin install caliber@Adanmohh/caliber
```
Select all 8 plugins when prompted.

### Individual plugins
```bash
claude plugin install validate@Adanmohh/caliber
claude plugin install build@Adanmohh/caliber
claude plugin install launch@Adanmohh/caliber
claude plugin install craft@Adanmohh/caliber
claude plugin install document@Adanmohh/caliber
claude plugin install present@Adanmohh/caliber
claude plugin install demo@Adanmohh/caliber
claude plugin install pipeline@Adanmohh/caliber
```

### npx installer (interactive)
```bash
npx caliberos
```

## Strategy Pipeline

### validate - Validate Ideas (3 experts)
| Expert | What it does |
|--------|-------------|
| **Value Mapper** | Maps value propositions using Osterwalder VPC + Jobs-to-be-Done + Identity Jobs |
| **Business Modeler** | Designs business models using BMC + AI-BMC + Blue Ocean Strategy |
| **Experiment Designer** | Designs validation experiments with prioritized test backlogs |

### build - Build Strategy (4 experts)
| Expert | What it does |
|--------|-------------|
| **Product Strategist** | Defines strategy using Reforge + Growth Loops + Cagan's Transformed |
| **Growth Designer** | Designs retention loops using Torres + Hooked Model + PLG |
| **Spec Writer** | Shapes buildable specs using Shape Up methodology |
| **Product Designer** | Creates production UI/UX with AI UX patterns |

### launch - Go to Market (7 experts)
| Expert | What it does |
|--------|-------------|
| **Offer Designer** | Designs irresistible offers using Hormozi's Value Equation + $100M Money Models |
| **Copywriter** | Writes conversion copy using Copyhackers + Ogilvy + Gary Vee |
| **Funnel Architect** | Architects conversion funnels using Brunson + Suby + AI-native patterns |
| **Growth Auditor** | Audits strategy coherence using Reforge Growth Loops + AI-era Four Fits |
| **Media Planner** | Plans paid media using Dennis Yu Dollar-a-Day + Meta Advantage+ |
| **SEO Strategist** | Designs SEO strategy using CXL + GEO methodology |
| **AI Search Optimizer** | Optimizes AI search visibility across ChatGPT, Perplexity, AI Overviews |

## Execution Plugins

### craft - Build Deliverables (4 agents)
| Agent | What it does |
|-------|-------------|
| **Landing Page Builder** | Builds conversion-optimized landing pages (React/HTML) |
| **MVP Scaffolder** | Scaffolds full-stack MVPs with auth, DB, API |
| **Component Designer** | Creates polished UI components (React + Tailwind) |
| **Tester** | Strategy-informed testing with Playwright (persona-based QA) |

### document - Write Documents (2 agents)
| Agent | What it does |
|-------|-------------|
| **Business Writer** | Business plans, SOPs, case studies, one-pagers |
| **Pitch Deck Writer** | Investor pitch decks and sales proposals (Marp to PDF/PPTX) |

### present - Create Presentations (1 agent)
| Agent | What it does |
|-------|-------------|
| **Slide Designer** | Professional slide decks from strategy outputs (Marp markdown) |

### demo - Produce Videos (2 agents)
| Agent | What it does |
|-------|-------------|
| **Demo Producer** | Full product demo videos (Playwright + ElevenLabs + Remotion) |
| **Clip Maker** | Short social clips for Instagram, TikTok, YouTube, LinkedIn |

### pipeline - Orchestration
Chains all strategy plugins into an automated 5-phase pipeline with Stop hook loop pattern.

## Usage

### Full strategy pipeline
```
/run My SaaS idea for project management
```
Runs all 14 strategy experts in sequence. Each expert asks you questions and builds on previous findings.

### Individual experts
```
/value-mapper AI tool that helps nurses track patient vitals
/offer-designer B2B SaaS at $99/mo for HR teams
/media-planner $3k/mo budget for Facebook and Google ads
```

### Execution
```
/landing-page Build a landing page from our launch outputs
/mvp Scaffold an MVP for our validated idea
/pitch-deck Create an investor pitch deck
/slides Turn our strategy into a board presentation
/product-demo Record a demo video of our web app
/social-clip Create Instagram Reels from our demo
```

## Requirements
- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
- Optional: [claude-mem](https://github.com/nicobailon/claude-mem) for cross-session memory

### For demo plugin
- Node.js + npm
- Playwright (`npm install playwright`)
- Remotion (`npx create-video@latest`)
- ffmpeg (`scoop install ffmpeg`)
- ElevenLabs API key (for voiceover)

## License
MIT
