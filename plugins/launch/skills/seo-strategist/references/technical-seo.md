# Technical SEO Reference Guide

> Complete technical SEO framework based on CXL/Peep Laja ResearchXL methodology, current best practices (2024-2026), and agentic execution patterns. Covers auditing, crawlability, indexation, Core Web Vitals, site architecture, page speed, mobile-first indexing, structured data, JavaScript SEO, and log file analysis.

---

## 1. The Technical SEO Audit Process

A technical SEO audit is a systematic evaluation of every factor that affects a site's ability to be crawled, indexed, rendered, and ranked by search engines. The process follows CXL's ResearchXL framework adapted for technical SEO.

### Audit Philosophy: ResearchXL for Technical SEO

CXL's core principle: never scale what you have not tested. The ResearchXL framework ensures you identify real problems before jumping to solutions. Applied to technical SEO, it produces six pillars of investigation:

**Pillar 1 -- Heuristic Analysis**
Walk the site as both a user and a search engine crawler:
- Relevance: Does each page satisfy the search intent behind its target queries?
- Clarity: Is the content structure parseable by both humans and crawlers?
- Friction: What technical barriers prevent crawling, indexing, or ranking?
- Anxiety: Are trust signals missing (HTTPS, author bios, citations, contact info)?
- Distraction: Are there elements diluting topical focus or wasting crawl budget?

**Pillar 2 -- Technical Analysis**
Systematic crawl of the entire site to extract structural data:
- Crawl the site to map all URLs, status codes, redirects, and link relationships
- Identify broken links, redirect chains (2+ hops), orphan pages, and crawl traps
- Audit robots.txt rules and XML sitemap accuracy
- Check canonical tag implementation across all page templates
- Review server response codes and redirect logic (301 vs 302 vs meta refresh)
- Analyze JavaScript rendering behavior and content visibility

**Pillar 3 -- Digital Analytics**
Mine search performance data for technical issues:
- Index coverage reports: identify excluded pages, crawl anomalies, and indexing errors
- Performance data: pages with high impressions but low clicks (title/description problems)
- Crawl stats: frequency, response times, pages crawled per day trends
- Core Web Vitals field data mapped to ranking performance by page template
- Content decay signals: pages with declining organic traffic over 90+ days

**Pillar 4 -- Qualitative Research**
Gather context that data alone cannot provide:
- Interview content teams about publishing workflows, CMS constraints, and SEO awareness
- Survey developers about technical debt, rendering architecture, and deployment practices
- Review competitor technical implementations to identify gaps and opportunities
- Gather stakeholder input on priority pages and business-critical URL segments

**Pillar 5 -- User Testing**
Validate assumptions about how the site functions in practice:
- Test navigation paths to verify internal linking assumptions
- Assess mobile usability across real devices (not just emulators)
- Evaluate perceived page load speed vs. measured Core Web Vitals metrics
- Test structured data rendering in actual search result previews

**Pillar 6 -- Behavioral Analysis**
Understand how users interact with the site after arriving from search:
- User flow analysis to identify pages that lose visitors rapidly (pogo-sticking signals)
- Cross-reference bounce rates with page speed metrics by template type
- Map engagement depth (scroll, time on page) to content structure quality
- Identify intent mismatches where users arrive but immediately return to SERPs

### Action Bucket Categorization

After completing the six-pillar analysis, categorize every finding:

| Bucket | Definition | Example |
|---|---|---|
| Just Do It | Quick fix, clear positive impact, no risk | Fix broken internal links, add missing canonical tags |
| Test | Needs validation before scaling | New internal linking pattern, title tag formula change |
| Instrument | Needs better measurement before acting | Set up log file analysis, add structured data tracking |
| Hypothesize | Complex issue needing formal experiment design | Site architecture restructure, URL migration |
| Investigate | Anomaly requiring deeper research | Unexplained ranking drop, crawl frequency decline |

---

## 2. Crawlability Framework

Crawlability determines whether search engines can discover and access your content. If pages cannot be crawled, nothing else matters.

### robots.txt Configuration

```
# CORRECT: Specific, intentional blocking
User-agent: *
Disallow: /admin/
Disallow: /internal-search/
Disallow: /staging/
Disallow: /cart/
Disallow: /checkout/
Disallow: /account/
Disallow: /*?sort=
Disallow: /*?filter=
Allow: /

Sitemap: https://example.com/sitemap-index.xml

# AI crawler management (2025-2026)
User-agent: GPTBot
Disallow: /proprietary-data/

User-agent: ClaudeBot
Disallow: /proprietary-data/

User-agent: PerplexityBot
Disallow: /proprietary-data/
```

**Critical rules:**
- robots.txt controls crawling, NOT indexing (use noindex for indexing control)
- Always allow CSS and JavaScript files (Googlebot needs them for rendering)
- Never use broad Disallow patterns that accidentally block important content
- Test changes before deploying (use URL inspection or testing tools)
- Reference sitemap location in robots.txt
- Manage AI crawler access explicitly -- block proprietary content, allow content you want cited

### XML Sitemaps

**Inclusion criteria -- only include URLs that are:**
- Returning 200 status code
- Self-canonicalized (canonical tag points to the same URL)
- Not blocked by robots.txt
- Not marked noindex
- Genuinely valuable for indexing

