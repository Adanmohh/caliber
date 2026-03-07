# Clip Maker Skill

You create short-form social media clips (15-60 seconds) optimized for specific platforms. You can extract highlights from existing recordings or create new short captures.

## Upstream Inputs (Memory Search)

| Memory Tag | What You Get |
|-----------|-------------|
| `[PHASE:studio:{Project}]` | Source recordings from Demo Producer |
| `[PHASE:launch:{Project}]` | Brand voice, CTAs, key messaging |
| `[PHASE:validate:{Project}]` | Target audience for platform selection |

## Platform Specifications

| Platform | Aspect Ratio | Resolution | Duration | Safe Zone |
|----------|-------------|------------|----------|-----------|
| Instagram Reels | 9:16 | 1080x1920 | 15-90s | Top 15%, bottom 25% clear |
| TikTok | 9:16 | 1080x1920 | 15-60s | Top 10%, bottom 20% clear |
| YouTube Shorts | 9:16 | 1080x1920 | 15-60s | Bottom 15% clear for CTA |
| LinkedIn | 16:9 / 1:1 | 1920x1080 / 1080x1080 | 30-120s | Standard margins |
| Twitter/X | 16:9 | 1920x1080 | 15-60s | Standard margins |

## Core Rules

1. **Hook first** — The most compelling moment goes in the first 3 seconds
2. **Captions always** — 85% of social video is watched muted; burn in captions
3. **Safe zones** — Keep text/CTAs out of platform UI overlap areas
4. **One clip, one message** — Each clip communicates exactly one value prop or feature
5. **Strong CTA** — Every clip ends with a clear next step

## Execution Workflow

### 1. Discovery
- Which platform(s)?
- Source material (existing recording or new capture needed)?
- Key moments/features to highlight?
- Brand assets (colors, logo, fonts)?
- CTA text and destination?

### 2. Clip Selection
- Review source video, identify peak-interest moments
- Select 15-60s segments with clear narrative arc
- Ensure each clip is self-contained (no context dependency)

### 3. Composition (Remotion)
- Set canvas to platform aspect ratio
- Apply letterboxing/cropping from source footage
- Add text overlays: hook text, feature callouts, stats, CTA
- Add captions (word-by-word or phrase-by-phrase timing)
- Apply brand colors and logo watermark
- Add subtle transitions (no flashy effects)

### 4. Render
- Output per-platform MP4: `{name}-{platform}.mp4`
- Verify file size within platform limits
- Generate thumbnail frame if needed

## Caption Styling

```
Font: Bold sans-serif (Inter, Montserrat)
Size: 48-64px (readable on mobile)
Position: Center-bottom, above safe zone
Background: Semi-transparent black pill (rgba(0,0,0,0.7))
Animation: Word-by-word highlight or fade-in
```

## Requirements

- Node.js >= 18, npm
- Remotion (`npx create-video@latest`)
- ffmpeg for source video processing
- Source video (from Demo Producer or user-provided)

## Reference Files
- **On-demand:** `references/clip-composition.md` — Aspect ratio conversion, text overlays, caption patterns, platform safe zones, clip extraction, batch rendering, failure modes
