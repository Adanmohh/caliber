# AI-Native Product & UX Design Patterns

> Sources: Shape of AI (shapeof.ai), Google PAIR Guidebook (pair.withgoogle.com),
> Vercel AI SDK (ai-sdk.dev), Vitaly Friedman AI Design Patterns,
> aiverse.design, Nielsen Norman Group AI UX research.

---

## 1. Conversational UI Patterns

### Chat Interface Design

| Pattern | When to Use | Key Requirement |
|---------|-------------|-----------------|
| Full chat | Open-ended tasks, exploration | Message history, context display, multi-turn |
| Inline prompt | Contextual AI on existing content | Selection-based trigger, minimal disruption |
| Command palette | Power users, quick AI actions | Keyboard shortcut, fuzzy search, action preview |
| Embedded assistant | Guided workflows with AI help | Contextual awareness, dismissible panel |

### Prompt Design for End Users

| Pattern | Description | Example |
|---------|-------------|---------|
| Starter prompts | Pre-written suggestions showing capability | "Summarize this document", "Find action items" |
| Prompt templates | Fill-in-the-blank structured inputs | "Write a [tone] email about [topic] for [audience]" |
| Contextual suggestions | AI suggests prompts based on current state | Suggesting "Explain this error" when error is visible |
| Progressive prompting | Multi-step refinement with follow-ups | First response + "Make it shorter" / "Add examples" |

### Multi-Turn Conversation

- Show conversation history with clear user/AI message distinction
- Display context window: what the AI "remembers" from this conversation
- Provide "New conversation" to reset context explicitly
- Allow branching: edit a previous message and get a new response thread
- Show typing/thinking indicators during AI processing

---

## 2. AI Confidence & Attribution

### Certainty Indicators

| Confidence Level | Visual Treatment | User Action |
|-----------------|------------------|-------------|
| High (>90%) | Standard text, no qualifier | Use directly |
| Medium (70-90%) | Subtle qualifier: "likely", "based on..." | Review before using |
| Low (50-70%) | Warning indicator + hedging language | Verify independently |
| Very low (<50%) | Explicit uncertainty: "I'm not sure, but..." | Treat as suggestion only |

### Source Citation Patterns

- **Inline citations**: Numbered references [1][2] with hover-to-preview
- **Source panel**: Collapsible sidebar showing referenced documents
- **Highlight mapping**: Click a claim to see which source supports it
- **Confidence per claim**: Different certainty for different parts of a response

### Explanation Patterns (Governors -- from shapeof.ai)

- **Stream of Thought**: Show reasoning trace (plan, tools called, checks made)
- **Tuners**: Let users refine/remix AI output with controls (tone, length, style)
- **Wayfinders**: Guide users on how to interact with the AI model effectively

---

## 3. Streaming Output Patterns

### Progressive Rendering

| Pattern | Implementation | UX Benefit |
|---------|---------------|------------|
| Token-by-token streaming | Show text as generated (Vercel AI SDK `useChat`) | Perceived speed, reading during generation |
| Skeleton-to-content | Grey shimmer blocks that resolve to real content | Sets spatial expectations, reduces layout shift |
| Section-by-section | Render complete sections progressively | Better for structured outputs (reports, analyses) |
| Streaming UI components | Render React components as they resolve (`streamUI`) | Rich interactive content during streaming |

### Loading & Generation States

```
IDLE -> THINKING -> GENERATING -> COMPLETE -> EDITABLE
         |             |              |
     Show intent    Stream output   Enable actions
     indicator      progressively   (copy, edit, retry)
     (subtle pulse) (smooth height  (fade in controls)
                     expansion)
```

### Animation Guidelines

- Subtle pulse on AI panel while processing (communicates "active")
- Smooth height expansion as content arrives (avoid layout shift)
- Color transition from amber to green as confidence updates
- Gentle fade-out on dismissed suggestions
- Respect `prefers-reduced-motion` -- replace animation with static indicators

---

## 4. Agent Orchestration UI

### Status Tracking

| Agent State | UI Pattern | User Control |
|-------------|-----------|--------------|
| Planning | Show step list with progress dots | Allow plan review before execution |
| Executing step N | Highlight current step, show sub-status | Pause/cancel button |
| Waiting for input | Modal or inline prompt with clear ask | Provide input or skip |
| Tool calling | Show tool name + brief description | Expand for details |
| Complete | Summary of actions taken + results | Review, undo, or continue |

### Delegation Display

- Show which sub-agent or tool is active and why
- Provide a collapsible "activity log" of all agent actions
- Display estimated time remaining when possible
- Allow drill-down into individual step results

### Approval Gates (Human-in-the-Loop)

- Clearly distinguish "AI is asking for permission" from "AI is providing info"
- Show what the AI WILL do if approved (preview the action)
- Provide approve/reject/modify options with keyboard shortcuts
- Log all approval decisions for audit trail

---

## 5. AI Error States & Failure Patterns

### Error Taxonomy

| Error Type | User-Facing Message | Recovery Pattern |
|-----------|-------------------|-----------------|
| Hallucination detected | "This response may contain inaccuracies" | Highlight uncertain sections, offer source check |
| No answer possible | "I don't have enough information to answer this" | Suggest what info would help, offer alternatives |
| Rate limit / timeout | "Taking longer than expected" | Auto-retry with backoff, show progress |
| Context overflow | "This conversation is too long for me to process fully" | Suggest starting new thread, summarize and continue |
| Harmful request refused | "I can't help with that" | Explain why, suggest alternative framing |
| Tool/API failure | "I couldn't complete [action]" | Show what failed, offer manual alternative |