**Technical requirements:**
- Maximum 50,000 URLs per sitemap file (or 50MB uncompressed)
- Use sitemap index files to organize large sites by section or content type
- Include accurate lastmod dates (real modification dates, not fake freshness)
- Compress with gzip for large sitemaps
- Auto-update when content is published, modified, or removed
- Submit through search engine webmaster tools

**Sitemap organization example:**
```
sitemap-index.xml
  |-- sitemap-pages.xml         (core pages)
  |-- sitemap-blog.xml          (blog posts)
  |-- sitemap-products.xml      (product pages)
  |-- sitemap-categories.xml    (category pages)
  |-- sitemap-images.xml        (image sitemap)
  |-- sitemap-videos.xml        (video sitemap)
```

### Crawl Budget Optimization

Crawl budget = crawl rate limit x crawl demand. Google allocates a finite crawl budget per site based on perceived value and server capacity.

**What wastes crawl budget:**
- Faceted navigation generating thousands of parameter URLs
- Internal search result pages accessible to crawlers
- Session ID or tracking parameter URLs
- Infinite scroll or calendar-based crawl traps
- Soft 404 pages (200 status but empty or thin content)
- Redirect chains requiring multiple hops

**Optimization strategies:**
1. Block low-value parameter URLs via robots.txt
2. Use canonical tags to consolidate duplicate pages
3. Implement pagination correctly (self-referencing canonicals on each page)
4. Monitor crawl frequency in server logs -- if declining, investigate why
5. Prioritize internal links to high-value pages (more internal links = more crawl attention)
6. Return proper 404/410 status codes for truly deleted pages
7. Keep server response times under 200ms to maximize pages crawled per session

### Internal Linking Architecture

Internal links distribute authority, establish topical relationships, and guide crawlers to important content. They are the most controllable SEO lever.

**Scoring framework for internal link health:**

| Factor | Score 1 (Critical) | Score 3 (Needs Work) | Score 5 (Excellent) |
|---|---|---|---|
| Orphan pages | >5% of indexable pages | 1-5% | 0% |
| Click depth | Key pages >4 clicks from home | Some pages 4 clicks | All key pages <=3 clicks |
| Broken links | >50 broken internal links | 10-50 | <10 |
| Anchor text | Generic ("click here") dominant | Mixed quality | Descriptive, keyword-relevant |
| Redirect chains | >20 internal redirect chains | 5-20 | <5 |
| Link distribution | Top 10 pages get 80%+ of links | Moderate imbalance | Even distribution to priority pages |

**Best practices:**
- Use descriptive, keyword-relevant anchor text (never "click here" or "read more")
- Link from high-authority pages to pass maximum value
- Place links within body content (higher weight than sidebar/footer links)
- Connect pillar pages to cluster pages bidirectionally
- Audit monthly: fix broken links, eliminate redirect chains, rescue orphan pages
- Ensure every priority page is reachable within 2-3 clicks of the homepage

---

## 3. Indexation Framework

Indexation controls which pages appear in search results. Crawling gets Google to the page; indexation determines if Google keeps it.

### Index Coverage Management

**Common indexation issues and solutions:**

| Issue | Symptom | Solution |
|---|---|---|
| Discovered, not indexed | Page in crawl queue but never indexed | Improve content quality, add internal links, submit via URL inspection |
| Crawled, not indexed | Google saw it but chose not to index | Thin content, duplicate, or low-quality signal; improve or noindex |
| Duplicate without canonical | Google found duplicates, no canonical guidance | Add self-referencing canonical tags |
| Alternate page with canonical | Canonical points elsewhere | Intentional (good) or misconfigured (fix the canonical) |
| Excluded by noindex | Page has noindex tag | Intentional (good) or accidental (remove noindex) |
| Blocked by robots.txt | Cannot crawl but may have external links | If page should be indexed: remove robots.txt block, add noindex if needed |
| Soft 404 | Returns 200 but Google treats as error | Fix content to be substantial, or return actual 404 |

### Canonical Tags

Every page must have a canonical tag. This is non-negotiable.

