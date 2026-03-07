# Content Creator -- Output Template

> Every content production delivers a brief, an asset manifest, render configuration, and a delivery checklist. Scale from a single social post to a multi-platform batch.

---

## OUTPUT STRUCTURE OVERVIEW

```
COMPLETE CONTENT DELIVERY:

1. Content Brief
2. Asset Manifest
3. Template Architecture
4. Batch Render Config
5. Delivery Checklist
6. Quality Scorecard
```

---

## SECTION 1: CONTENT BRIEF

```
================================================================
CONTENT BRIEF
================================================================

Project:        {Project Name}
Date:           {YYYY-MM-DD}
Requested By:   {User / team}
Content Type:   {Social post | Carousel | Ad banner | Story |
                 Motion graphic | OG image | Logo animation}

OBJECTIVE:
{What this content should accomplish -- awareness, conversion, engagement}

TARGET AUDIENCE:
{Who sees this content, their context, what resonates with them}

KEY MESSAGE:
{One sentence: the core message this content communicates}

COPY ELEMENTS:
| Element       | Text                              | Source           |
|--------------|-----------------------------------|------------------|
| Headline      | {Primary headline}                | {Copywriter/user}|
| Subheadline   | {Supporting text}                 | {Copywriter/user}|
| CTA           | {Call to action}                  | {Copywriter/user}|
| Hashtags      | {#tag1 #tag2 #tag3}               | {Strategy/user}  |

BRAND TOKENS:
| Token            | Value                          |
|-----------------|--------------------------------|
| Primary Color    | {oklch(X X X) or #hex}        |
| Accent Color     | {oklch(X X X) or #hex}        |
| Surface Color    | {oklch(X X X) or #hex}        |
| On-Surface Color | {oklch(X X X) or #hex}        |
| Display Font     | {Font family name}             |
| Body Font        | {Font family name}             |
| Logo URL         | {Path to logo asset}           |

SOURCE FILES:
- Brand tokens: {path to brand-tokens.json}
- Theme CSS: {path to theme.css}
- Voice guide: {path to voice-guide.md}
- Product screenshots: {paths or "N/A"}

================================================================
```

---

## SECTION 2: ASSET MANIFEST

```
================================================================
ASSET MANIFEST
================================================================

| # | Asset ID              | Platform     | Dimensions   | Format | Type     | Status    |
|---|-----------------------|-------------|-------------|--------|----------|-----------|
| 1 | {project}-ig-post     | Instagram    | 1080x1080   | PNG    | Static   | {Pending} |
| 2 | {project}-ig-story    | Instagram    | 1080x1920   | PNG    | Static   | {Pending} |
| 3 | {project}-li-post     | LinkedIn     | 1200x628    | PNG    | Static   | {Pending} |
| 4 | {project}-x-post      | X (Twitter)  | 1600x900    | PNG    | Static   | {Pending} |
| 5 | {project}-og-image    | Website      | 1200x630    | PNG    | Static   | {Pending} |
| 6 | {project}-ig-reel     | Instagram    | 1080x1920   | MP4    | Animated | {Pending} |
| 7 | {project}-meta-ad     | Meta Ads     | 1080x1080   | PNG    | Static   | {Pending} |

TOTAL ASSETS: {N}
STATIC: {N} | ANIMATED: {N}

================================================================
```

---

## SECTION 3: TEMPLATE ARCHITECTURE

```
================================================================
TEMPLATE ARCHITECTURE
================================================================

COMPONENT: {TemplateName}.tsx

Props Interface:
  headline:     string        (required)
  subheadline:  string        (optional)
  cta:          string        (optional)
  imageUrl:     string        (optional)
  brandColors:  BrandColors   (required -- from brand-tokens.json)
  fonts:        FontConfig    (required -- from brand-tokens.json)
  variant:      'light'|'dark'(default: 'light')
  platform:     PlatformType  (required -- sets dimensions)

VARIANTS:
| Variant | Background        | Text Color        | Use When              |
|---------|-------------------|-------------------|-----------------------|
| light   | {surface color}   | {on-surface}      | Default, most content |
| dark    | {primary color}   | {white/light}     | High-impact, CTAs     |

PLATFORM CONFIGS:
| Platform ID      | Width | Height | Safe Zone (px) | Notes               |
|-----------------|-------|--------|----------------|---------------------|
| instagram-post   | 1080  | 1080   | 0              | Square format       |
| instagram-story  | 1080  | 1920   | 150 top/bottom | UI overlaps         |
| linkedin-post    | 1200  | 628    | 0              | Landscape format    |
| twitter-post     | 1600  | 900    | 0              | 16:9 ratio          |
| og-image         | 1200  | 630    | 0              | Meta tag preview    |
| tiktok-cover     | 1080  | 1920   | 150 top/bottom | Platform UI overlay |
| meta-ad-square   | 1080  | 1080   | 0              | Ad manager format   |
| meta-ad-story    | 1080  | 1920   | 250 bottom     | CTA button overlap  |

================================================================
```