### "I Don't Know" Patterns

- Never hide uncertainty -- surface it explicitly
- Offer partial answers when full answer is unavailable
- Suggest follow-up actions: "You could check [source] for this"
- Distinguish between "I don't know" and "I can't do that"

### Fallback UI

- Graceful degradation: if AI fails, show non-AI alternative
- Cached responses: show last good response if real-time fails
- Manual override: always provide a way to accomplish the task without AI

---

## 6. Mode Switching

### Interaction Modes

| Mode | Purpose | Transition Trigger |
|------|---------|-------------------|
| Chat | Open conversation, Q&A | Default or explicit "Ask AI" |
| Build/Edit | AI modifies content directly | "Edit this", selection + AI action |
| Agent | Autonomous multi-step execution | "Do this for me", complex task delegation |
| Review | Human reviews AI work | After agent completion, before publishing |

### Context Preservation

- When switching modes, carry forward relevant context
- Show which mode is active with clear visual indicator
- Allow quick mode switching without losing progress
- Preserve undo history across mode transitions

---

## 7. Human-AI Collaboration

### Edit Suggestion Patterns

| Pattern | Description | Best For |
|---------|-------------|----------|
| Inline suggestion | Ghost text / diff overlay on existing content | Writing, code editing |
| Side-by-side | Original vs AI version for comparison | Document revision |
| Track changes | AI edits shown as tracked changes to accept/reject | Collaborative editing |
| Option cards | Multiple AI suggestions as selectable cards | Creative choices |

### Approval Flows

- **Accept all**: One-click to apply all AI suggestions
- **Cherry-pick**: Accept/reject individual suggestions
- **Modify then accept**: Edit the AI suggestion before applying
- **Regenerate**: Request a new suggestion with optional guidance

### Override Patterns

- User edits always take priority over AI suggestions
- "Lock" sections to prevent AI from modifying them
- Clear "Undo AI" to revert to pre-AI state
- Show what the AI changed (diff view) before and after

---

## 8. AI-Specific Accessibility

### Screen Reader Considerations

- Announce streaming text completion, not each token
- Use `aria-live="polite"` for streaming content, `"assertive"` for errors
- Provide text alternative for visual confidence indicators
- Announce mode switches and agent state changes

### Keyboard Navigation

- Tab order: prompt input -> send -> latest response -> action buttons
- Escape to cancel generation
- Arrow keys to navigate between messages
- Keyboard shortcuts for common actions (copy, retry, new chat)

### Cognitive Accessibility

- Offer "simple mode" that hides reasoning traces and shows only final output
- Allow users to control information density
- Provide clear labels for AI vs human content
- Avoid auto-playing animations in AI responses

---

## 9. Decision Tree: Which AI UI Pattern Fits?

```
What is the primary task?
|
+-- GENERATIVE (create content, write, design)
|   |
|   +-- Short output (< 1 paragraph) --> Inline suggestion + streaming
|   +-- Long output (document/report) --> Chat + section-by-section streaming
|   +-- Creative options needed --> Option cards + compare
|
+-- ANALYTICAL (summarize, analyze, extract)
|   |
|   +-- Single document --> Inline panel + citations
|   +-- Multiple sources --> Chat + source panel + confidence indicators
|   +-- Real-time data --> Dashboard widget + auto-refresh
|
+-- CONVERSATIONAL (Q&A, support, exploration)
|   |
|   +-- Simple Q&A --> Chat with starter prompts
|   +-- Complex multi-turn --> Full chat + context display + branching
|   +-- Guided workflow --> Embedded assistant + progressive prompting
|
+-- AGENTIC (multi-step, autonomous, tool-using)
    |
    +-- Low-risk actions --> Agent mode + status tracking + summary
    +-- High-risk actions --> Agent mode + approval gates + preview
    +-- Long-running tasks --> Background agent + notification on completion
```

---

## 10. Anti-Patterns Table

| Anti-Pattern | Problem | Fix |
|-------------|---------|-----|
| Black box AI | No explanation of how AI reached its output | Add Stream of Thought or confidence indicators |
| Unlimited autonomy | AI takes actions without user awareness | Add approval gates for consequential actions |
| Fake confidence | AI presents uncertain output as definitive | Add confidence indicators and hedging language |
| Chat-for-everything | Forcing chat UI where direct manipulation is better | Match interaction mode to task type (see decision tree) |
| Ignored errors | AI failures silently produce bad output | Explicit error states with recovery paths |
| No escape hatch | User cannot accomplish task if AI fails | Always provide manual fallback |
| Jarring layout shifts | Content jumping as AI generates output | Use skeleton states and smooth height transitions |
| Overloaded reasoning | Showing full chain-of-thought by default | Collapsible reasoning, show summary by default |
| Personality theater | Excessive "personality" that obscures utility | Prioritize clarity and usefulness over character |
| Context amnesia | AI forgets previous conversation context | Show context window, allow pinning important context |
| Modal interruption | AI suggestions blocking user workflow | Use non-blocking inline suggestions |
| Trust erosion | One hallucination destroys all trust | Proactive uncertainty disclosure, source citations |

---

## 11. Google PAIR Design Principles (Summary)

1. **Design for appropriate autonomy** -- match AI control to user expertise and task risk
2. **Make AI transparent** -- show what the AI can and cannot do
3. **Create bidirectional feedback** -- AI learns from users, users adapt to AI
4. **Plan for errors** -- AI will be wrong; design for graceful recovery
5. **Support human oversight** -- humans must be able to review, correct, and override
6. **Evolve safety strategies** -- adapt safeguards as technology and usage change