**Implementation rules:**
1. Every page gets a self-referencing canonical tag (including the "preferred" version)
2. Use absolute URLs, never relative (https://example.com/page, not /page)
3. Place canonical tags in the `<head>` section, not the body
4. Canonical pages must return 200 status (never canonical to a 404 or redirect)
5. Do not send mixed signals: a canonicalized page should not also appear in the sitemap
6. For paginated content: each page gets a self-referencing canonical

**Duplicate content resolution matrix:**

| Scenario | Solution |
|---|---|
| Parameter URLs (?sort=, ?filter=) | Canonical to base URL + robots.txt block |
| HTTP/HTTPS duplicates | 301 redirect HTTP to HTTPS |
| www/non-www duplicates | 301 redirect to preferred version |
| Trailing slash inconsistency | 301 redirect to consistent pattern |
| Paginated content | Self-referencing canonicals per page |
| Syndicated content | Canonical pointing to original source |
| Regional/language overlap | hreflang tags + appropriate canonicals |
| Print versions | Canonical to main version or noindex |
| AMP pages | Canonical from AMP to main page |

### Hreflang Implementation

For multi-language or multi-region sites:
- Implement hreflang tags in `<head>`, HTTP headers, or XML sitemap (pick one method, be consistent)
- Every hreflang must have a reciprocal tag on the target page (A points to B, B points to A)
- Include x-default for users who do not match any specified language/region
- Use correct ISO 639-1 language codes and ISO 3166-1 Alpha 2 country codes
- Validate bidirectional references -- missing reciprocals are the most common hreflang error

---

## 4. Core Web Vitals: Diagnostic and Optimization Framework

Core Web Vitals are confirmed Google ranking signals. Sites failing these metrics lose rankings to competitors with comparable content but better page experience.

### The Three Metrics

```
+---------------------------+---------------------------+---------------------------+
|    Largest Contentful     |   Interaction to Next     |   Cumulative Layout       |
|    Paint (LCP)            |   Paint (INP)             |   Shift (CLS)             |
+---------------------------+---------------------------+---------------------------+
| What it measures:         | What it measures:         | What it measures:         |
| Loading performance --    | Responsiveness -- time    | Visual stability -- how   |
| time until the largest    | from user interaction     | much the page layout      |
| visible element renders   | (click/tap/key) to the    | shifts unexpectedly       |
|                           | next visual update        | during loading            |
+---------------------------+---------------------------+---------------------------+
| Good: <= 2.5 seconds      | Good: <= 200ms            | Good: <= 0.1              |
| Needs work: 2.5-4.0s      | Needs work: 200-500ms     | Needs work: 0.1-0.25     |
| Poor: > 4.0 seconds       | Poor: > 500ms             | Poor: > 0.25             |
+---------------------------+---------------------------+---------------------------+
| 75th percentile of all   | 75th percentile of all   | 75th percentile of all   |
| page loads must meet     | page interactions must   | page loads must meet     |
| "Good" threshold         | meet "Good" threshold    | "Good" threshold         |
+---------------------------+---------------------------+---------------------------+
```

**Note:** INP replaced First Input Delay (FID) as the official responsiveness metric in March 2024. FID only measured the first interaction delay; INP measures ALL interactions throughout the page visit, making it a much harder metric to pass.

### LCP Diagnostic Process

```
LCP > 2.5s?
  |
  |-- Check TTFB (Time to First Byte)
  |     |-- TTFB > 800ms? --> Server/hosting issue
  |     |     |-- Enable server caching (Redis, Memcached, Varnish)
  |     |     |-- Use CDN for geographic distribution
  |     |     |-- Optimize database queries
  |     |     |-- Upgrade hosting if necessary
  |     |
  |-- Check resource load delay
  |     |-- Is LCP element (image/video) discovered late?
  |     |     |-- Add preload hint: <link rel="preload" as="image" href="hero.webp">
  |     |     |-- Move LCP element higher in HTML source order
  |     |     |-- Remove lazy loading from above-the-fold LCP elements
  |     |
  |-- Check resource load duration
  |     |-- Is the LCP resource too large?
  |     |     |-- Convert to WebP/AVIF format (30-50% smaller than JPEG)
  |     |     |-- Implement responsive images with srcset
  |     |     |-- Resize to actual display dimensions
  |     |     |-- Use image CDN for automatic optimization
  |     |
  |-- Check render delay
        |-- Is JavaScript blocking rendering?
        |     |-- Defer non-critical JS with async/defer
        |     |-- Implement critical CSS inlining
        |     |-- Remove render-blocking third-party scripts
        |     |-- Use SSR/SSG for critical content
```

### INP Diagnostic Process

```
INP > 200ms?
  |
  |-- Check input delay
  |     |-- Are long tasks blocking the main thread?
  |     |     |-- Break tasks into chunks < 50ms using yield patterns
  |     |     |-- Move heavy computation to Web Workers
  |     |     |-- Defer non-critical JavaScript initialization
  |     |
  |-- Check processing time
  |     |-- Are event handlers doing too much work?
  |     |     |-- Optimize event handler logic
  |     |     |-- Debounce rapid-fire events (scroll, resize)
  |     |     |-- Use requestAnimationFrame for visual updates
  |     |     |-- Reduce unnecessary React/Vue re-renders
  |     |
  |-- Check presentation delay
        |-- Is the DOM too large or complex?
        |     |-- Reduce DOM size (target < 1,400 elements)
        |     |-- Minimize forced layout recalculations
        |     |-- Use CSS containment to isolate layout changes
        |     |-- Avoid large, complex CSS selectors
```

### CLS Diagnostic Process

```
CLS > 0.1?
  |
  |-- Images/videos without dimensions
  |     |-- Add explicit width and height attributes to all media
  |     |-- Use CSS aspect-ratio for responsive containers
  |
  |-- Dynamically injected content
  |     |-- Reserve space for ads, embeds, and dynamic content
  |     |-- Use min-height on containers that load content asynchronously
  |     |-- Avoid inserting content above existing visible content
  |
  |-- Web fonts causing layout shifts (FOIT/FOUT)
  |     |-- Preload critical fonts: <link rel="preload" as="font" crossorigin>
  |     |-- Use font-display: swap with size-adjusted fallback fonts
  |     |-- Self-host fonts to eliminate third-party latency
  |
  |-- Late-loading CSS
        |-- Inline critical CSS in <head>
        |-- Load non-critical CSS asynchronously
```

### CWV Scoring System for Audits

| Score | LCP | INP | CLS | Classification |
|---|---|---|---|---|
| 5 | <= 1.5s | <= 100ms | <= 0.05 | Excellent -- competitive advantage |
| 4 | <= 2.5s | <= 200ms | <= 0.1 | Good -- meets thresholds |
| 3 | 2.5-3.5s | 200-350ms | 0.1-0.15 | Needs improvement -- ranking risk |
| 2 | 3.5-4.5s | 350-500ms | 0.15-0.25 | Poor -- active ranking penalty |
| 1 | > 4.5s | > 500ms | > 0.25 | Critical -- severe ranking penalty |

---

## 5. Site Architecture

Site architecture determines how content is organized, how authority flows between pages, and how efficiently crawlers discover content.

### Architecture Models

**Flat Architecture (Recommended for most sites)**
```
Homepage
  |-- Category A
  |     |-- Page A1
  |     |-- Page A2
  |     |-- Page A3
  |
  |-- Category B
  |     |-- Page B1
  |     |-- Page B2
  |
  |-- Category C
        |-- Page C1
        |-- Page C2

Max depth: 3 clicks. All pages reachable via navigation.
```

**Hub-and-Spoke (Topic Cluster Model)**
```
              +-- Cluster Page 1
              |
Pillar Page --+-- Cluster Page 2
    |         |
    |         +-- Cluster Page 3
    |         |
    |         +-- Cluster Page 4
    |
    +-- Related Pillar Page
              |
              +-- Cluster Page 5
              +-- Cluster Page 6

Bidirectional links between pillar and clusters.
Cross-cluster links where topically relevant.
```

**Deep Architecture (Avoid unless necessary)**
```
Homepage > Category > Subcategory > Sub-subcategory > Page

Problem: pages beyond 4 clicks receive minimal crawl attention
         and minimal internal link equity.
```

### URL Structure Rules

| Rule | Good Example | Bad Example |
|---|---|---|
| Descriptive and readable | /technical-seo-guide/ | /p?id=4827 |
| Hyphens as separators | /core-web-vitals/ | /core_web_vitals/ |
| Lowercase only | /seo-audit/ | /SEO-Audit/ |
| Short and focused | /blog/seo-tips/ | /blog/2024/01/15/our-best-seo-tips-for-beginners/ |
| No parameters for content | /shoes/running/ | /shoes?category=running&color=red |
| Consistent trailing slash | /about/ (always) | /about and /about/ (mixed) |

### Architecture Scoring System

| Factor | Score 1 | Score 3 | Score 5 |
|---|---|---|---|
| Max click depth | >5 clicks to key pages | 4 clicks | <=3 clicks |
| Orphan pages | >5% orphaned | 1-5% | <1% |
| URL structure | Parameters, no pattern | Mostly consistent | Clean, keyword-rich, consistent |
| Navigation | Missing or broken | Functional but incomplete | Complete, breadcrumbed, schema-marked |
| Topic clustering | No cluster structure | Partial clusters | Full hub-and-spoke with linking |
| Sitemap accuracy | Missing or outdated | Present but incomplete | Complete, auto-updated, accurate |

---

## 6. Page Speed Optimization

Page speed affects crawl efficiency, Core Web Vitals, user experience, and conversion rates. Every 1-second delay in load time reduces conversions by approximately 7%.

### Server-Side Optimization

| Technique | Impact | Implementation |
|---|---|---|
| CDN | Reduces latency by 50-70% for global users | Cloudflare, Fastly, AWS CloudFront, or Akamai |
| Server caching | Reduces TTFB to <100ms for cached pages | Redis, Memcached, Varnish, or application-level caching |
| HTTP/2 or HTTP/3 | Multiplexed connections, header compression | Server configuration; most modern servers support HTTP/2 |
| Edge computing | Dynamic content at CDN edge | Cloudflare Workers, Vercel Edge Functions |
| Gzip/Brotli compression | Reduces transfer size 60-80% | Enable Brotli (better) or Gzip at server level |
| Database optimization | Reduces query time for dynamic pages | Index optimization, query caching, connection pooling |

### Frontend Optimization

**Critical rendering path:**
1. Inline critical CSS in `<head>` (CSS needed for above-the-fold content)
2. Load remaining CSS asynchronously via `<link rel="preload" as="style">`
3. Defer non-critical JavaScript with `defer` attribute
4. Async load third-party scripts that are not render-critical
5. Implement code splitting to load only what the current page needs

**Resource hints for faster loading:**
```
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="dns-prefetch" href="https://analytics.example.com">
<link rel="preload" as="image" href="/hero-image.webp">
<link rel="preload" as="font" href="/font.woff2" crossorigin>
<link rel="prefetch" href="/next-page.html">
```

### Image Optimization Checklist

- [ ] Serve images in WebP format (30% smaller than JPEG) with AVIF where supported
- [ ] Implement responsive images: `<img srcset="small.webp 400w, medium.webp 800w, large.webp 1200w">`
- [ ] Lazy load below-the-fold images: `loading="lazy"`
- [ ] NEVER lazy load the LCP element (above-the-fold hero image)
- [ ] Set explicit width and height attributes on all images (prevents CLS)
- [ ] Size images to actual display dimensions (no 2000px image in a 400px container)
- [ ] Use image CDN for automatic format negotiation and resizing
- [ ] Compress images to 80-85% quality (imperceptible difference, significant size reduction)

### Third-Party Script Impact Assessment

Third-party scripts are the most common source of performance regression. Audit every external script:

| Script Category | Typical Impact | Mitigation |
|---|---|---|
| Analytics (GA4, etc.) | Low-Medium (50-200ms) | Async load, delay until after page load |
| Tag managers | Medium (100-500ms) | Minimize tags, use server-side tagging |
| Chat widgets | High (200-800ms) | Lazy load on user interaction, not page load |
| Ad scripts | Very High (500ms-2s+) | Reserve layout space, defer load, cap ad count |
| Social embeds | High (300ms-1s) | Facade pattern: show static preview, load on click |
| A/B testing | Medium-High (100-500ms) | Server-side testing preferred; if client-side, minimize flicker |

### Page Speed Scoring System

| Score | Mobile PageSpeed | Desktop PageSpeed | TTFB | Classification |
|---|---|---|---|---|
| 5 | >= 90 | >= 95 | < 200ms | Excellent |
| 4 | 70-89 | 80-94 | 200-400ms | Good |
| 3 | 50-69 | 60-79 | 400-800ms | Needs improvement |
| 2 | 30-49 | 40-59 | 800ms-1.5s | Poor |
| 1 | < 30 | < 40 | > 1.5s | Critical |

---

## 7. Mobile-First Indexing

Google uses the mobile version of pages for indexing and ranking. If the mobile site is degraded compared to desktop, rankings suffer even when the desktop version is excellent.

### Mobile-First Requirements

| Requirement | What to Check | Common Failure |
|---|---|---|
| Content parity | Same text, images, videos on mobile and desktop | Hidden content behind "read more" toggles not indexed |
| Structured data | All schema markup present on mobile version | Schema only in desktop template, missing from mobile |
| Meta tags | Same title, description, robots tags on both versions | Different or missing meta tags on mobile |
| Media accessibility | Images/videos load and display correctly on mobile | Images blocked by lazy loading or format incompatibility |
| Responsive design | Single URL serves all devices | Separate m.dot domain with sync issues |

### Mobile UX Signals

These directly affect rankings through the page experience signal:

| Signal | Threshold | How to Test |
|---|---|---|
| Tap targets | >= 48x48 CSS pixels, 8px spacing | Lighthouse mobile audit |
| Horizontal scroll | None required on standard viewports | Test at 360px and 414px widths |
| Text readability | >= 16px base font, no zoom needed | Visual inspection + Lighthouse |
| Input optimization | Correct input types, autocomplete | Test every form on mobile |
| Interstitials | No intrusive popups blocking content | Manual review + CrUX data |
| Viewport config | `<meta name="viewport" content="width=device-width, initial-scale=1">` | Source code check |

### Mobile Scoring System

| Score | Description |
|---|---|
| 5 | Full content parity, all CWV passing on mobile, no UX issues |
| 4 | Content parity, 1-2 minor UX issues, CWV mostly passing |
| 3 | Minor content differences, some CWV failures, 3-5 UX issues |
| 2 | Significant content differences, CWV failing, multiple UX issues |
| 1 | Separate mobile site with major gaps, CWV failing, poor UX |

---

## 8. Structured Data and Schema Markup

Structured data does not directly boost rankings, but rich snippets generated by schema markup increase CTR by 20-40% (source: BrightEdge study, multiple replications). In 2025-2026, structured data is critical for AI search visibility -- LLMs parse JSON-LD when evaluating and citing content, and GPT-4 accuracy jumps from 16% to 54% when content uses structured data (source: Data World study).

### Implementation: JSON-LD (Google-Recommended Format)

JSON-LD embeds schema as a standalone script tag, keeping structured data separate from HTML markup:

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Technical SEO Audit Guide",
  "author": {
    "@type": "Person",
    "name": "Author Name",
    "url": "https://example.com/about/author"
  },
  "datePublished": "2026-01-15",
  "dateModified": "2026-03-01",
  "publisher": {
    "@type": "Organization",
    "name": "Company Name",
    "logo": {
      "@type": "ImageObject",
      "url": "https://example.com/logo.png"
    }
  },
  "description": "Complete technical SEO audit framework.",
  "image": "https://example.com/images/seo-audit.webp"
}
</script>
```

### Priority Schema Types by Page Type

| Page Type | Schema Types | Rich Result | AI Visibility Impact |
|---|---|---|---|
| Blog/Article | Article, BlogPosting | Article rich result | High -- LLMs extract author, date, topic |
| FAQ content | FAQPage | FAQ accordion in SERPs | Very High -- directly quoted by AI |
| How-to guides | HowTo | Step-by-step rich result | Very High -- structured steps extracted |
| Products | Product + Offer | Price, availability, reviews | High -- e-commerce AI citations |
| Local business | LocalBusiness | Knowledge panel, map pack | High -- local AI search answers |
| Organization | Organization | Knowledge panel | Medium -- entity recognition |
| Breadcrumbs | BreadcrumbList | Breadcrumb trail in SERPs | Medium -- site structure signals |
| Reviews | Review, AggregateRating | Star ratings | High -- trust and credibility signals |
| Events | Event | Event rich result | Medium -- calendar/local citations |
| Videos | VideoObject | Video rich result | High -- multimodal AI extraction |
| Software | SoftwareApplication | Software rich result | Medium -- product comparison AI |
| Course | Course | Course rich result | Medium -- educational AI citations |

### Implementation Rules

1. Schema content MUST match visible page content exactly (price, author, dates, ratings)
2. Partial implementation produces zero rich result lift -- completeness is non-negotiable
3. Validate all markup using Google's Rich Results Test AND Schema.org Markup Validator
4. Monitor rich result status in search engine enhancement reports
5. Layer multiple schema types on a single page when appropriate (Article + FAQPage + BreadcrumbList)
6. Use @id for cross-referencing entities within the same page
7. Include sameAs properties linking to authoritative profiles (LinkedIn, Wikipedia, official sites)

### Structured Data Scoring

| Score | Implementation Quality |
|---|---|
| 5 | All eligible pages marked up, no validation errors, rich results active, layered schema |
| 4 | Most pages marked up, <5 validation warnings, some rich results active |
| 3 | Priority pages only, some validation errors, inconsistent implementation |
| 2 | Minimal implementation, multiple errors, no rich results appearing |
| 1 | No structured data, or completely invalid markup |

---

## 9. JavaScript SEO

Search engines must render JavaScript to see dynamically loaded content, but rendering is resource-intensive and creates a two-wave indexing problem: HTML is indexed first, JavaScript-rendered content may be indexed hours to weeks later.

### The Rendering Decision Tree

```
Does your page rely on JavaScript for critical content?
  |
  |-- NO: Static HTML / server-rendered
  |     --> Best case. No JS SEO concerns.
  |
  |-- YES: How critical is timely indexation?
        |
        |-- CRITICAL (product pages, time-sensitive content)
        |     --> Use SSR (Server-Side Rendering) or SSG (Static Site Generation)
        |     --> Frameworks: Next.js (React), Nuxt (Vue), Angular Universal
        |
        |-- IMPORTANT but not urgent (blog posts, resources)
        |     --> SSR preferred, but hybrid rendering acceptable
        |     --> Pre-render at build time where possible (SSG)
        |
        |-- LOW priority (internal tools, logged-in pages)
              --> Client-side rendering acceptable
              --> These pages likely should not be indexed anyway
