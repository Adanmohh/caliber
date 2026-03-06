# SEO Strategist Output Templates

> Complete structured output templates for all SEO Strategist deliverables. Each template includes scoring systems, quality checklists, and measurement frameworks. Based on CXL/Peep Laja methodology and agentic execution patterns.

---

## Pre-Launch Venture Guidance

For pre-launch ventures: Focus on foundation-building over optimization. Use projected metrics labeled [PROJECTED]. Prioritize organic/low-budget channels. Note where live data is needed before scaling.

## How to Use These Templates

The SEO Strategist fills out the applicable sections below for each engagement. Every deliverable must be:

1. **Data-driven**: Every recommendation cites specific data (traffic, difficulty, competitor benchmarks)
2. **Scored**: All categories use the 1-5 scoring systems defined in reference files
3. **Prioritized**: Findings categorized into CXL action buckets (Just Do It, Test, Instrument, Hypothesize, Investigate)
4. **Actionable**: Each item includes specific implementation steps, not vague advice
5. **Measurable**: Every recommendation includes success criteria and measurement approach

Sections marked [REQUIRED] are always completed. Sections marked [AS APPLICABLE] are included when relevant.

---

# TEMPLATE 1: Technical SEO Audit Report

## Document Metadata

| Field | Value |
|---|---|
| Project | [Client/brand name] |
| Date | [YYYY-MM-DD] |
| Scope | [Full audit / Partial audit / Specific focus] |
| Data sources | [List: crawl tool, search console, log files, speed tests, etc.] |
| Data period | [Date range analyzed] |
| Competitors benchmarked | [List 3-5 competitor domains] |

---

## 1. Technical Health Scorecard [REQUIRED]

### 1.1 Composite Score

```
+------------------------------------------------------------------+
|  TECHNICAL SEO COMPOSITE SCORE: [X.X] / 5.0  |  GRADE: [A-F]    |
+------------------------------------------------------------------+
|                                                                    |
|  Crawlability:     [X] / 5  [====------]  Weight: 20%            |
|  Indexation:        [X] / 5  [====------]  Weight: 15%            |
|  Core Web Vitals:  [X] / 5  [====------]  Weight: 20%            |
|  Site Architecture: [X] / 5  [====------]  Weight: 15%            |
|  Page Speed:       [X] / 5  [====------]  Weight: 10%            |
|  Mobile-First:     [X] / 5  [====------]  Weight: 10%            |
|  Structured Data:  [X] / 5  [====------]  Weight: 5%             |
|  JavaScript SEO:   [X] / 5  [====------]  Weight: 5%             |
|                                                                    |
+------------------------------------------------------------------+
|  Composite = (Crawl*0.20) + (Index*0.15) + (CWV*0.20)            |
|            + (Arch*0.15) + (Speed*0.10) + (Mobile*0.10)           |
|            + (Schema*0.05) + (JS*0.05)                            |
+------------------------------------------------------------------+
```

### 1.2 Category Detail Scores

For each category, provide:

**[Category Name]: Score [X] / 5**

| Sub-factor | Score | Finding | Impact |
|---|---|---|---|
| [sub-factor 1] | [1-5] | [specific finding] | [High/Medium/Low] |
| [sub-factor 2] | [1-5] | [specific finding] | [High/Medium/Low] |
| [sub-factor 3] | [1-5] | [specific finding] | [High/Medium/Low] |

---

## 2. Crawl Health Summary [REQUIRED]

