# Remotion Still & Batch Rendering

## Still Component (Static Images)

Remotion's `<Still>` component renders a single frame — perfect for social media images.

### Definition
```tsx
import { Still } from "remotion";
import { SocialPost } from "./SocialPost";

export const RemotionRoot = () => {
  return (
    <>
      <Still id="instagram-post" component={SocialPost} width={1080} height={1080} />
      <Still id="instagram-story" component={SocialPost} width={1080} height={1920} />
      <Still id="linkedin-post" component={SocialPost} width={1200} height={628} />
      <Still id="twitter-post" component={SocialPost} width={1600} height={900} />
      <Still id="og-image" component={SocialPost} width={1200} height={630} />
    </>
  );
};
```

### Rendering Stills Programmatically
```typescript
import { renderStill, selectComposition } from '@remotion/renderer';
import { bundle } from '@remotion/bundler';

const bundleLocation = await bundle({ entryPoint: './src/index.ts' });

const composition = await selectComposition({
  serveUrl: bundleLocation,
  id: 'instagram-post',
  inputProps: {
    headline: "Stop Burnout Before It Starts",
    cta: "Try Free for 14 Days",
    variant: "dark",
  },
});

await renderStill({
  composition,
  serveUrl: bundleLocation,
  output: 'out/instagram-post.png',
  imageFormat: 'png',
});
```

## Animated Content (Short Videos)

For animated stories, reels, and motion graphics, use `<Composition>`:

```tsx
import { Composition } from "remotion";
import { AnimatedStory } from "./AnimatedStory";

export const RemotionRoot = () => {
  return (
    <Composition
      id="instagram-story"
      component={AnimatedStory}
      width={1080}
      height={1920}
      fps={30}
      durationInFrames={15 * 30} // 15 seconds
      defaultProps={{
        headline: "3 Signs of Burnout",
        points: ["Exhaustion", "Cynicism", "Reduced efficacy"],
        brandColors: { primary: "#2563eb", accent: "#10b981" },
      }}
    />
  );
};
```

### Animation Patterns

```tsx
import { useCurrentFrame, interpolate, spring } from "remotion";

const TextEntrance: React.FC<{ text: string; delay: number }> = ({ text, delay }) => {
  const frame = useCurrentFrame();
  const fps = 30;

  const progress = spring({
    frame: frame - delay,
    fps,
    config: { damping: 20, mass: 0.8 },
  });

  const translateY = interpolate(progress, [0, 1], [40, 0]);
  const opacity = interpolate(progress, [0, 1], [0, 1]);

  return (
    <div style={{
      transform: `translateY(${translateY}px)`,
      opacity,
      fontSize: 48,
      fontWeight: 700,
    }}>
      {text}
    </div>
  );
};
```

## Template Architecture

### Props-Driven Design
```typescript
import { z } from "zod";

export const SocialPostSchema = z.object({
  headline: z.string(),
  subheadline: z.string().optional(),
  cta: z.string().optional(),
  imageUrl: z.string().optional(),
  brandColors: z.object({
    primary: z.string(),
    accent: z.string(),
    surface: z.string(),
    onSurface: z.string(),
  }),
  fonts: z.object({
    display: z.string(),
    body: z.string(),
  }),
  variant: z.enum(["light", "dark"]).default("light"),
  logoUrl: z.string().optional(),
});

export type SocialPostProps = z.infer<typeof SocialPostSchema>;
```

