# Clip Composition Reference

## Aspect Ratio Conversion

### 16:9 Source to 9:16 Vertical (Instagram/TikTok/Shorts)

```tsx
// Crop center of 1920x1080 source to 608x1080, then scale to 1080x1920
<OffthreadVideo
  src={staticFile(sourceVideo)}
  style={{
    width: 1920 * (1920/1080),  // Scale up
    height: 1920,
    objectFit: 'cover',
    objectPosition: 'center',   // Focus on center of screen
    transform: 'translateX(-25%)',  // Adjust horizontal center
  }}
  muted
/>
```

Alternative: Letterbox with blurred background
```tsx
<AbsoluteFill style={{ backgroundColor: '#000' }}>
  {/* Blurred background fill */}
  <OffthreadVideo src={staticFile(src)} style={{ width: '100%', height: '100%', objectFit: 'cover', filter: 'blur(20px) brightness(0.4)', transform: 'scale(1.2)' }} muted />
  {/* Sharp center video */}
  <OffthreadVideo src={staticFile(src)} style={{ position: 'absolute', top: '20%', width: '100%', height: '60%', objectFit: 'contain' }} muted />
</AbsoluteFill>
```

## Text Overlay Patterns

### Hook Text (First 3 seconds)
```tsx
const HookText: React.FC<{ text: string }> = ({ text }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();

  const scale = spring({ frame, fps, config: { damping: 12, stiffness: 200 } });
  const opacity = interpolate(frame, [0, 8], [0, 1], { extrapolateRight: 'clamp' });

  return (
    <div style={{
      position: 'absolute', top: '15%', width: '100%',
      textAlign: 'center', padding: '0 40px',
      transform: `scale(${scale})`, opacity,
    }}>
      <span style={{
        color: 'white', fontSize: 64, fontWeight: 800,
        textShadow: '0 4px 20px rgba(0,0,0,0.8)',
        lineHeight: 1.2,
      }}>
        {text}
      </span>
    </div>
  );
};
```

### Caption Overlay (Word-by-word highlight)
```tsx
interface CaptionWord { word: string; startFrame: number; endFrame: number; }

const Captions: React.FC<{ words: CaptionWord[]; activeColor: string }> = ({ words, activeColor }) => {
  const frame = useCurrentFrame();

  return (
    <div style={{
      position: 'absolute', bottom: '28%', width: '100%',
      textAlign: 'center', padding: '0 30px',
    }}>
      <div style={{
        display: 'inline-block',
        backgroundColor: 'rgba(0,0,0,0.7)',
        borderRadius: 12, padding: '12px 20px',
      }}>
        {words.map((w, i) => {
          const isActive = frame >= w.startFrame && frame <= w.endFrame;
          return (
            <span key={i} style={{
              color: isActive ? activeColor : 'white',
              fontSize: 48, fontWeight: isActive ? 800 : 600,
              marginRight: 8,
              transition: 'none',  // No CSS transitions in Remotion!
            }}>
              {w.word}
            </span>
          );
        })}
      </div>
    </div>
  );
};
```

### CTA End Card
```tsx
const CTACard: React.FC<{ text: string; url: string; brandColor: string }> = ({ text, url, brandColor }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const scale = spring({ frame, fps, config: { damping: 15 } });

  return (
    <AbsoluteFill style={{ backgroundColor: '#0f0f0f', justifyContent: 'center', alignItems: 'center' }}>
      <div style={{ transform: `scale(${scale})`, textAlign: 'center' }}>
        <p style={{ color: 'white', fontSize: 48, fontWeight: 700 }}>{text}</p>
        <p style={{ color: brandColor, fontSize: 32, marginTop: 16 }}>{url}</p>
      </div>
    </AbsoluteFill>
  );
};
```

## Platform Safe Zone Map