| Metric | Current Value | Benchmark | Status | Score |
|---|---|---|---|---|
| Total pages crawled | [number] | -- | -- | -- |
| Indexable pages | [number] | -- | -- | -- |
| Non-indexable pages | [number] (% of total) | <10% | [OK/Warning/Critical] | [1-5] |
| Orphan pages | [number] | 0 | [OK/Warning/Critical] | [1-5] |
| Broken internal links (4xx) | [number] | 0 | [OK/Warning/Critical] | [1-5] |
| Server errors (5xx) | [number] | 0 | [OK/Warning/Critical] | [1-5] |
| Redirect chains (2+ hops) | [number] | 0 | [OK/Warning/Critical] | [1-5] |
| Duplicate content issues | [number] | 0 | [OK/Warning/Critical] | [1-5] |
| Canonical tag issues | [number] | 0 | [OK/Warning/Critical] | [1-5] |
| robots.txt configuration | [describe] | Correct | [OK/Warning/Critical] | [1-5] |
| XML sitemap accuracy | [describe] | Complete, valid | [OK/Warning/Critical] | [1-5] |

### Crawl Issue Detail

For each Critical or Warning issue:

```
ISSUE: [Description]
  Severity:       [Critical / Warning]
  Pages affected:  [number] (example URLs: [URL1], [URL2])
  SEO impact:      [explanation of ranking/traffic/indexing impact]
  Recommendation:  [specific fix steps]
  Priority:        [P1 / P2 / P3]
  Effort:          [Quick fix (<1 day) / Medium (1-5 days) / Complex (1+ weeks)]
  CXL Bucket:      [Just Do It / Test / Instrument / Hypothesize / Investigate]
  Success metric:  [how to verify the fix worked]
```

---

## 3. Core Web Vitals Report [REQUIRED]

### 3.1 Overall CWV Status

| Metric | Mobile (p75) | Desktop (p75) | Target | Status | Score |
|---|---|---|---|---|---|
| LCP | [value] | [value] | <= 2.5s | [Pass/Fail] | [1-5] |
| INP | [value] | [value] | <= 200ms | [Pass/Fail] | [1-5] |
| CLS | [value] | [value] | <= 0.1 | [Pass/Fail] | [1-5] |
| TTFB | [value] | [value] | <= 800ms | [Info] | [1-5] |

### 3.2 CWV by Page Template

| Template | Pages | LCP | INP | CLS | Overall | Priority |
|---|---|---|---|---|---|---|
| Homepage | 1 | [val] | [val] | [val] | [Pass/Fail] | [P1-P3] |
| Category pages | [n] | [val] | [val] | [val] | [Pass/Fail] | [P1-P3] |
| Product pages | [n] | [val] | [val] | [val] | [Pass/Fail] | [P1-P3] |
| Blog posts | [n] | [val] | [val] | [val] | [Pass/Fail] | [P1-P3] |
| Landing pages | [n] | [val] | [val] | [val] | [Pass/Fail] | [P1-P3] |

### 3.3 Speed Optimization Recommendations

| Issue | Metric Affected | Current Impact | Fix | Estimated Improvement | Priority | Effort |
|---|---|---|---|---|---|---|
| [e.g., Unoptimized hero images] | LCP | +1.8s | [Convert to WebP, preload] | -1.2s LCP | P1 | Quick fix |
| [e.g., Render-blocking JS] | INP | +180ms | [Defer non-critical scripts] | -120ms INP | P1 | Medium |
| [e.g., Missing image dimensions] | CLS | +0.18 | [Add width/height attrs] | -0.15 CLS | P2 | Quick fix |

### 3.4 Competitor CWV Benchmark

| Domain | LCP | INP | CLS | Overall | vs. You |
|---|---|---|---|---|---|
| [your site] | [val] | [val] | [val] | [Pass/Fail] | -- |
| [competitor 1] | [val] | [val] | [val] | [Pass/Fail] | [Better/Worse/Same] |
| [competitor 2] | [val] | [val] | [val] | [Pass/Fail] | [Better/Worse/Same] |
| [competitor 3] | [val] | [val] | [val] | [Pass/Fail] | [Better/Worse/Same] |

---

## 4. Mobile Usability Report [REQUIRED]

