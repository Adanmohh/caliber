# Social Media Format Specifications

## Platform Dimensions

| Platform | Format | Aspect Ratio | Dimensions | Max Duration | File Type |
|----------|--------|-------------|------------|-------------|-----------|
| Instagram Post | Square | 1:1 | 1080x1080 | Static | PNG/JPEG |
| Instagram Post | Portrait | 4:5 | 1080x1350 | Static | PNG/JPEG |
| Instagram Post | Landscape | 1.91:1 | 1080x566 | Static | PNG/JPEG |
| Instagram Story | Vertical | 9:16 | 1080x1920 | 15s | MP4/PNG |
| Instagram Reel | Vertical | 9:16 | 1080x1920 | 90s | MP4 |
| Instagram Carousel | Square/Portrait | 1:1 or 4:5 | 1080x1080/1350 | 10 slides | PNG/JPEG |
| TikTok | Vertical | 9:16 | 1080x1920 | 60s | MP4 |
| LinkedIn Post | Landscape | 1.91:1 | 1200x628 | Static | PNG/JPEG |
| LinkedIn Post | Square | 1:1 | 1200x1200 | Static | PNG/JPEG |
| LinkedIn Carousel | Mixed | 1:1 or 4:5 | 1080x1080/1350 | 10 slides | PDF/PNG |
| X/Twitter Post | Landscape | 16:9 | 1600x900 | Static | PNG/JPEG |
| X/Twitter Post | Square | 1:1 | 1080x1080 | Static | PNG/JPEG |
| Facebook Post | Landscape | 1.91:1 | 1200x628 | Static | PNG/JPEG |
| Facebook Story | Vertical | 9:16 | 1080x1920 | 20s | MP4/PNG |
| YouTube Thumbnail | Landscape | 16:9 | 1280x720 | Static | PNG/JPEG |
| OG Image | Landscape | 1.91:1 | 1200x630 | Static | PNG |
| Google Display | Various | Multiple | 300x250, 728x90, 160x600 | Static | PNG/JPEG |
| Meta Ad | Various | 1:1, 4:5, 9:16 | 1080x1080, 1080x1350, 1080x1920 | 15s | MP4/PNG |

## Safe Zones

Content must stay within safe zones to avoid platform UI overlaps:

### Instagram Story / Reel (9:16, 1080x1920)
- **Top:** 250px (status bar, username)
- **Bottom:** 300px (CTA buttons, comments, share icons)
- **Left/Right:** 50px padding
- **Safe area:** 980x1370 centered

### TikTok (9:16, 1080x1920)
- **Top:** 150px (status bar)
- **Bottom:** 350px (description, share buttons, music info)
- **Right:** 100px (interaction buttons: like, comment, share)
- **Safe area:** 930x1420

### LinkedIn / Facebook / X Posts
- No significant UI overlaps on feed posts
- Keep text 40px from edges for clean appearance

## Content Type Templates

### Single Post
- Hero image or illustration (60% of canvas)
- Headline text (36-48px, brand display font)
- Optional subheadline (18-24px, brand body font)
- Logo/brand mark (bottom corner, 60-80px)
- CTA text if applicable

### Carousel (Multi-Slide)
- Slide 1: Hook/headline (no logo needed)
- Slides 2-N: One point per slide, consistent layout
- Last slide: CTA + logo + next steps
- Consistent color scheme and typography across all slides
- Visual continuity: use connecting elements (color bar, numbering)

### Story/Reel (Animated)
- 0-1s: Brand logo entrance animation
- 1-3s: Hook text (large, bold, centered)
- 3-8s: Key content with supporting visuals
- 8-12s: CTA with swipe-up or link indicator
- 12-15s: Brand outro

### Ad Creative
- Follow platform ad specs exactly (rejection risk)
- Include CTA button mock-up matching platform style
- Text overlay: max 20% of image area (Meta guideline)
- High contrast between text and background

## Design Principles for Social Content

### Visual Hierarchy (Mobile-First)
1. Headline: largest, boldest, brand display font
2. Supporting visual: product screenshot, illustration, or photo
3. Body text: smaller, brand body font
4. CTA: contrasting color, clear action verb
5. Logo: subtle, bottom corner

### Color Usage
- Primary brand color: headlines, accents, CTA backgrounds
- Accent color: highlights, hover states, secondary CTAs
- Neutral palette: body text, backgrounds
- Dark mode variant: swap surface/on-surface tokens

### Typography Rules
- Headlines: brand display font, 600-800 weight
- Body: brand body font, 400 weight
- Minimum sizes: 36px headline, 24px body, 18px caption
- Line height: 1.2 for headlines, 1.5 for body
- Max 3 text sizes per visual (hierarchy)

### Accessibility
- Minimum contrast ratio 4.5:1 for text on background
- Alt text metadata for all images
- Captions for all video content
- Avoid red/green as only differentiator