### Instagram Reels (1080x1920)
```
+--------------------+
| #### UNSAFE ####   | <- Top 15% (0-288px): Username, follow button
|                    |
|                    |
|   SAFE CONTENT     | <- Middle 60% (288-1344px)
|     AREA           |
|                    |
|                    |
| #### UNSAFE ####   | <- Bottom 25% (1440-1920px): Caption, music, share
| ################## |
+--------------------+
```

### TikTok (1080x1920)
```
+--------------------+
| ### UNSAFE ###     | <- Top 10% (0-192px): Status bar, close button
|                    |
|                    |
|   SAFE CONTENT     | <- Middle 70% (192-1536px)
|     AREA           |
|                    |
| #### UNSAFE ####   | <- Bottom 20% (1536-1920px): Username, caption, music
| ################## |
+--------------------+
```

### YouTube Shorts (1080x1920)
```
+--------------------+
|                    | <- Top 5% (minimal UI)
|                    |
|   SAFE CONTENT     | <- Middle 80%
|     AREA           |
|                    |
|                    |
| #### UNSAFE ####   | <- Bottom 15% (1632-1920px): Subscribe, share, CTA
+--------------------+
```

## Clip Extraction from Source Video

### Finding Key Moments with ffmpeg
```bash
# Extract one frame every 3 seconds for visual review
ffmpeg -i source.mp4 -vf "fps=1/3" -q:v 2 frames/frame-%04d.jpg

# Get video duration
ffprobe -v quiet -show_entries format=duration -of csv=p=0 source.mp4

# Extract a specific clip (start at 45s, duration 30s)
ffmpeg -ss 45 -i source.mp4 -t 30 -c copy clip-feature-demo.mp4

# Extract clip with re-encoding (needed if source has variable framerate)
ffmpeg -ss 45 -i source.mp4 -t 30 -c:v libx264 -crf 18 clip-feature-demo.mp4
```

### Clip Selection Criteria
| Criterion | Good Clip | Bad Clip |
|-----------|-----------|----------|
| Hook | Visual change in first 1s | Static screen, loading |
| Action density | Something happens every 3-5s | Long pauses, waiting |
| Self-contained | Makes sense without context | Requires prior knowledge |
| Audio | Clear narration or silence (add music) | Background noise, crosstalk |
| Length | 15-45s (platform sweet spot) | >60s or <10s |

## Batch Rendering Multiple Platforms

```typescript
const PLATFORMS = {
  'instagram-reel': { width: 1080, height: 1920, maxDuration: 90 * 30 },
  'tiktok':         { width: 1080, height: 1920, maxDuration: 60 * 30 },
  'youtube-short':  { width: 1080, height: 1920, maxDuration: 60 * 30 },
  'linkedin':       { width: 1920, height: 1080, maxDuration: 120 * 30 },
  'twitter':        { width: 1920, height: 1080, maxDuration: 60 * 30 },
} as const;

// Render script (run from CLI)
// npx remotion render src/index.ts ClipInstagram out/clip-instagram.mp4 --width 1080 --height 1920
// npx remotion render src/index.ts ClipLinkedIn out/clip-linkedin.mp4 --width 1920 --height 1080
```

## Failure Modes

| Pitfall | Cause | Fix |
|---------|-------|-----|
| Text cut off by platform UI | Placed in unsafe zone | Check safe zone map above |
| Caption unreadable on mobile | Font too small | Minimum 48px for vertical, 36px for horizontal |
| Video looks pixelated | Upscaled low-res source | Source must be >= output resolution |
| Audio out of sync with captions | Manual timing drift | Use word-level timestamps from TTS API |
| CSS animation used | Habit from web dev | NEVER use CSS transitions/animations in Remotion |
| Clip feels jarring | No transition in/out | Add 0.5s fade at start and end |
| File too large for platform | High bitrate | Use CRF 23-28 for social, keep under 100MB |
| Aspect ratio distorted | Wrong objectFit | Use `objectFit: 'cover'` and adjust position |
