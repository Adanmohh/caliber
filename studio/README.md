# Studio Plugin

Visual production studio. Product demos, social clips, branded content. Part of the Organtic ecosystem.

## Agents

| Agent | Role | Output |
|-------|------|--------|
| Demo Producer | Full product demo videos via 4-phase pipeline | 2-5 min MP4 |
| Clip Maker | Short social media clips for specific platforms | 15-60s MP4 per platform |
| Content Creator | Branded social media images and short-form videos | Static images (PNG) + 5-30s MP4 |

## Pipeline

```
Discovery ──> Record (Playwright) ──┐
                                    ├──> Compose (Remotion) ──> Final MP4
         ──> Voiceover (ElevenLabs) ┘
```

## Requirements

- **Node.js** >= 18
- **Playwright** — browser recording (`npm install playwright`)
- **Remotion** — video composition (`npx create-video@latest`)
- **ffmpeg** — video conversion (`scoop install ffmpeg` on Windows, `brew install ffmpeg` on macOS)
- **ElevenLabs API key** — text-to-speech voiceover (set as `ELEVENLABS_API_KEY` env var)

## Install

```bash
npm install playwright
npx create-video@latest
scoop install ffmpeg   # Windows
```

## Usage

### Full Product Demo
```
/product-demo
```
Walks through Discovery, Recording, Voiceover, and Composition phases to produce a complete demo video.

### Social Clips
```
/social-clip
```
Creates platform-optimized short clips from existing recordings or new captures. Supports Instagram Reels, TikTok, YouTube Shorts, LinkedIn, and Twitter/X.

## Ecosystem Integration

- **Upstream:** Landing Page Builder (provides URL to record), Copywriter (provides scripts)
- **Downstream:** Media Planner (paid promotion), Landing Page Builder (video embedding)