---

## SECTION 4: BATCH RENDER CONFIG

```
================================================================
BATCH RENDER CONFIG
================================================================

Render Engine: Remotion ({renderStill} for static, {renderMedia} for video)

STATIC BATCH:
| Composition ID     | Output Path                    | Format | Quality |
|--------------------|--------------------------------|--------|---------|
| {project}-ig-post  | out/{project}-ig-post.png      | PNG    | 100     |
| {project}-ig-story | out/{project}-ig-story.png     | PNG    | 100     |
| {project}-li-post  | out/{project}-li-post.png      | PNG    | 100     |
| {project}-x-post   | out/{project}-x-post.png       | PNG    | 100     |
| {project}-og-image | out/{project}-og-image.png     | PNG    | 100     |

VIDEO BATCH (if applicable):
| Composition ID     | Output Path                    | Codec  | FPS | Duration |
|--------------------|--------------------------------|--------|-----|----------|
| {project}-ig-reel  | out/{project}-ig-reel.mp4      | H.264  | 30  | {N}s     |
| {project}-story    | out/{project}-story.mp4        | H.264  | 30  | {N}s     |

RENDER COMMANDS:
```bash
# Render all stills
npx remotion still src/Root.tsx {composition-id} out/{filename}.png

# Render video
npx remotion render src/Root.tsx {composition-id} out/{filename}.mp4

# Batch render (all compositions)
npx remotion render src/Root.tsx --all
```

================================================================
```

---

## SECTION 5: DELIVERY CHECKLIST

```
================================================================
DELIVERY CHECKLIST
================================================================

BRAND COMPLIANCE:
- [ ] All colors from brand-tokens.json (no hardcoded values)
- [ ] Typography uses specified display + body fonts only
- [ ] Logo placement consistent across all assets
- [ ] Visual style matches voice-guide.md tone

PLATFORM COMPLIANCE:
- [ ] Dimensions match platform specs exactly
- [ ] Safe zones respected (stories, reels, ads)
- [ ] Text meets minimum size: 24px body, 36px headlines
- [ ] Critical content visible in mobile preview

CONTENT QUALITY:
- [ ] Headline is readable at thumbnail size
- [ ] Visual hierarchy: headline > subhead > CTA
- [ ] CTA is clear and actionable
- [ ] No spelling or grammar errors in copy

ACCESSIBILITY:
- [ ] Color contrast passes WCAG AA (4.5:1 for text)
- [ ] Alt text metadata included for all images
- [ ] Text not embedded in images without accessible alternative

TECHNICAL:
- [ ] All assets rendered at correct dimensions
- [ ] File sizes optimized (PNG < 5MB, MP4 < 50MB)
- [ ] No broken image references in templates
- [ ] Video assets include correct codec and frame rate

DELIVERY:
- [ ] All assets in asset manifest marked as Complete
- [ ] Files organized in out/ directory
- [ ] Naming convention followed: {project}-{platform}-{type}.{ext}

================================================================
```

---

## SECTION 6: QUALITY SCORECARD

```
================================================================
QUALITY SCORECARD
================================================================

| Criterion            | Weight | Score [1-5] | Weighted |
|---------------------|--------|------------|----------|
| Brand consistency    | 30%    | {score}    | {calc}   |
| Platform compliance  | 25%    | {score}    | {calc}   |
| Visual hierarchy     | 20%    | {score}    | {calc}   |
| Template reusability | 15%    | {score}    | {calc}   |
| Asset completeness   | 10%    | {score}    | {calc}   |
|---------------------|--------|------------|----------|
| TOTAL               | 100%   |            | {total}  |

INTERPRETATION:
- 4.5-5.0: Production-ready, ship immediately
- 3.5-4.4: Minor adjustments needed
- 2.5-3.4: Significant rework required
- 1.0-2.4: Restart from brief

================================================================
```
