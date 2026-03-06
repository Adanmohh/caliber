# Remotion Composition Reference

## Project Setup

```bash
npx create-video@latest remotion-project
cd remotion-project
npm install @remotion/transitions zod
```

## Schema Definition

```typescript
import { z } from 'zod';

export const DemoVideoSchema = z.object({
  scenes: z.array(
    z.object({
      name: z.string(),
      videoFile: z.string(),         // path in public/recordings/
      voiceoverFile: z.string(),     // path in public/voiceover/
      durationInFrames: z.number(),
      label: z.string(),            // LowerThird text
      playbackRate: z.number().default(1),
      trimBefore: z.number().default(0),  // frames to skip from start
    })
  ),
  intro: z.object({
    title: z.string(),
    subtitle: z.string(),
    durationInFrames: z.number().default(90),  // 3 seconds at 30fps
  }),
  outro: z.object({
    ctaText: z.string(),
    ctaUrl: z.string(),
    durationInFrames: z.number().default(120),  // 4 seconds at 30fps
  }),
  brandColor: z.string().default('#6366f1'),
  fps: z.number().default(30),
});
```

## TransitionSeries Structure

```tsx
import { TransitionSeries, linearTiming } from '@remotion/transitions';
import { fade } from '@remotion/transitions/fade';

const TRANSITION_DURATION = 15; // 0.5s at 30fps

export const DemoVideo: React.FC<z.infer<typeof DemoVideoSchema>> = ({
  scenes, intro, outro, brandColor, fps
}) => {
  return (
    <TransitionSeries>
      {/* Intro */}
      <TransitionSeries.Sequence durationInFrames={intro.durationInFrames}>
        <Intro {...intro} brandColor={brandColor} />
      </TransitionSeries.Sequence>
      <TransitionSeries.Transition
        presentation={fade()}
        timing={linearTiming({ durationInFrames: TRANSITION_DURATION })}
      />

      {/* Scenes */}
      {scenes.map((scene, i) => (
        <React.Fragment key={scene.name}>
          <TransitionSeries.Sequence durationInFrames={scene.durationInFrames}>
            <SceneComposition scene={scene} />
          </TransitionSeries.Sequence>
          {i < scenes.length - 1 && (
            <TransitionSeries.Transition
              presentation={fade()}
              timing={linearTiming({ durationInFrames: TRANSITION_DURATION })}
            />
          )}
        </React.Fragment>
      ))}

      {/* Outro */}
      <TransitionSeries.Transition
        presentation={fade()}
        timing={linearTiming({ durationInFrames: TRANSITION_DURATION })}
      />
      <TransitionSeries.Sequence durationInFrames={outro.durationInFrames}>
        <Outro {...outro} brandColor={brandColor} />
      </TransitionSeries.Sequence>
    </TransitionSeries>
  );
};
```

## Audio Overlay System with Gap-Limiting

Prevents audio from one scene bleeding into the next:

```tsx
function renderOverlays(
  scenes: Scene[],
  fps: number
): React.ReactNode[] {
  let currentFrame = 0;
  const overlays: React.ReactNode[] = [];

  for (const scene of scenes) {
    const audioDuration = getAudioDurationInFrames(scene.voiceoverFile, fps);

    // Gap-limit: audio cannot exceed scene video duration
    const effectiveDuration = Math.min(audioDuration, scene.durationInFrames);

    overlays.push(
      <Sequence
        key={`audio-${scene.name}`}
        from={currentFrame}
        durationInFrames={effectiveDuration}
      >
        <Audio src={staticFile(scene.voiceoverFile)} volume={1} />
      </Sequence>
    );

    currentFrame += scene.durationInFrames - TRANSITION_DURATION;
  }

  return overlays;
}
```

## Branded Intro Pattern

