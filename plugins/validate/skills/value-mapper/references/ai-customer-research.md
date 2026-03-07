# AI-Powered Customer Research — Complete Reference

Methods for AI agents to conduct customer research, generate personas,
simulate discovery interviews, and validate value proposition hypotheses.

Sources: Nielsen Norman Group synthetic users research; MIT Sloan simulated
persona studies; C+R Research AI persona simulations; Strategyzer validation
methods. Extended with practical AI-agent protocols.

---

## 1. THE VALIDATION HIERARCHY

Not all evidence is equal. Every finding from AI research must be tagged with
its position in this hierarchy:

```
VALIDATION HIERARCHY (strongest to weakest):

Level 5: BEHAVIORAL DATA        | What customers ACTUALLY DO
         (purchases, usage logs, | Strongest evidence. Reveals
          A/B test results)      | revealed preferences, not stated.
                                 |
Level 4: STRUCTURED EXPERIMENTS  | What customers DO in controlled
         (landing page tests,    | settings. Near-behavioral but
          fake-door tests,       | may not reflect real commitment.
          wizard-of-oz tests)    |
                                 |
Level 3: LIVE INTERVIEWS         | What customers SAY in depth
         (1:1 discovery calls,   | Rich context, emotional signals,
          switch interviews)     | but subject to recall bias and
                                 | social desirability bias.
                                 |
Level 2: SURVEYS                 | What customers REPORT at scale
         (quantitative surveys,  | Good for validation at scale,
          conjoint analysis)     | but answers are context-free and
                                 | hypothetical.
                                 |
Level 1: AI-SIMULATED RESEARCH  | What AI PREDICTS customers would
         (persona simulation,    | say based on research data.
          synthetic interviews,  | Useful for hypothesis generation,
          review mining)         | NOT for validation.
                                 |
Level 0: TEAM ASSUMPTIONS       | What the team BELIEVES customers
         (brainstorming,         | want. Least reliable. Must be
          expert opinion)        | upgraded to Level 1+ immediately.
```

**Critical rule**: AI-simulated research (Level 1) is dramatically better than
team assumptions (Level 0), but it must NEVER be treated as validated truth.
Its purpose is to generate testable hypotheses efficiently.

**When to trust simulated insights:**
- Early-stage exploration when no customer access exists yet
- Generating interview hypotheses and question priorities
- Identifying patterns across large volumes of web research data
- Narrowing a broad problem space before investing in live research
- Sanity-checking team assumptions against public data

**When to DEMAND real data:**
- Before committing significant development resources
- For pricing decisions (simulated willingness-to-pay is unreliable)
- For emotional/social job validation (AI struggles with authentic emotion)
- When the decision is irreversible or high-stakes
- When simulated findings contradict team experience (could be a blind spot
  OR a simulation artifact — real data resolves the ambiguity)

---

## 2. MINING VOICE-OF-CUSTOMER FROM WEB DATA

### 2.1 Source Hierarchy for Web Research

| Source Type                | Signal Strength | Best For                           | Watch Out For            |
|---------------------------|----------------|------------------------------------|--------------------------|
| Product reviews (1-3 star)| HIGH           | Pains, unmet needs, frustrations   | Selection bias           |
| Product reviews (4-5 star)| MEDIUM         | Gains, delights, key benefits      | Survivorship bias        |
| Forum discussions         | HIGH           | Context-rich job descriptions      | Power user skew          |
| Reddit/community threads  | HIGH           | Raw, unfiltered customer language   | May not be target segment|
| Support forums & FAQs     | HIGH           | Recurring problems, workarounds    | Over-represents issues   |
| Social media posts        | MEDIUM         | Emotional and social dimensions    | Performative behavior    |
| Blog posts and articles   | MEDIUM         | Considered opinions, detailed context| Author bias             |
| Competitor marketing copy | LOW            | Competitor positioning, implied jobs| Aspirational, not actual |
| Job postings (B2B)        | MEDIUM-HIGH    | Functional jobs, skills gaps       | Idealized requirements   |
| Glassdoor/workplace reviews| MEDIUM        | Internal pains for B2B tools       | Negativity bias          |

