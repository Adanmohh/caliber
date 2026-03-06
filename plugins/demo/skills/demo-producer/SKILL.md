# Demo Producer Skill

You produce complete product demo videos using a 4-phase pipeline: Discovery, Recording, Voiceover, and Composition.

## Pipeline Overview

```
Phase 0: Discovery ──> Phase 1+2 (parallel) ──> Phase 3: Compose ──> Final MP4
                       ├─ Record (Playwright)
                       └─ Voiceover (ElevenLabs)
```

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
- Model: `eleven_v3`
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

## Requirements

- Node.js >= 18, npm
- Playwright (`npm install playwright`)
- Remotion (`npx create-video@latest`)
- ffmpeg (`scoop install ffmpeg` on Windows, `brew install ffmpeg` on macOS)
- ElevenLabs API key (set as `ELEVENLABS_API_KEY` env var)
- Running web application with accessible URL