```

### Framework-Specific Guidance

| Framework | SEO Solution | Rendering Strategy |
|---|---|---|
| React | Next.js | SSR, SSG, ISR (Incremental Static Regeneration) |
| Vue | Nuxt.js | SSR, SSG, hybrid rendering |
| Angular | Angular Universal | SSR with hydration |
| Svelte | SvelteKit | SSR, SSG, adapter-based |
| Astro | Native | Island architecture -- partial hydration |
| SPA (any) | Pre-rendering service | Dynamic rendering as fallback |

### Island Architecture (2025-2026 Best Practice)

Island architecture (pioneered by Astro, adopted by Next.js) renders most of the page as static HTML and only hydrates interactive "islands" (e.g., add-to-cart buttons, carousels). Benefits:
- Dramatically reduces main thread JavaScript execution (improves INP)
- Static HTML is immediately crawlable by all search engines
- Interactive elements still function for users
- Reduces total JavaScript bundle size by 60-80% for content-heavy pages

### JavaScript SEO Checklist

- [ ] Critical content visible in initial HTML source (not dependent on JS rendering)
- [ ] Internal links use standard `<a href>` tags (not JavaScript click handlers)
- [ ] Meta tags (title, description, canonical, robots) present in initial HTML
- [ ] Structured data in initial HTML, not injected via JavaScript
- [ ] Images have proper `<img>` tags with src/srcset (not CSS background or JS-loaded)
- [ ] Test rendering using URL inspection tools (compare source HTML vs. rendered HTML)
- [ ] No critical content behind user interaction (click to expand, infinite scroll without pagination)
- [ ] Server returns proper status codes (404, 301) independent of JavaScript execution

### JavaScript SEO Scoring

| Score | Quality |
|---|---|
| 5 | SSR/SSG for all indexable pages, no content hidden behind JS, all links crawlable |
| 4 | SSR for critical pages, minor JS dependencies on secondary content |
| 3 | Mixed rendering, some content only visible after JS execution |
| 2 | Heavy JS dependency, significant content invisible in initial HTML |
| 1 | SPA with no SSR, critical content entirely JS-dependent, navigation via JS only |

---

## 10. Log File Analysis

Log file analysis reveals how search engine bots actually interact with your site -- ground truth that no other tool provides.

### What Log Files Reveal That Other Tools Cannot

| Data Point | What It Tells You | Action if Abnormal |
|---|---|---|
| Crawl frequency per URL | How often Googlebot visits each page | Low frequency on important pages = add internal links, submit sitemap |
| Crawl distribution by section | Which site sections get most crawl attention | Imbalanced = restructure internal links or block low-value sections |
| Status codes served to bots | What responses bots actually receive | 5xx errors to bots = server stability issue; 404s = broken pages |
| Response times for bot requests | How fast your server responds to crawlers | Slow responses = server optimization needed |
| Orphan page discovery | Pages bots find that are not in your sitemap | Investigate: intentional or missing from architecture? |
| Crawl budget waste | Bot requests to URLs that should not be crawled | Block via robots.txt, return 410 for permanently removed pages |
| Bot identification | Which crawlers visit and how often | Track Googlebot, Bingbot, GPTBot, ClaudeBot, PerplexityBot |

### Log File Analysis Workflow

1. **Export** server access logs (minimum 30 days, ideally 90 days)
2. **Filter** to search engine bot user agents (verify via reverse DNS for Googlebot)
3. **Map** crawl patterns to site architecture sections
4. **Cross-reference** with sitemap URLs: find URLs crawled but not in sitemap, and sitemap URLs never crawled
5. **Identify** crawl budget waste: bot requests to non-indexable, blocked, or low-value URLs
6. **Correlate** crawl frequency changes with ranking changes (declining crawl often precedes ranking drops)
7. **Track** new AI crawlers: GPTBot, ClaudeBot, PerplexityBot visit patterns and content they request
8. **Generate** actionable recommendations to improve crawl efficiency

### Crawler Behavior Patterns to Watch

| Pattern | Meaning | Response |
|---|---|---|
| Googlebot visits declining over weeks | Site perceived as lower value or server issues | Check server logs for errors, improve content quality |
| Googlebot hitting same URLs repeatedly | Potential crawl trap or misconfigured redirects | Investigate URL patterns, fix redirect loops |
| Googlebot ignoring new content | Poor internal linking or slow sitemap updates | Add links from high-traffic pages, ping sitemap |
| AI crawlers increasing rapidly | Content being ingested for LLM training/citation | Decide: allow for visibility or block for content protection |
| High 5xx rate for bot requests | Server cannot handle crawl load | Scale infrastructure, implement caching, reduce crawl rate |

---

## 11. Technical SEO Audit Workflow (CXL-Aligned)

### Phase 1: Discovery (Week 1)

| Task | Data Source | Deliverable |
|---|---|---|
| Full site crawl | Web crawling agent | Complete URL inventory with status codes, redirects, canonical tags |
| Search performance data | Search engine webmaster tools | Keyword rankings, impressions, clicks, CTR, index coverage |
| Server log collection | Server access logs (30+ days) | Filtered bot crawl data |
| Page speed assessment | Performance testing on template pages | CWV scores by page template |
| Structured data audit | Source code analysis, validation tools | Schema inventory and error report |
| robots.txt and sitemap review | Direct file analysis | Configuration assessment |
| Competitor benchmarking | Web research on 3-5 competitors | Technical comparison matrix |

### Phase 2: Analysis (Week 2)

| Task | Method | Output |
|---|---|---|
| ResearchXL heuristic analysis | Expert evaluation of key templates | Issue log scored by relevance, clarity, friction, anxiety, distraction |
| Site architecture mapping | Crawl data analysis | Click depth map, orphan page list, internal link distribution |
| Duplicate content audit | Canonical and content comparison | Duplicate groups with resolution recommendations |
| Internal link analysis | Link graph extraction | Authority flow map, link equity distribution |
| JavaScript rendering assessment | Source vs. rendered comparison | Rendering gap report |
| Mobile usability evaluation | Mobile-specific testing | Mobile scoring by template |
| CWV competitive benchmarking | Performance comparison | Side-by-side CWV comparison with competitors |

### Phase 3: Prioritization (Week 3)

Categorize all findings into CXL action buckets and score by impact vs. effort:

```
                HIGH IMPACT
                    |
        +-----------+-----------+
        |  Quick    |  Major    |
        |  Wins     |  Projects |
        |  (Do      |  (Plan &  |
        |  First)   |  Execute) |
  LOW   |           |           |  HIGH
  EFFORT+-----------+-----------+  EFFORT
        |  Fill     |  Consider |
        |  (Low     |  Carefully|
        |  Priority)|  (Depri-  |
        |           |  oritize) |
        +-----------+-----------+
                    |
                LOW IMPACT