### Responsive Template Component
```tsx
const SocialPost: React.FC<SocialPostProps> = ({
  headline,
  subheadline,
  cta,
  brandColors,
  fonts,
  variant,
  logoUrl,
}) => {
  const bg = variant === "dark" ? brandColors.onSurface : brandColors.surface;
  const fg = variant === "dark" ? brandColors.surface : brandColors.onSurface;

  return (
    <div style={{
      width: "100%",
      height: "100%",
      display: "flex",
      flexDirection: "column",
      justifyContent: "center",
      alignItems: "center",
      padding: 80,
      backgroundColor: bg,
      fontFamily: fonts.body,
    }}>
      <h1 style={{
        fontSize: 56,
        fontWeight: 800,
        fontFamily: fonts.display,
        color: brandColors.primary,
        textAlign: "center",
        lineHeight: 1.2,
        marginBottom: 24,
      }}>
        {headline}
      </h1>

      {subheadline && (
        <p style={{
          fontSize: 28,
          color: fg,
          textAlign: "center",
          lineHeight: 1.5,
          opacity: 0.8,
          maxWidth: "80%",
        }}>
          {subheadline}
        </p>
      )}

      {cta && (
        <div style={{
          marginTop: 40,
          padding: "16px 48px",
          backgroundColor: brandColors.accent,
          borderRadius: 12,
          fontSize: 24,
          fontWeight: 600,
          color: "white",
        }}>
          {cta}
        </div>
      )}

      {logoUrl && (
        <img src={logoUrl} style={{
          position: "absolute",
          bottom: 40,
          right: 40,
          width: 60,
          height: 60,
          objectFit: "contain",
        }} />
      )}
    </div>
  );
};
```

## Batch Rendering Script

```typescript
import { renderStill, selectComposition } from '@remotion/renderer';
import { bundle } from '@remotion/bundler';

const PLATFORMS = [
  { id: 'instagram-post', width: 1080, height: 1080, format: 'png' },
  { id: 'instagram-story', width: 1080, height: 1920, format: 'png' },
  { id: 'linkedin-post', width: 1200, height: 628, format: 'png' },
  { id: 'twitter-post', width: 1600, height: 900, format: 'png' },
  { id: 'og-image', width: 1200, height: 630, format: 'png' },
];

const VARIANTS = [
  { headline: "Stop Burnout Before It Starts", variant: "light" },
  { headline: "Stop Burnout Before It Starts", variant: "dark" },
  { headline: "3 Signs You're Burning Out", variant: "light" },
];

async function batchRender() {
  const bundleLocation = await bundle({ entryPoint: './src/index.ts' });

  for (const platform of PLATFORMS) {
    for (const content of VARIANTS) {
      const composition = await selectComposition({
        serveUrl: bundleLocation,
        id: platform.id,
        inputProps: content,
      });

      const filename = `${platform.id}-${content.variant}-${Date.now()}.${platform.format}`;

      await renderStill({
        composition,
        serveUrl: bundleLocation,
        output: `out/${filename}`,
        imageFormat: platform.format as 'png' | 'jpeg',
      });

      console.log(`Rendered: ${filename}`);
    }
  }
}

batchRender();
```

## Directory Structure

```
social-content/
├── src/
│   ├── Root.tsx              # All Still + Composition definitions
│   ├── index.ts              # registerRoot(RemotionRoot)
│   ├── types.ts              # Zod schemas for props
│   ├── templates/
│   │   ├── SocialPost.tsx    # Static post template
│   │   ├── Carousel.tsx      # Multi-slide carousel
│   │   ├── AnimatedStory.tsx # Animated story/reel
│   │   └── AdBanner.tsx      # Ad creative template
│   └── components/
│       ├── BrandLogo.tsx     # Logo with optional animation
│       ├── TextBlock.tsx     # Styled text with brand fonts
│       └── CTAButton.tsx     # Call-to-action button
├── public/
│   ├── images/               # Product screenshots, photos
│   └── brand/                # Brand assets (logo, tokens)
├── batch-render.ts           # Multi-platform rendering script
└── package.json
```

## Key Patterns

| Pattern | Implementation |
|---------|---------------|
| Brand token consumption | Read brand-tokens.json, map to component props |
| Multi-platform from one template | Same component, different Still dimensions |
| A/B variants | Loop over headline/CTA/variant arrays |
| Dark mode | Swap surface <-> onSurface via variant prop |
| Carousel continuity | Shared color bar + numbering across slides |
| Safe zones | Inner padding matching platform specs |
