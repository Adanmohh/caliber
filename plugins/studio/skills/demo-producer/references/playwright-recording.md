# Playwright Recording Reference

## Browser Launch Configuration

```typescript
const browser = await chromium.launch({
  headless: false,
  args: [
    '--force-device-scale-factor=1',  // Critical on Windows — prevents DPI scaling artifacts
    '--disable-blink-features=AutomationControlled',
    '--start-maximized',
  ],
});
```

## Recording Context Setup

```typescript
const context = await browser.newContext({
  viewport: { width: 1920, height: 1080 },
  recordVideo: {
    dir: './recordings',
    size: { width: 1920, height: 1080 },
  },
  colorScheme: 'light',  // or 'dark' based on product
});

const page = await context.newPage();
```

## Smooth Scroll Helper

```typescript
async function smoothScroll(page: Page, pixels: number, duration: number = 1000) {
  await page.evaluate(
    ([px, ms]) => {
      return new Promise<void>((resolve) => {
        const start = window.scrollY;
        const startTime = performance.now();
        function step(currentTime: number) {
          const elapsed = currentTime - startTime;
          const progress = Math.min(elapsed / ms, 1);
          const eased = 0.5 - Math.cos(progress * Math.PI) / 2;
          window.scrollTo(0, start + px * eased);
          if (progress < 1) requestAnimationFrame(step);
          else resolve();
        }
        requestAnimationFrame(step);
      });
    },
    [pixels, duration]
  );
}
```

## Action Pacing

Always add deliberate pauses between actions for watchable demos:

```typescript
// Navigate
await page.goto('https://app.example.com');
await page.waitForTimeout(2000);  // Let the page render visually

// Click
await page.click('[data-testid="start-button"]');
await page.waitForTimeout(2000);  // Let the user see the result

// Type (use slow typing for visibility)
await page.fill('#search', '');
await page.type('#search', 'demo query', { delay: 80 });
await page.waitForTimeout(1500);

// Scroll
await smoothScroll(page, 500);
await page.waitForTimeout(1500);
```

## Saving the Recording

Order matters — close page first, then context:

```typescript
// This triggers the video file to be written
await page.close();

// Get the video path
const videoPath = await page.video()?.path();

// Close context to finalize
await context.close();
await browser.close();

console.log(`Recording saved to: ${videoPath}`);
```

## WebM to MP4 Conversion

```bash
ffmpeg -i recording.webm -c:v libx264 -preset medium -crf 23 -c:a aac -b:a 128k output.mp4
```

For lossless intermediate (before Remotion processing):
```bash
ffmpeg -i recording.webm -c:v libx264 -preset ultrafast -crf 0 output-lossless.mp4
```

## Common Pitfalls

| Pitfall | Cause | Fix |
|---------|-------|-----|
| Blurry video on Windows | DPI scaling | Add `--force-device-scale-factor=1` to launch args |
| Video file is 0 bytes | Closed context before page | Close `page` first, then `context` |
| Actions too fast to follow | No waits between steps | Add `waitForTimeout(2000)` between actions |
| Scroll jumps instead of glides | Using `scrollTo` directly | Use the smooth scroll helper above |
| Recording includes browser chrome | Wrong viewport config | Set viewport in context, not browser |
| Mouse cursor not visible | Headless mode | Use `headless: false` |
| Element not ready for click | Race condition | Use `waitForSelector` before clicking |
| Video codec issues in Remotion | WebM incompatibility | Convert to MP4 (H.264) before compositing |

## Multi-Scene Recording

For demos with multiple scenes, create separate recordings per scene:

```typescript
async function recordScene(
  browser: Browser,
  sceneName: string,
  actions: (page: Page) => Promise<void>
) {
  const context = await browser.newContext({
    viewport: { width: 1920, height: 1080 },
    recordVideo: { dir: './recordings', size: { width: 1920, height: 1080 } },
  });
  const page = await context.newPage();

  await actions(page);

  await page.close();
  const videoPath = await page.video()?.path();
  await context.close();

  // Rename to scene name
  const finalPath = `./recordings/${sceneName}.webm`;
  fs.renameSync(videoPath!, finalPath);
  return finalPath;
}
```
