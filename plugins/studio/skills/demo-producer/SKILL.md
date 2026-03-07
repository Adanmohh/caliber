# Demo Producer Skill

You produce complete product demo videos using a 4-phase pipeline: Discovery, Recording, Voiceover, and Composition.

## Pipeline Overview

```
Phase 0: Discovery ──> Phase 1+2 (parallel) ──> Phase 3: Compose ──> Final MP4
                       ├─ Record (Playwright)
                       └─ Voiceover (ElevenLabs)
```

## Upstream Inputs (Memory Search)

Before starting, search claude-mem for upstream context:

| Memory Tag | What You Get |
|-----------|-------------|
| `[PHASE:craft:{Project}]` | Built app URL, tech stack, page structure |
| `[PHASE:launch:{Project}]` | Copy, brand voice, key messaging |
| `[PHASE:validate:{Project}]` | User segments, value propositions |

## Phase 0: Discovery

Run 4 rounds of AskUserQuestion to gather requirements:

1. **Scope** — What product/app? What's the video goal? Target audience? Desired length?
2. **App Details** — URL to record? Key flows to demonstrate? Login credentials needed?
3. **Branding** — Brand colors (hex)? Logo file? Font preference? Intro/outro text?
4. **Technical** — ElevenLabs API key available? Voice preference? Language? Output resolution?

## Phase 1: Browser Recording (Playwright)

Record the product in action using Playwright's video recording.

Key settings:
- Resolution: 1920x1080 at 30fps
- `--force-device-scale-factor=1` (critical on Windows)
- Deliberate pacing: `page.waitForTimeout(2000)` between actions
- Smooth scrolling helper for natural movement
- Save via `page.close()` then `context.close()`

Reference: `references/playwright-recording.md`

## Phase 2: Voiceover (ElevenLabs TTS)

Generate narration audio for each scene.

Key settings:
- Model: `eleven_multilingual_v2`
- Stability: 0.5, Similarity: 0.75, Speed: 0.9
- Batch generate per scene, skip existing files
- Write scripts at ~150 words per minute for natural pacing

Reference: `references/elevenlabs-voiceover.md`

## Phase 3: Composition (Remotion)

Combine recordings and voiceover into final video.

Key patterns:
- TransitionSeries for scene sequencing
- Audio overlays with gap-limiting to prevent bleeding
- Branded Intro with orb animation + spring text
- Branded Outro with CTA
- LowerThird overlays for scene labels
- Video speed control and trimming

Reference: `references/remotion-composition.md`

## Output

Final MP4 rendered via `npx remotion render`.

## File Organization

```
project/
├── recordings/          # .webm files from Playwright
├── voiceover/           # .mp3 files from ElevenLabs
├── remotion-project/    # Remotion composition
│   ├── src/
│   │   ├── Root.tsx
│   │   ├── DemoVideo.tsx
│   │   ├── Intro.tsx
│   │   ├── Outro.tsx
│   │   └── LowerThird.tsx
│   └── public/
│       ├── recordings/  # copied .webm files
│       └── voiceover/   # copied .mp3 files
└── output/              # final rendered MP4
```

## Scene Script Template

Present this table to the user for approval before recording:

```markdown
| # | Scene | Duration | Record? | Action | Narration |
|---|-------|----------|---------|--------|-----------|
| 0 | Intro | 4s | No (Remotion) | Brand title card with logo | — |
| 1 | Login | 8s | Yes | Navigate to login, enter credentials | "Welcome to [Product]..." |
| 2 | Dashboard | 12s | Yes | Show main dashboard, highlight key metrics | "Here you can see..." |
| 3 | Feature A | 15s | Yes | Click through main workflow | "The core feature lets you..." |
| N | Outro | 5s | No (Remotion) | CTA card with URL | — |
```

### Iteration Workflow
1. Record -> Watch raw clips -> Re-record if needed
2. Generate voiceover -> Listen -> Regenerate specific scenes if needed
3. Preview in Remotion Studio (`npx remotion preview`) -> Adjust timing
4. Render final MP4 -> Review with user -> Iterate

## Requirements

- Node.js >= 18, npm
- Playwright (`npm install playwright`)
- Remotion (`npx create-video@latest`)
- ffmpeg (`scoop install ffmpeg` on Windows, `brew install ffmpeg` on macOS)
- ElevenLabs API key (set as `ELEVENLABS_API_KEY` env var)
- Running web application with accessible URL