| Check | Status | Score | Notes | Fix |
|---|---|---|---|---|
| Responsive design | [Pass/Fail] | [1-5] | [details] | [if needed] |
| Tap target sizing (>= 48px) | [Pass/Fail] | [1-5] | [details] | [if needed] |
| No horizontal scrolling | [Pass/Fail] | [1-5] | [details] | [if needed] |
| Text readable without zoom | [Pass/Fail] | [1-5] | [details] | [if needed] |
| No intrusive interstitials | [Pass/Fail] | [1-5] | [details] | [if needed] |
| Mobile content parity | [Pass/Fail] | [1-5] | [details] | [if needed] |
| Mobile structured data parity | [Pass/Fail] | [1-5] | [details] | [if needed] |
| Viewport configured correctly | [Pass/Fail] | [1-5] | [details] | [if needed] |

---

# TEMPLATE 2: Search Intent Map

## 1. Keyword Universe Overview [REQUIRED]

| Metric | Value |
|---|---|
| Total keywords tracked | [number] |
| Keywords ranking top 3 | [number] ([%] of total) |
| Keywords ranking top 10 | [number] ([%] of total) |
| Keywords ranking 11-20 | [number] ([%] of total) |
| Keywords ranking 21-50 | [number] ([%] of total) |
| Keywords not ranking | [number] ([%] of total) |
| Estimated monthly organic traffic | [number] |
| Estimated monthly traffic value | [$amount] |

## 2. Intent Distribution [REQUIRED]

| Intent Type | Keywords | % of Portfolio | Traffic Share | Avg. Conv. Rate | Revenue Share |
|---|---|---|---|---|---|
| Informational | [n] | [%] | [%] | [%] | [%] |
| Navigational | [n] | [%] | [%] | [%] | [%] |
| Commercial Investigation | [n] | [%] | [%] | [%] | [%] |
| Transactional | [n] | [%] | [%] | [%] | [%] |

**Intent balance assessment:**
```
Healthy distribution for [business type]:
  Informational:  [target %] (actual: [%]) --> [Balanced / Over-indexed / Under-indexed]
  Navigational:   [target %] (actual: [%]) --> [Balanced / Over-indexed / Under-indexed]
  Commercial:     [target %] (actual: [%]) --> [Balanced / Over-indexed / Under-indexed]
  Transactional:  [target %] (actual: [%]) --> [Balanced / Over-indexed / Under-indexed]
```

## 3. Keyword-Intent-Content Map [REQUIRED]