```tsx
import { spring, useCurrentFrame, useVideoConfig } from 'remotion';

export const Intro: React.FC<{
  title: string;
  subtitle: string;
  brandColor: string;
}> = ({ title, subtitle, brandColor }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();

  // Animated orb background
  const orbScale = spring({ frame, fps, config: { damping: 100, mass: 0.5 } });

  // Spring text entrance
  const titleY = spring({
    frame: frame - 10,
    fps,
    config: { damping: 12, stiffness: 100 },
    from: 50,
    to: 0,
  });
  const titleOpacity = spring({ frame: frame - 10, fps, from: 0, to: 1 });

  return (
    <AbsoluteFill style={{ backgroundColor: '#0f0f0f', justifyContent: 'center', alignItems: 'center' }}>
      {/* Orb */}
      <div style={{
        width: 300, height: 300, borderRadius: '50%',
        background: `radial-gradient(circle, ${brandColor}, transparent)`,
        transform: `scale(${orbScale})`,
        position: 'absolute', filter: 'blur(60px)',
      }} />

      {/* Title */}
      <h1 style={{
        color: 'white', fontSize: 72, fontWeight: 700,
        transform: `translateY(${titleY}px)`, opacity: titleOpacity,
        zIndex: 1,
      }}>
        {title}
      </h1>
      <p style={{ color: '#999', fontSize: 28, opacity: titleOpacity, zIndex: 1 }}>
        {subtitle}
      </p>
    </AbsoluteFill>
  );
};
```

## Branded Outro Pattern

```tsx
export const Outro: React.FC<{
  ctaText: string;
  ctaUrl: string;
  brandColor: string;
}> = ({ ctaText, ctaUrl, brandColor }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();

  const scale = spring({ frame, fps, config: { damping: 12 } });

  return (
    <AbsoluteFill style={{ backgroundColor: '#0f0f0f', justifyContent: 'center', alignItems: 'center' }}>
      <div style={{ transform: `scale(${scale})`, textAlign: 'center' }}>
        <h2 style={{ color: 'white', fontSize: 56 }}>{ctaText}</h2>
        <p style={{ color: brandColor, fontSize: 32, marginTop: 20 }}>{ctaUrl}</p>
      </div>
    </AbsoluteFill>
  );
};
```

## LowerThird Overlay

```tsx
export const LowerThird: React.FC<{ label: string; brandColor: string }> = ({
  label, brandColor,
}) => {
  const frame = useCurrentFrame();
  const { fps, durationInFrames } = useVideoConfig();

  // Fade in during first 15 frames, fade out during last 15
  const fadeIn = Math.min(frame / 15, 1);
  const fadeOut = Math.min((durationInFrames - frame) / 15, 1);
  const opacity = Math.min(fadeIn, fadeOut);

  return (
    <AbsoluteFill>
      <div style={{
        position: 'absolute', bottom: 80, left: 60,
        backgroundColor: brandColor, padding: '12px 24px',
        borderRadius: 8, opacity,
      }}>
        <span style={{ color: 'white', fontSize: 24, fontWeight: 600 }}>{label}</span>
      </div>
    </AbsoluteFill>
  );
};
```

## Video Speed Control and Trimming

```tsx
<OffthreadVideo
  src={staticFile(scene.videoFile)}
  playbackRate={scene.playbackRate}   // 1.5 = 50% faster
  startFrom={scene.trimBefore}         // skip first N frames
  style={{ width: '100%', height: '100%', objectFit: 'cover' }}
  muted  // always mute original audio
/>
```

## Total Duration Calculation

Account for transition overlap when calculating total video duration:

```typescript
function calculateTotalDuration(scenes: Scene[], intro: Intro, outro: Outro): number {
  const sceneDuration = scenes.reduce((sum, s) => sum + s.durationInFrames, 0);
  const transitionCount = scenes.length + 1; // between all scenes + intro/outro joins
  const transitionOverlap = transitionCount * TRANSITION_DURATION;

  return intro.durationInFrames + sceneDuration + outro.durationInFrames - transitionOverlap;
}
```

## Render Command

```bash
# Preview in browser
npx remotion preview src/index.ts

# Render to MP4
npx remotion render src/index.ts DemoVideo out/demo.mp4 \
  --codec h264 \
  --crf 18 \
  --fps 30

# Render specific frame range (for testing)
npx remotion render src/index.ts DemoVideo out/test.mp4 \
  --frames=0-90
```