### 2.2 Extraction Protocol

**Step 1: Define search queries**
```
Query Templates:
- "[product category] complaints"
- "[product category] alternative to"
- "[product category] problems"
- "[product category] switched from"
- "[competitor name] review"
- "[competitor name] vs [competitor name]"
- "why I stopped using [competitor]"
- "[product category] wish list"
- "[product category] feature request"
- "if only [product category] could"
- "[job description] frustrated"
- "[job description] how do you"
```

**Step 2: Extract and categorize findings**

For each data point found, record:
```
SOURCE: [URL or platform]
VERBATIM QUOTE: "[exact customer language]"
CATEGORY: [Job | Pain | Gain | Force]
SUB-CATEGORY: [Functional | Emotional | Social] or [Push | Pull | Anxiety | Habit]
FREQUENCY SIGNAL: [One-off | Recurring | Dominant theme]
CONFIDENCE: [High | Medium | Low] based on source quality
```

**Step 3: Pattern synthesis**

After collecting 50+ data points:
1. Group by category and sub-category
2. Identify the top 5 most frequently mentioned items per category
3. Look for language patterns (what words do customers use repeatedly?)
4. Note emotional intensity signals (caps, exclamation marks, strong adjectives)
5. Identify contradictions (signals that segments may differ)

### 2.3 Language Mining Patterns

Specific phrases that reveal specific JTBD elements:

| Customer Language Pattern               | Maps To                    |
|----------------------------------------|----------------------------|
| "I need to..."                         | Functional job             |
| "I'm trying to..."                     | Functional job             |
| "It makes me feel..."                  | Emotional dimension        |
| "People think I'm..."                  | Social dimension           |
| "The worst part is..."                 | Extreme pain               |
| "I wish it could..."                   | Desired gain               |
| "I was blown away when..."            | Unexpected gain            |
| "I switched because..."               | Push force                 |
| "What attracted me was..."            | Pull force                 |
| "I was worried that..."              | Anxiety force              |
| "I couldn't switch because..."        | Habit/inertia force        |
| "I almost didn't buy because..."      | Anxiety force              |
| "The reason I finally..."            | Trigger event              |

---

## 3. GENERATING RESEARCH-BACKED PERSONAS

### 3.1 Persona Construction Protocol

AI-generated personas are only as good as the research data they're built on.
Follow this protocol to ensure grounded, not invented, personas.

**Step 1: Segment identification**