| Priority | Keyword | Volume | KD | KOB Score | Intent | Current URL | Rank | Target Format | Action |
|---|---|---|---|---|---|---|---|---|---|
| P1 | [keyword] | [vol] | [kd] | [score] | [type] | [URL/none] | [#/NR] | [format] | [Create/Optimize/Redirect] |
| P1 | [keyword] | [vol] | [kd] | [score] | [type] | [URL/none] | [#/NR] | [format] | [Create/Optimize/Redirect] |
| P2 | [keyword] | [vol] | [kd] | [score] | [type] | [URL/none] | [#/NR] | [format] | [Create/Optimize/Redirect] |
| P2 | [keyword] | [vol] | [kd] | [score] | [type] | [URL/none] | [#/NR] | [format] | [Create/Optimize/Redirect] |
| P3 | [keyword] | [vol] | [kd] | [score] | [type] | [URL/none] | [#/NR] | [format] | [Create/Optimize/Redirect] |

## 4. SERP Feature Opportunity Map [REQUIRED]

| Keyword | AI Overview | Featured Snippet | PAA | Video | Shopping | Our Presence | Opportunity |
|---|---|---|---|---|---|---|---|
| [keyword] | [Y/N] | [Y/N, owner] | [Y/N] | [Y/N] | [Y/N] | [None/Present] | [action] |

## 5. Featured Snippet Opportunities [AS APPLICABLE]

| Keyword | Snippet Owner | Snippet Type | Our Rank | Win Probability | Optimization Plan |
|---|---|---|---|---|---|
| [keyword] | [URL] | [para/list/table] | [rank] | [High/Med/Low] | [specific steps] |

---

# TEMPLATE 3: Topic Cluster Architecture

## 1. Cluster Overview [REQUIRED]

For each topic cluster:

```
================================================================
CLUSTER: [Topic Name]
================================================================
Pillar keyword:    [keyword]
Pillar volume:     [monthly searches]
Cluster pages:     [count]
Total cluster volume: [aggregate monthly searches]
Cluster status:    [Building / Active / Mature]
================================================================
```

## 2. Cluster Detail Map [REQUIRED]

| Role | Page Title | URL/Status | Target Keyword | Volume | KD | Intent | Content Score | Links |
|---|---|---|---|---|---|---|---|---|
| Pillar | [title] | [URL/To create] | [keyword] | [vol] | [kd] | [type] | [1-5] | Out: [n], In: [n] |
| Cluster | [title] | [URL/To create] | [keyword] | [vol] | [kd] | [type] | [1-5] | Out: [n], In: [n] |
| Cluster | [title] | [URL/To create] | [keyword] | [vol] | [kd] | [type] | [1-5] | Out: [n], In: [n] |
| Cluster | [title] | [URL/To create] | [keyword] | [vol] | [kd] | [type] | [1-5] | Out: [n], In: [n] |

## 3. Linking Architecture Diagram [REQUIRED]

```
[Pillar Page: Title]
  |
  |-- [Cluster 1: Title] <-- links back to pillar
  |     |-- Cross-link to: [Cluster 2]
  |
  |-- [Cluster 2: Title] <-- links back to pillar
  |     |-- Cross-link to: [Cluster 1], [Cluster 4]
  |
  |-- [Cluster 3: Title] <-- links back to pillar
  |
  |-- [Cluster 4: Title] <-- links back to pillar
  |     |-- Cross-link to: [Cluster 2]
  |
  |-- [Cluster 5: Title] <-- links back to pillar
```

## 4. Cluster Link Audit Checklist [REQUIRED]

- [ ] Pillar page links to ALL cluster pages with descriptive anchors
- [ ] ALL cluster pages link back to pillar page
- [ ] Related cluster pages interlink where contextually relevant
- [ ] No orphan pages within the cluster
- [ ] No keyword cannibalization between cluster pages
- [ ] Anchor text varied and descriptive (no exact-match repetition)
- [ ] No broken internal links within cluster

## 5. Content Calendar [REQUIRED]

| Week/Month | Content Piece | Cluster | Role | Keyword | Volume | Owner | Status |
|---|---|---|---|---|---|---|---|
| [date] | [title] | [cluster] | [Pillar/Cluster] | [keyword] | [vol] | [name] | [Planned/Draft/Published] |

---

# TEMPLATE 4: Content Brief

```
================================================================
CONTENT BRIEF
================================================================

TARGET KEYWORD:      [primary keyword]
SECONDARY KEYWORDS:  [3-5 related keywords]
SEARCH INTENT:       [informational / navigational / commercial / transactional]
CONTENT FORMAT:      [guide / listicle / comparison / tutorial / case study]
FUNNEL STAGE:        [awareness / consideration / decision]
KOB SCORE:           [calculated score]
PRIORITY:            [P1 / P2 / P3]

----------------------------------------------------------------
SERP ANALYSIS
----------------------------------------------------------------
SERP Features:       [list all features present]
AI Overview:         [present? what does it cover? what sources cited?]
Top 5 Competing URLs:
  1. [URL] | [format] | [word count] | [key angle] | [E-E-A-T: strong/weak]
  2. [URL] | [format] | [word count] | [key angle] | [E-E-A-T: strong/weak]
  3. [URL] | [format] | [word count] | [key angle] | [E-E-A-T: strong/weak]
  4. [URL] | [format] | [word count] | [key angle] | [E-E-A-T: strong/weak]
  5. [URL] | [format] | [word count] | [key angle] | [E-E-A-T: strong/weak]

Dominant Format:     [what wins in this SERP]
Avg. Word Count:     [top 5 average]
Gap Opportunity:     [what's missing from current results]

----------------------------------------------------------------
CONTENT SPECIFICATIONS
----------------------------------------------------------------
Word Count Target:   [range]
Title (H1):         [exact recommendation, 50-60 chars]
Meta Description:    [exact recommendation, 150-160 chars]
URL Slug:           [recommended slug]

Recommended Structure:
  H1: [title]
  H2: [section 1]
    H3: [subsection if needed]
  H2: [section 2]
    H3: [subsection]
  H2: [section 3]
  H2: [section 4]
  H2: FAQ (address PAA questions below)
    H3: [PAA question 1]
    H3: [PAA question 2]
    H3: [PAA question 3]

Required Elements:
  - [ ] Answer target query in first 100 words
  - [ ] Target keyword in H1, first paragraph, and 1-2 H2s
  - [ ] All PAA questions addressed as H2/H3 sections
  - [ ] [Specific data/stats/examples required]
  - [ ] Original insight not in competing content: [describe]
  - [ ] [Specific media: images, diagrams, tables, video]

----------------------------------------------------------------
E-E-A-T REQUIREMENTS
----------------------------------------------------------------
Experience:   [what first-hand experience to demonstrate]
Expertise:    [credentials/knowledge to display, technical accuracy requirements]
Authority:    [external references, citations, expert quotes]
Trust:        [transparency elements, source attribution, accuracy markers]

----------------------------------------------------------------
INTERNAL LINKING PLAN
----------------------------------------------------------------
Link TO (outbound):
  - [URL] | anchor: "[suggested text]" | context: [where in content]
  - [URL] | anchor: "[suggested text]" | context: [where in content]
  - [URL] | anchor: "[suggested text]" | context: [where in content]

Get links FROM (inbound):
  - [URL] | section: [where to add link] | anchor: "[suggested text]"
  - [URL] | section: [where to add link] | anchor: "[suggested text]"

Cluster Relationship:
  Pillar page: [URL]
  Related cluster pages: [URL1], [URL2]

----------------------------------------------------------------
SCHEMA MARKUP
----------------------------------------------------------------
Schema Types:     [Article/BlogPosting + FAQPage + BreadcrumbList + ...]
Required Fields:  [list mandatory properties]
Validation:       Test with Google Rich Results Test before publishing

----------------------------------------------------------------
FEATURED SNIPPET OPTIMIZATION
----------------------------------------------------------------
Target Snippet:   [paragraph / list / table / none]
Snippet Section:  [which H2 to format for snippet capture]
Draft Answer:     [40-60 word concise answer for paragraph snippet]

----------------------------------------------------------------
ZERO-CLICK OPTIMIZATION
----------------------------------------------------------------
AI Overview targeting: [what content structure will get cited]
Brand elements:        [memorable framework, quotable insight, proprietary term]
Click-driving elements: [tool, template, calculator, gated asset]

================================================================
```

---

# TEMPLATE 5: Keyword Opportunity Matrix

## Scored Keyword Matrix [REQUIRED]

| # | Keyword | Vol | KD | CPC | Intent | KOB Score | Current Rank | Content Status | Action | Priority |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | [keyword] | [vol] | [kd] | [$] | [type] | [score] | [rank/NR] | [exists/none] | [action] | P1 |
| 2 | [keyword] | [vol] | [kd] | [$] | [type] | [score] | [rank/NR] | [exists/none] | [action] | P1 |
| 3 | [keyword] | [vol] | [kd] | [$] | [type] | [score] | [rank/NR] | [exists/none] | [action] | P2 |

**KOB Score Formula:**
```
KOB = (Volume * CPC) / KD
```

**Priority Tiers:**
- P1: KOB >= [threshold], strong intent alignment, existing cluster fit
- P2: KOB >= [threshold], moderate intent alignment or new cluster needed
- P3: KOB < [threshold], low priority or high difficulty

---

# TEMPLATE 6: SERP Analysis Report

## Per-Keyword SERP Analysis [REQUIRED]

```
================================================================
KEYWORD: [target keyword]
VOLUME: [monthly] | KD: [score] | CPC: [$] | INTENT: [type]
================================================================

SERP FEATURES PRESENT:
  [x] AI Overview -- Sources cited: [URL1], [URL2]
  [x] Featured Snippet -- Owner: [URL] | Type: [paragraph/list/table]
  [x] People Also Ask -- Questions: [Q1], [Q2], [Q3], [Q4]
  [ ] Local Pack
  [x] Video Carousel
  [ ] Shopping Results
  [x] Knowledge Panel
  [ ] Image Pack
  [x] Sitelinks

TOP 5 RANKING ANALYSIS:
+-----+------------------+--------+-------+----------+--------+---------+
| Pos | Domain           | Format | Words | Schema   | E-E-A-T| Backlinks|
+-----+------------------+--------+-------+----------+--------+---------+
|  1  | [domain.com]     | [type] | [cnt] | [types]  | [1-5]  | [count] |
|  2  | [domain.com]     | [type] | [cnt] | [types]  | [1-5]  | [count] |
|  3  | [domain.com]     | [type] | [cnt] | [types]  | [1-5]  | [count] |
|  4  | [domain.com]     | [type] | [cnt] | [types]  | [1-5]  | [count] |
|  5  | [domain.com]     | [type] | [cnt] | [types]  | [1-5]  | [count] |
+-----+------------------+--------+-------+----------+--------+---------+

CONTENT THEMES IN TOP 5:
  Common sections:  [list sections all top results cover]
  Common formats:   [listicle / guide / comparison / etc.]
  Average length:   [word count]
  Freshness range:  [oldest] to [newest]

GAPS AND OPPORTUNITIES:
  - [Gap 1: what top results miss]
  - [Gap 2: format opportunity]
  - [Gap 3: unique data/tool opportunity]

RECOMMENDED APPROACH:
  Format:    [recommended content format]
  Length:    [recommended word count]
  Angle:     [unique angle to differentiate]
  Schema:    [recommended schema types]
  Snippet:   [snippet optimization strategy]

================================================================
```

---

# TEMPLATE 7: SEO Roadmap (Prioritized by Impact)

## 90-Day SEO Roadmap [REQUIRED]

### Roadmap Priority Framework

```
                      HIGH IMPACT
                          |
            +-------------+-------------+
            |   QUICK     |   MAJOR     |
            |   WINS      |   PROJECTS  |
            |  (Week 1-2) | (Week 3-8)  |
            |             |             |
   LOW      |  Do these   |  Plan and   |   HIGH
   EFFORT --+  first.     |  execute.   |-- EFFORT
            |             |             |
            |   FILL      |   CONSIDER  |
            |   (Month 3) | (Deprioritize|
            |             |  or defer)  |
            +-------------+-------------+
                          |
                      LOW IMPACT
```

### Month 1: Foundation (Days 1-30)

**Theme:** Fix critical technical issues, establish baselines

| Week | Task | CXL Bucket | Impact | Effort | Owner | Deliverable | Success Metric |
|---|---|---|---|---|---|---|---|
| 1 | [task] | Just Do It | High | Low | [role] | [deliverable] | [metric] |
| 1 | [task] | Just Do It | High | Low | [role] | [deliverable] | [metric] |
| 2 | [task] | Just Do It | High | Medium | [role] | [deliverable] | [metric] |
| 2 | [task] | Instrument | Medium | Low | [role] | [deliverable] | [metric] |
| 3 | [task] | Test | High | Medium | [role] | [deliverable] | [metric] |
| 3 | [task] | Just Do It | Medium | Low | [role] | [deliverable] | [metric] |
| 4 | [task] | Instrument | Medium | Medium | [role] | [deliverable] | [metric] |
| 4 | [task] | Test | Medium | Low | [role] | [deliverable] | [metric] |

**Month 1 Exit Criteria:**
- [ ] All critical crawl errors resolved
- [ ] Core Web Vitals passing on 75%+ of top traffic pages
- [ ] Schema markup validated on priority templates
- [ ] Baseline keyword tracking established
- [ ] Internal linking quick wins implemented

### Month 2: Content and Authority (Days 31-60)

**Theme:** Create and optimize content aligned to search intent map

| Week | Task | CXL Bucket | Impact | Effort | Owner | Deliverable | Success Metric |
|---|---|---|---|---|---|---|---|
| 5 | [task] | Hypothesize | High | High | [role] | [deliverable] | [metric] |
| 5 | [task] | Test | Medium | Medium | [role] | [deliverable] | [metric] |
| 6 | [task] | Test | High | Medium | [role] | [deliverable] | [metric] |
| 6 | [task] | Just Do It | Medium | Low | [role] | [deliverable] | [metric] |
| 7 | [task] | Hypothesize | High | High | [role] | [deliverable] | [metric] |
| 7 | [task] | Test | Medium | Medium | [role] | [deliverable] | [metric] |
| 8 | [task] | Investigate | Medium | Low | [role] | [deliverable] | [metric] |
| 8 | [task] | Test | Medium | Medium | [role] | [deliverable] | [metric] |

**Month 2 Exit Criteria:**
- [ ] Primary topic cluster pillar page published
- [ ] 4-6 cluster pages published with internal linking
- [ ] Top keyword gaps addressed with new or updated content
- [ ] Featured snippet optimizations live for 10+ opportunities
- [ ] First SEO experiment designed and running

### Month 3: Scale and Optimize (Days 61-90)

**Theme:** Scale winners, iterate on failures, build measurement systems

| Week | Task | CXL Bucket | Impact | Effort | Owner | Deliverable | Success Metric |
|---|---|---|---|---|---|---|---|
| 9 | [task] | Test (analyze) | High | Low | [role] | [deliverable] | [metric] |
| 9 | [task] | Hypothesize | High | High | [role] | [deliverable] | [metric] |
| 10 | [task] | Test | Medium | Medium | [role] | [deliverable] | [metric] |
| 10 | [task] | Just Do It | Medium | Low | [role] | [deliverable] | [metric] |
| 11 | [task] | Hypothesize | High | High | [role] | [deliverable] | [metric] |
| 11 | [task] | Investigate | Medium | Medium | [role] | [deliverable] | [metric] |
| 12 | [task] | Instrument | Medium | Low | [role] | [deliverable] | [metric] |
| 12 | [task] | -- | -- | -- | [role] | [deliverable] | [metric] |

**Month 3 Exit Criteria:**
- [ ] Measurable ranking improvements for target keywords
- [ ] Organic traffic trending upward (week-over-week)
- [ ] SEO experiments yielding actionable insights
- [ ] Technical health composite score improved from baseline
- [ ] Second topic cluster in progress
- [ ] Next quarter roadmap defined based on data

---

# TEMPLATE 8: Performance Dashboard

## SEO Performance Dashboard [REQUIRED]

### Primary KPIs

| KPI | Baseline | Month 1 | Month 2 | Month 3 | Target | Trend |
|---|---|---|---|---|---|---|
| Organic sessions | [base] | [actual] | [actual] | [actual] | [target] | [up/down/flat] |
| Organic conversions | [base] | [actual] | [actual] | [actual] | [target] | [up/down/flat] |
| Organic revenue | [base] | [actual] | [actual] | [actual] | [target] | [up/down/flat] |
| Keywords in top 10 | [base] | [actual] | [actual] | [actual] | [target] | [up/down/flat] |
| Organic CTR | [base] | [actual] | [actual] | [actual] | [target] | [up/down/flat] |

### Secondary KPIs

| KPI | Baseline | Current | Target | Frequency | Status |
|---|---|---|---|---|---|
| CWV pass rate | [%] | [%] | >= 75% | Weekly | [On track/At risk/Behind] |
| Index coverage (valid) | [n] | [n] | [target] | Weekly | [On track/At risk/Behind] |
| Crawl errors | [n] | [n] | 0 critical | Weekly | [On track/At risk/Behind] |
| Content published | [n] | [n] | [target/month] | Monthly | [On track/At risk/Behind] |
| Featured snippets owned | [n] | [n] | [target] | Monthly | [On track/At risk/Behind] |
| AI Overview citations | [n] | [n] | [target] | Monthly | [On track/At risk/Behind] |
| Schema validation errors | [n] | [n] | 0 | Monthly | [On track/At risk/Behind] |
| Backlinks acquired | [n] | [n] | [target/month] | Monthly | [On track/At risk/Behind] |
| Technical health score | [X.X] | [X.X] | >= 4.0 | Monthly | [On track/At risk/Behind] |

### Experiment Tracker

| # | Hypothesis | Test Group | Control | Start Date | End Date | Status | Result | Action |
|---|---|---|---|---|---|---|---|---|
| 1 | [hypothesis] | [n pages] | [n pages] | [date] | [date] | [Running/Complete] | [+X%/-X%/NS] | [Scale/Kill/Iterate] |
| 2 | [hypothesis] | [n pages] | [n pages] | [date] | [date] | [Running/Complete] | [+X%/-X%/NS] | [Scale/Kill/Iterate] |

### Content Decay Alert

Pages losing rankings or traffic over the past 90 days:

| Page URL | Keyword | Peak Rank | Current Rank | Traffic Change | Last Updated | Action |
|---|---|---|---|---|---|---|
| [URL] | [keyword] | [peak] | [current] | [% change] | [date] | [Update/Consolidate/Redirect] |

---

# TEMPLATE 9: Schema Markup Recommendations [AS APPLICABLE]

## Current Implementation Audit

| Schema Type | Pages Implemented | Valid | Errors | Warnings | Rich Results Active |
|---|---|---|---|---|---|
| [type] | [count] | [count] | [count] | [count] | [Y/N, count] |

## Schema Opportunities

| Page Type | Current Schema | Recommended Schema | Expected Rich Result | Priority | AI Visibility Impact |
|---|---|---|---|---|---|
| Blog posts | [current/none] | Article + FAQPage + BreadcrumbList | Article rich result + FAQ | P1 | High |
| Product pages | [current/none] | Product + Offer + AggregateRating | Product rich result | P1 | High |
| How-to content | [current/none] | HowTo + BreadcrumbList | Step-by-step result | P2 | Very High |
| Homepage | [current/none] | Organization + WebSite + SearchAction | Sitelinks search box | P1 | Medium |
| About page | [current/none] | Organization + Person | Knowledge panel signals | P2 | Medium |

---

# Quality Checklist: Before Delivering Any Output

- [ ] Every recommendation cites specific data (traffic numbers, difficulty scores, competitor benchmarks)
- [ ] All categories scored using 1-5 system with clear criteria
- [ ] Findings categorized into CXL action buckets (Just Do It, Test, Instrument, Hypothesize, Investigate)
- [ ] Each recommendation includes implementation steps, not vague advice
- [ ] Success criteria defined for every recommendation
- [ ] Priorities assigned (P1/P2/P3) based on impact-effort matrix
- [ ] Competitor benchmarks included where relevant
- [ ] Technical health composite score calculated
- [ ] Content quality scores assigned to all content recommendations
- [ ] KOB scores calculated for all keyword opportunities
- [ ] Internal linking plan specified for all content recommendations
- [ ] Schema markup recommendations included for all content
- [ ] Zero-click adaptation addressed for informational content
- [ ] Experiment design included for non-obvious changes
- [ ] Measurement plan included (what to track, when, success threshold)