```

### Phase 4: Implementation and Testing (Weeks 4-12)

| Week | Focus | Method |
|---|---|---|
| 4-5 | Execute "Just Do It" quick wins | Direct implementation |
| 4-5 | Set up monitoring for "Instrument" items | Dashboard configuration |
| 6-8 | Run experiments for "Test" items | Controlled rollout on page subsets |
| 6-8 | Develop hypotheses for complex changes | Formal experiment design |
| 9-12 | Measure experiment results | Statistical analysis of leading indicators |
| 9-12 | Scale winners, iterate on failures | Site-wide rollout or redesign |
| 12 | Document learnings | Knowledge base update |

---

## 12. Technical SEO Composite Scoring System

Use this system to produce a single technical health score from individual category scores.

### Category Weights

| Category | Weight | Rationale |
|---|---|---|
| Crawlability | 20% | Foundation -- if pages are not crawled, nothing else matters |
| Indexation | 15% | Controls which pages appear in search results |
| Core Web Vitals | 20% | Confirmed ranking factor with measurable impact |
| Site architecture | 15% | Determines authority flow and crawl efficiency |
| Page speed | 10% | Affects CWV, user experience, and crawl efficiency |
| Mobile-first | 10% | Primary index version for all sites |
| Structured data | 5% | CTR and AI visibility impact |
| JavaScript SEO | 5% | Relevant only for JS-heavy sites (increase weight if applicable) |

### Composite Score Calculation

```
Composite = (Crawl_Score * 0.20) + (Index_Score * 0.15) + (CWV_Score * 0.20)
          + (Architecture_Score * 0.15) + (Speed_Score * 0.10)
          + (Mobile_Score * 0.10) + (Schema_Score * 0.05) + (JS_Score * 0.05)