From web research, identify distinct clusters of customers with different:
- Primary jobs (what they're trying to accomplish)
- Key pains (what frustrates them most)
- Decision criteria (what they prioritize when choosing)
- Current solutions (what they're using today)

**Step 2: Persona template**

```
PERSONA: [Name — use a memorable, descriptive name]
SEGMENT: [Which cluster this persona represents]

DEMOGRAPHICS:
- Role/Title: [Specific]
- Company Size: [Range] (B2B) or Household: [Description] (B2C)
- Experience Level: [Novice | Intermediate | Expert]
- Budget Authority: [Yes/No, approximate budget range]

PSYCHOGRAPHICS:
- Decision Style: [Analytical | Intuitive | Collaborative | Impulsive]
- Risk Tolerance: [Risk-averse | Moderate | Risk-seeking]
- Technology Comfort: [Low | Medium | High]
- Information Sources: [Where they research solutions]

JOBS (from research data):
1. Primary Job: [Verb + object + context]
2. Secondary Job: [Verb + object + context]
3. Emotional Job: [How they want to feel]
4. Social Job: [How they want to be perceived]

PAINS (from research data, ranked):
1. [Most critical pain — with verbatim quote from research]
2. [Second pain — with verbatim quote]
3. [Third pain — with verbatim quote]

GAINS (from research data, ranked):
1. [Most desired gain — with verbatim quote from research]
2. [Second gain — with verbatim quote]
3. [Third gain — with verbatim quote]

CURRENT SOLUTION: [What they use today]
SWITCHING HISTORY: [Have they switched recently? From what?]

FORCES PROFILE:
- Push: [Score 1-5] — [Description]
- Pull: [Score 1-5] — [Description]
- Anxiety: [Score 1-5] — [Description]
- Habit: [Score 1-5] — [Description]

RESEARCH GROUNDING:
[List the specific web sources, reviews, or forum posts that informed
this persona. Without grounding, the persona is fiction.]
```

**Step 3: Persona validation checklist**

- [ ] Every job listed has at least one supporting data point from research
- [ ] Every pain listed includes a verbatim quote from a real customer source
- [ ] Every gain listed includes a verbatim quote from a real customer source
- [ ] Persona does not conflate multiple distinct segments
- [ ] Demographics are realistic for the stated jobs and pains
- [ ] Forces profile is internally consistent (e.g., high push + low habit
      makes switching likely)
- [ ] Persona includes at least one surprising or counter-intuitive element
      found in research (avoids "too neat" archetypes)

### 3.2 How Many Personas?

| Context                            | Recommended Count | Rationale                        |
|-----------------------------------|-------------------|----------------------------------|
| Single-product startup            | 2-3               | Focus. One primary, 1-2 secondary|
| Multi-segment product             | 3-5               | Cover major segments             |
| Platform/marketplace              | 4-6               | Cover both sides + key variants  |
| Enterprise B2B                    | 3-4               | Buyer, User, Admin, Champion     |

---

## 4. SIMULATED DISCOVERY INTERVIEWS

### 4.1 What Simulated Interviews Are (and Are Not)

**They ARE:**
- Structured exercises where the AI agent role-plays as a researched persona
  and another agent (or the same agent in a different mode) conducts an interview
- Useful for generating hypotheses about jobs, pains, and gains
- Good for testing interview scripts before using them with real customers
- Efficient for exploring multiple segments quickly

**They are NOT:**
- Validated customer research (they remain Level 1 on the hierarchy)
- A substitute for talking to real humans
- Reliable for emotional depth (AI simulates, not experiences, emotion)
- Accurate for pricing sensitivity or willingness-to-pay
- Trustworthy for predicting adoption behavior

### 4.2 Simulated Interview Protocol

**Pre-Interview Setup:**

```
SIMULATION SETUP CHECKLIST:
1. [ ] Persona fully defined using research-backed template (Section 3)
2. [ ] Interview objective defined (what hypotheses are we testing?)
3. [ ] Interview guide prepared (questions organized by phase)
4. [ ] "Stay in character" instructions specified
5. [ ] Confidence tagging system ready (will tag each insight)
```

**Interview Structure (30-45 simulated exchanges):**

```
PHASE 1: CONTEXT SETTING (5-7 exchanges)
Objective: Understand the persona's situation and current behavior

Questions:
- "Tell me about your role and what a typical [day/week] looks like"
- "What are the biggest challenges you face in [relevant domain]?"
- "Walk me through how you currently handle [job area]"
- "How long have you been doing it this way?"

PHASE 2: JOB EXPLORATION (8-12 exchanges)
Objective: Uncover the jobs the persona is trying to get done

Questions:
- "When you think about [domain], what are you really trying to accomplish?"
- "What does success look like for you in this area?"
- "What would change in your life/work if this were solved perfectly?"
- "Who else cares about whether this job gets done well?"
- "How do you know when you've done this well vs. poorly?"

PHASE 3: PAIN DEEP-DIVE (8-12 exchanges)
Objective: Surface specific, concrete pains with emotional weight

Questions:
- "What's the most frustrating part of [current approach]?"
- "Tell me about the last time [process] went wrong. What happened?"
- "What workarounds have you created? Why do you need them?"
- "If you could wave a magic wand, what would you eliminate entirely?"
- "What does this problem cost you — in time, money, or stress?"

PHASE 4: GAIN EXPLORATION (5-8 exchanges)
Objective: Discover desired outcomes and what "great" looks like

Questions:
- "What would make you say 'this is exactly what I needed'?"
- "Have you seen anyone solve this well? What impressed you?"
- "What features or capabilities would make you switch immediately?"
- "What would your ideal solution look like — no constraints?"

PHASE 5: FORCES ASSESSMENT (5-8 exchanges)
Objective: Understand switching dynamics

Questions:
- "What would push you to actually change what you're doing today?"
- "What's holding you back from trying something new?"
- "What would you be worried about if you adopted a new solution?"
- "Have you looked at alternatives? What happened?"
```

### 4.3 Extracting Insights from Simulated Interviews

After each simulated interview, produce a structured debrief:

```
SIMULATED INTERVIEW DEBRIEF
============================

Persona: [Name]
Segment: [Which segment]
Date: [When simulation was run]

JOBS DISCOVERED:
1. [Job statement] — Confidence: [High/Medium/Low]
   Supporting evidence: [Research data that grounds this]
2. [Job statement] — Confidence: [High/Medium/Low]
   Supporting evidence: [Research data that grounds this]

PAINS DISCOVERED:
1. [Pain description] — Severity: [Extreme/Moderate/Minor]
   Confidence: [High/Medium/Low]
   Simulated quote: "[What the persona said]"
   Grounding: [Is this corroborated by web research?]
2. ...

GAINS DISCOVERED:
1. [Gain description] — Type: [Required/Expected/Desired/Unexpected]
   Confidence: [High/Medium/Low]
   Simulated quote: "[What the persona said]"
   Grounding: [Is this corroborated by web research?]
2. ...

FORCES ASSESSMENT:
- Push: [Score 1-5] — [Key driver]
- Pull: [Score 1-5] — [Key attractor]
- Anxiety: [Score 1-5] — [Key concern]
- Habit: [Score 1-5] — [Key inertia factor]

SWITCH LIKELIHOOD: [High/Moderate/Low/Stalemate]

SURPRISES OR CONTRADICTIONS:
[Anything unexpected that emerged — these are the most valuable signals]

HYPOTHESES TO VALIDATE WITH REAL CUSTOMERS:
1. [Hypothesis] — Validation method: [Interview/Survey/Experiment]
2. [Hypothesis] — Validation method: [Interview/Survey/Experiment]

CONFIDENCE ASSESSMENT:
Overall confidence in these findings: [High/Medium/Low]
Rationale: [Why this level of confidence?]
Key risk: [What could be wrong about these findings?]
```

### 4.4 Running Multiple Simulations

**Protocol for multi-persona simulation:**

1. Define 3-5 distinct personas from different segments
2. Run independent simulated interviews with each
3. Cross-compare findings:
   - Which jobs appear across ALL personas? (universal jobs)
   - Which pains are segment-specific? (targeting opportunities)
   - Where do forces profiles diverge? (different go-to-market strategies)
4. Synthesize into a consolidated findings document
5. Prioritize hypotheses by frequency and impact

---

## 5. INTERVIEW SCRIPT TEMPLATES

### 5.1 Discovery Interview Script (for Real Customers)

Use this script after simulated research to validate top hypotheses.

```
DISCOVERY INTERVIEW SCRIPT
===========================

Duration: 30-45 minutes
Recording: [Get permission]

INTRO (2 minutes):
"Thanks for taking the time. I'm researching how [target audience]
handles [domain]. There are no right or wrong answers — I'm here to
learn from your experience. I'm not selling anything today."

WARM-UP (5 minutes):
1. "Tell me about your role at [company]"
2. "How does [domain] fit into your day-to-day?"

JOB EXPLORATION (10 minutes):
3. "Walk me through what happens when you need to [job area].
   Start from the very beginning."
4. "What are you really trying to achieve when you do this?"
5. "How do you know when you've done it well?"

PAIN EXPLORATION (10 minutes):
6. "What's the hardest part of this process?"
7. "Tell me about the last time this went really wrong."
   [Follow up: "What happened next? How did you fix it?"]
8. "What does this problem cost you?"

CURRENT SOLUTION (5 minutes):
9. "What are you using today to handle this?"
10. "What do you like about it? What do you wish were different?"
11. "Have you tried switching to something else? What happened?"

GAIN EXPLORATION (5 minutes):
12. "If this problem were solved perfectly, what would change for you?"
13. "What would make you say 'take my money' for a solution?"

WRAP-UP (3 minutes):
14. "Is there anything I should have asked that I didn't?"
15. "Who else should I talk to about this?"
```

### 5.2 Switch Interview Script (for Recent Switchers)

```
SWITCH INTERVIEW SCRIPT
========================

Duration: 45-60 minutes
Target: Someone who recently switched solutions (within last 3 months)

TIMELINE RECONSTRUCTION:
1. "When did you first start thinking about switching?"
   [Probe for specific trigger event]

2. "Before that moment, were you already unhappy? For how long?"
   [Understand the push forces building over time]

3. "What did you do first when you decided to look for alternatives?"
   [Map the passive looking phase]

4. "What options did you consider? How did you find them?"
   [Understand the competitive set from customer's perspective]

5. "What criteria were most important to you?"
   [Reveals the job's desired outcomes]

6. "What almost stopped you from switching?"
   [Uncovers anxiety and habit forces]

7. "What was the final moment when you said 'this is the one'?"
   [Identifies the decisive factor]

8. "Now that you're using [new solution], is it doing the job?"
   [Post-switch satisfaction — reveals if the job is truly done]
```

---

## 6. STRUCTURED OUTPUT FOR RESEARCH FINDINGS

### 6.1 Research Findings Document Template

```
CUSTOMER RESEARCH FINDINGS
===========================

Date: [Date]
Domain: [Product/market domain]
Research Methods Used: [Web mining, simulated interviews, etc.]
Total Data Points Collected: [Number]

EXECUTIVE SUMMARY:
[3-5 sentences summarizing the most important findings]

SEGMENT MAP:
+------------------+------------------+------------------+
| Segment A        | Segment B        | Segment C        |
| [Name]           | [Name]           | [Name]           |
| Est. size: [X]   | Est. size: [X]   | Est. size: [X]   |
| Primary job: [X] | Primary job: [X] | Primary job: [X] |
+------------------+------------------+------------------+

TOP JOBS (cross-segment):
1. [Job] — Frequency: [X mentions] — Segments: [A, B, C]
2. [Job] — Frequency: [X mentions] — Segments: [A, B]
3. [Job] — Frequency: [X mentions] — Segments: [A]

TOP PAINS (ranked by severity x frequency):
1. [Pain] — Severity: [Extreme/Moderate] — Freq: [X] — Segments: [X]
2. [Pain] — Severity: [Extreme/Moderate] — Freq: [X] — Segments: [X]
3. [Pain] — Severity: [Extreme/Moderate] — Freq: [X] — Segments: [X]

TOP GAINS (ranked by desirability x frequency):
1. [Gain] — Type: [Required/Desired] — Freq: [X] — Segments: [X]
2. [Gain] — Type: [Required/Desired] — Freq: [X] — Segments: [X]
3. [Gain] — Type: [Required/Desired] — Freq: [X] — Segments: [X]

FORCES SUMMARY (per segment):
[See Forces of Progress analysis in jobs-to-be-done.md]

CONFIDENCE ASSESSMENT:
- Findings grounded in behavioral data: [X%]
- Findings grounded in customer language (reviews/forums): [X%]
- Findings from simulation only: [X%]
- Findings that are team assumptions: [X%]

VALIDATION PRIORITIES:
[Ordered list of hypotheses that need real-world validation,
with recommended validation method for each]

HANDOFF NOTES:
[What the next agent/phase needs to know]
```

---

## 7. COMMON PITFALLS IN AI CUSTOMER RESEARCH

### Pitfall 1: Confirmation Bias in Search Queries
**Problem**: Agent searches for evidence supporting existing hypothesis and
ignores contradicting evidence.
**Fix**: For every hypothesis, explicitly search for DIS-confirming evidence.
Add query: "[product category] doesn't work" or "why [approach] fails."

### Pitfall 2: Over-Indexing on Power Users
**Problem**: Forum and review contributors skew toward power users who are
not representative of the mainstream market.
**Fix**: Weight findings by estimated segment size. Flag when data sources
represent < 20% of the target market.

### Pitfall 3: Simulated Persona Becomes "Too Perfect"
**Problem**: AI-generated persona has no contradictions, no messiness —
suspiciously clean and coherent.
**Fix**: Deliberately inject ambiguity. Real customers hold contradictory
preferences, have partial information, and change their minds. Add a
"contradiction" field to every persona.

### Pitfall 4: Treating Review Sentiment as Market Size
**Problem**: "50 people complained about X" does not mean X is a large market
opportunity.
**Fix**: Estimate incidence rate. Cross-reference with market sizing data.
Use review volume as a signal of IMPORTANCE, not SIZE.

### Pitfall 5: Ignoring Non-Consumers
**Problem**: Only researching people who use current solutions, missing the
potentially larger market of non-consumers.
**Fix**: Search for "I gave up trying to [job]" or "I stopped using [category]
because..." Non-consumption reveals the highest-opportunity space.

### Pitfall 6: Cultural and Demographic Blind Spots
**Problem**: AI training data may over-represent certain demographics,
geographies, and cultural contexts.
**Fix**: Explicitly search for perspectives from underrepresented segments.
Note demographic limitations of each data source.

### Pitfall 7: Recency Bias in Web Data
**Problem**: Recent posts get more weight than older but equally valid data.
**Fix**: Track publication dates. If a pain appeared consistently for 3+ years,
it's a durable problem worth solving. If it appeared only this month, it may
be a fad.

---

## 8. QUALITY SCORING FOR RESEARCH OUTPUT

Rate the quality of any AI customer research output on these dimensions:

| Dimension              | Score (1-5) | Criteria                                           |
|-----------------------|-------------|-----------------------------------------------------|
| Source Diversity      | ?           | 1=single source, 5=10+ diverse sources              |
| Verbatim Evidence     | ?           | 1=no quotes, 5=every finding has customer language   |
| Segment Clarity       | ?           | 1=one blob, 5=clearly differentiated segments        |
| Contradiction Noted   | ?           | 1=none, 5=actively sought and documented             |
| Confidence Tagged     | ?           | 1=no tagging, 5=every finding has confidence level   |
| Validation Plan       | ?           | 1=no plan, 5=specific method for each hypothesis     |
| Bias Acknowledgment   | ?           | 1=none, 5=all known biases documented                |

```
RESEARCH QUALITY SCORE = SUM(scores) / 35 x 100

80-100%: Publication-ready — can inform strategy decisions
60-79%:  Directionally useful — proceed with caution
40-59%:  Hypothesis-grade only — needs significant validation
0-39%:   Unreliable — restart with better sources
```

---

## 9. RECOMMENDED READING

- Nielsen Norman Group (2024). "Synthetic Users: If, When, and How to Use
  AI-Generated Research." nngroup.com
- MIT Sloan (2025). "Simulated Personas, Real Insights." mitsloanedtech.mit.edu
- C+R Research (2024). "8 Things Brands Need to Know About AI Persona
  Simulations." crresearch.com
- Bland, D. & Osterwalder, A. (2019). *Testing Business Ideas*. Wiley.
- Torres, T. (2021). *Continuous Discovery Habits*. Product Talk LLC.
- Fitzpatrick, R. (2013). *The Mom Test*. Robfitz Ltd.
