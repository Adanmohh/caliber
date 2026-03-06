# Conversion Patterns Reference

Deep reference for landing page section patterns, conversion optimization, CTA formulas, performance targets, and common failure modes.

---

## Section Patterns

### Hero Section (3 Variations)

**Variation 1: Benefit-First**
```html
<section class="hero">
  <h1>Ship Your MVP in 48 Hours, Not 48 Days</h1>
  <p class="subhead">The full-stack scaffold that handles auth, database, and deployment so you focus on what matters.</p>
  <a href="#pricing" class="cta-primary">Start Building Free</a>
  <p class="micro-commitment">No credit card required. Cancel anytime.</p>
</section>
```

**Variation 2: Problem-First**
```html
<section class="hero">
  <p class="eyebrow">Tired of boilerplate?</p>
  <h1>Stop Wasting Your First Sprint on Auth and Config</h1>
  <p class="subhead">Get a production-ready app scaffold in minutes. Auth, DB, API, deploy -- done.</p>
  <a href="#pricing" class="cta-primary">Skip the Setup</a>
</section>
```

**Variation 3: Social-Proof-First**
```html
<section class="hero">
  <p class="social-proof-bar">Trusted by 2,400+ developers at Stripe, Vercel, and Linear</p>
  <h1>The Fastest Path from Idea to Deployed MVP</h1>
  <p class="subhead">Join thousands who shipped their first paying product in under a week.</p>
  <a href="#pricing" class="cta-primary">Join 2,400+ Builders</a>
  <div class="logo-strip"><!-- Company logos --></div>
</section>
```

### Problem Section (PAS Formula)

```
Problem:  "You spend 2 weeks on auth, database, and deployment before writing a single feature."
Agitate:  "Meanwhile, your competitor launched last Tuesday with a landing page and Stripe checkout.
           Every day you spend on boilerplate is a day your idea sits unvalidated."
Solve:    "What if you could skip straight to the features that matter? [Product] gives you a
           production-ready scaffold in 5 minutes."
```

Structure: 3 pain points, each with an icon/illustration, short headline, 1-2 sentence description. The agitation intensifies from point 1 to point 3.

### Solution Section (Feature-Benefit Pairs)

```html
<section class="solution">
  <h2>Everything You Need to Launch</h2>
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon"><!-- icon --></div>
      <h3>Authentication Built In</h3>      <!-- Feature -->
      <p>Sign up, sign in, password reset -- all wired up so you never touch auth code again.</p>  <!-- Benefit -->
    </div>
    <!-- Repeat for 3-6 features max -->
  </div>
</section>
```

Rule: Never list a feature without its benefit. "Real-time database" means nothing. "See customer updates the instant they happen" means everything.

### Social Proof Patterns

- **Testimonials:** 3 testimonials minimum. Include name, role, company, headshot. Quote the specific result, not vague praise. "Cut our launch time from 3 months to 2 weeks" beats "Great product!"
- **Logo strip:** 5-8 logos in a single row, grayscale, consistent height (32-40px). Wrap in a trust statement: "Trusted by teams at..."
- **Metrics bar:** 3 numbers max. Format: "2,400+ developers", "14-day average to first paying customer", "99.9% uptime"

### FAQ Section (with Schema Markup)

```html
<section class="faq">
  <h2>Frequently Asked Questions</h2>
  <div class="accordion" itemscope itemtype="https://schema.org/FAQPage">
    <details itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
      <summary itemprop="name">Can I use this with my existing project?</summary>
      <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
        <p itemprop="text">Yes. The scaffold exports a standard React (Vite) project structure...</p>
      </div>
    </details>
    <!-- Repeat for 5-7 questions -->
  </div>
</section>
```

Also add JSON-LD in the `<head>`:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "...", "acceptedAnswer": { "@type": "Answer", "text": "..." } }
  ]
}
</script>
```

### Final CTA (Urgency + Guarantee + Risk-Reversal)

```html
<section class="final-cta">
  <h2>Ready to Ship Your MVP This Week?</h2>
  <p>Join 2,400+ developers who stopped configuring and started shipping.</p>
  <ul class="risk-reversal">
    <li>14-day money-back guarantee -- no questions asked</li>
    <li>Cancel anytime, keep everything you built</li>
    <li>Free migration support if you outgrow us</li>
  </ul>
  <a href="#pricing" class="cta-primary">Start Building Free</a>
  <p class="micro-commitment">Setup takes under 5 minutes. No credit card required.</p>