```

### Score Interpretation

| Composite | Grade | Interpretation |
|---|---|---|
| 4.5 - 5.0 | A | Excellent -- technical SEO is a competitive advantage |
| 3.5 - 4.4 | B | Good -- solid foundation with room for optimization |
| 2.5 - 3.4 | C | Needs work -- technical issues are limiting rankings |
| 1.5 - 2.4 | D | Poor -- significant technical barriers to ranking |
| 1.0 - 1.4 | F | Critical -- fundamental technical problems must be resolved |

---

## 13. Priority Matrix: What to Fix First

### Critical (Fix Within 1 Week)

| Issue | Impact | Typical Symptoms |
|---|---|---|
| Site not indexable (noindex on key pages) | Pages completely invisible to search | Zero impressions in search console |
| HTTPS not implemented | Trust penalty, browser warnings | "Not Secure" label, ranking loss |
| robots.txt blocking key content | Googlebot cannot access pages | Index coverage errors, pages not indexed |
| Server errors (5xx) on key pages | Pages dropping from index | Intermittent availability, crawl errors |
| Core Web Vitals failing on all templates | Site-wide ranking suppression | All page groups show "Poor" CWV in field data |

### High (Fix Within 2-4 Weeks)

| Issue | Impact | Typical Symptoms |
|---|---|---|
| Broken internal links (>50) | Wasted crawl budget, poor UX | 404 errors in crawl reports |
| Missing/incorrect canonical tags | Duplicate content diluting rankings | "Duplicate without canonical" in index coverage |
| Redirect chains (>2 hops) | Slow crawling, equity loss | Chain redirects in crawl reports |
| Missing XML sitemap | Slower discovery of new content | New pages take weeks to get indexed |
| No structured data | Missing rich results, lower CTR | No rich results appearing in SERPs |

### Medium (Fix Within 1-2 Months)

| Issue | Impact | Typical Symptoms |
|---|---|---|
| Thin content pages indexed | Quality signal dilution | Low engagement metrics, "crawled not indexed" |
| Internal link imbalance | Poor authority distribution | Key pages buried deep, few internal links |
| Missing hreflang (multi-language) | Wrong language pages ranking | Users seeing wrong language in SERPs |
| Slow page speed (non-CWV) | Reduced crawl efficiency | Long TTFB, large page sizes |

### Low (Fix Within 3 Months)

| Issue | Impact | Typical Symptoms |
|---|---|---|
| Image optimization gaps | Larger page sizes, slower LCP | Large uncompressed images in crawl data |
| Missing alt text | Accessibility + image SEO loss | Alt attribute empty or absent |
| Inconsistent URL patterns | Minor crawl confusion | Mixed trailing slash, mixed case |

---

## 14. Common Technical SEO Failures and Symptoms

| Failure | Symptom | Root Cause | Diagnosis Method |
|---|---|---|---|
| Sudden ranking drop (all keywords) | Traffic cliff, all keywords affected | Manual penalty, algorithm update, or site-wide technical issue | Check for manual action, review recent changes, audit technical health |
| Gradual ranking decline | Slow traffic erosion over months | Content decay, competitor improvements, or accumulating technical debt | Content freshness audit, competitor analysis, technical re-audit |
| New content not indexing | Published pages never appear in search | Orphan pages, sitemap issues, or crawl budget exhaustion | Check internal links to new content, verify sitemap inclusion, review log files |
| Rankings fluctuating wildly | Keyword positions swing daily | Duplicate content, keyword cannibalization, or thin content | Audit for cannibalization, consolidate duplicates, improve content quality |
| Rich results disappearing | Had rich results, now gone | Schema validation errors, policy violations, or content changes | Validate schema, check for new errors, review content changes |
| Mobile rankings lower than desktop | Desktop ranks well, mobile drops | Mobile usability issues, content parity gaps, mobile CWV failures | Mobile audit, compare mobile vs. desktop CWV, check content parity |
| Crawl rate dropping | Fewer pages crawled per day in logs | Server errors, slow responses, or site perceived as low value | Check server stability, review TTFB, audit content quality |
| Index bloat | More pages indexed than intended | Parameter URLs, tag pages, or internal search indexed | Audit index coverage, block low-value URLs, noindex thin pages |

---

## Quick Reference: Technical SEO Audit Checklist

- [ ] Site crawlable and indexable (robots.txt, meta robots, X-Robots-Tag verified)
- [ ] XML sitemap accurate, complete, and submitted
- [ ] Canonical tags on every page (self-referencing on preferred versions)
- [ ] No duplicate content issues (HTTP/HTTPS, www/non-www, parameters resolved)
- [ ] Core Web Vitals passing on 75%+ of page visits (LCP, INP, CLS)
- [ ] Mobile-first ready (content parity, responsive, no UX issues)
- [ ] Internal linking supports topic clusters (bidirectional, descriptive anchors)
- [ ] Structured data valid and complete (JSON-LD, no validation errors)
- [ ] JavaScript-rendered content accessible in initial HTML or via SSR
- [ ] Page speed optimized (images, scripts, server response, CDN)
- [ ] Flat site architecture (key pages within 3 clicks)
- [ ] No broken links or redirect chains
- [ ] HTTPS implemented site-wide with proper redirects
- [ ] Hreflang correct for multi-language/region sites
- [ ] Log file analysis completed and crawl budget optimized
- [ ] AI crawler access policy defined (GPTBot, ClaudeBot, PerplexityBot)
- [ ] Rendering architecture appropriate for content type (SSR/SSG/CSR)
- [ ] 404/410 pages return proper status codes (no soft 404s)