</section>
```

---

## Conversion Optimization

| Element | Best Practice | Why |
|---------|--------------|-----|
| CTA button placement | Above fold + after every major section + sticky on mobile | Visitors decide at different scroll depths |
| Color contrast | CTA button contrasts against page background (4.5:1 minimum) | Low contrast = invisible CTA |
| Form fields | Max 3 fields for lead gen (name, email, one qualifier) | Every extra field drops conversion 10-15% |
| Above-fold content | H1 + subhead + CTA visible without scrolling | 80% of visitors never scroll past fold |
| Loading speed | Page interactive < 3s on 3G connection | 53% of mobile visitors leave after 3s |
| Mobile tap targets | Buttons minimum 44x44px with 8px spacing | Small targets = missed taps = frustration |
| Trust badges | Place near CTA and payment forms | Trust reduces friction at decision point |
| Exit intent | Show on desktop only, delay 30s, show once per session | Too aggressive = brand damage |
| Social proof placement | Immediately before or after CTA sections | Proof at decision point reinforces action |
| Headline length | 6-12 words for H1, under 30 words for subhead | Short headlines get 2x more engagement |
| Directional cues | Arrows, eye gaze in photos, whitespace pointing to CTA | Guide attention without being obvious |
| Sticky CTA bar | Show after user scrolls past first CTA on mobile | Keeps conversion action always accessible |

---

## CTA Formulas

### Button Copy Patterns

| Pattern | Example | Best For |
|---------|---------|----------|
| Get [Benefit] | "Get Instant Access" | Digital products, courses |
| Start [Action] Free | "Start Building Free" | SaaS, tools, free trials |
| Join [Number] [People] | "Join 2,400+ Builders" | Community, social proof angle |
| [Action] in [Time] | "Launch in 5 Minutes" | Speed-focused products |
| Try [Product] Free | "Try ScaffoldKit Free" | Low-commitment entry point |
| Claim Your [Benefit] | "Claim Your Free Audit" | Lead magnets, consultations |

### Surrounding Copy Elements

- **Micro-commitment:** "No credit card required" or "Takes under 2 minutes" -- reduces perceived effort
- **Risk reversal:** "30-day money-back guarantee" or "Cancel anytime" -- removes downside fear
- **Urgency (authentic only):** "Founding member pricing ends March 15" or "Only 12 spots left this cohort" -- never fake scarcity
- **Social reinforcement:** "Join 2,400+ developers" directly on or near the button

Avoid: "Submit", "Click Here", "Buy Now" (too generic or too aggressive for top-of-funnel).

---

## Performance Checklist

### Core Web Vitals Targets
- **LCP (Largest Contentful Paint):** < 2.5s -- hero image or H1 text must render fast
- **FID (First Input Delay):** < 100ms -- minimize main-thread JavaScript blocking
- **CLS (Cumulative Layout Shift):** < 0.1 -- set explicit width/height on all images and embeds

### Image Optimization
- [ ] Use WebP format with JPEG fallback via `<picture>` element
- [ ] Implement `srcset` for responsive images (640w, 960w, 1280w, 1920w)
- [ ] Lazy-load all images below the fold (`loading="lazy"`)
- [ ] Set explicit `width` and `height` attributes to prevent layout shift
- [ ] Compress to < 100KB per hero image, < 50KB per content image

### Font Loading
- [ ] Preload primary font: `<link rel="preload" href="font.woff2" as="font" type="font/woff2" crossorigin>`
- [ ] Use `font-display: swap` to prevent invisible text during load
- [ ] Limit to 2 font families and 3-4 weights maximum
- [ ] Self-host fonts instead of Google Fonts for privacy and speed

### Critical CSS
- [ ] Inline critical above-fold CSS in `<style>` tag in `<head>`
- [ ] Load remaining CSS asynchronously or defer
- [ ] Remove unused CSS (PurgeCSS for Tailwind builds)

### JavaScript
- [ ] No JS required for initial page render (progressive enhancement)
- [ ] Defer non-critical scripts: `<script defer src="...">`
- [ ] Total JS budget: < 50KB gzipped for landing pages
- [ ] No third-party scripts blocking render (analytics, chat widgets load after interaction)

---

## Tech Stack Decision Tree

```
Is this a simple marketing/landing page?
  Yes -> Need forms or dynamic content?
    Yes -> React (Vite) + Tailwind
    No  -> Plain HTML + Tailwind (fastest, simplest)
  No  -> Building an app? → Use MVP Scaffolder instead
```

Default recommendation: **Plain HTML + Tailwind** for landing pages. Use **React (Vite)** only when the page needs interactivity (dynamic pricing, multi-step forms, A/B testing).

---

## Failure Modes

| Pitfall | Cause | Fix |
|---------|-------|-----|
| CTA invisible on load | Primary CTA placed below the fold | Move CTA into hero section, add sticky mobile bar |
| Slow page load (> 3s) | Uncompressed images, render-blocking JS | WebP images, defer JS, inline critical CSS |
| No mobile optimization | Desktop-first design, fixed widths | Mobile-first CSS, test on real devices at 375px |
| Wall of text | No visual hierarchy, paragraphs too long | Max 3 lines per paragraph, use subheadings every 2-3 sections |
| Generic stock photos | Placeholder images left in production | Use product screenshots, team photos, or illustrations |
| No social proof | Skipped testimonials or metrics | Add at minimum 3 testimonials and 1 metric bar |
| Form too long | 5+ fields on lead capture | Cut to 3 fields max: name, email, one qualifier |
| No clear value prop | H1 describes product not benefit | Rewrite H1 as outcome: "Ship in 48 hours" not "App scaffolder" |
| Broken responsive layout | Hardcoded pixel widths, no media queries | Use relative units (rem, %), test at 375/768/1024/1440px |
| Missing meta tags | No OG image, no description | Add og:title, og:description, og:image, twitter:card to head |
