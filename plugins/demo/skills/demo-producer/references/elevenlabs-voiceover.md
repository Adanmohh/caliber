# ElevenLabs Voiceover Reference

## API Endpoint

```
POST https://api.elevenlabs.io/v1/text-to-speech/{voice_id}
```

## Request Payload

```json
{
  "text": "Welcome to our product demo. Let me show you how easy it is to get started.",
  "model_id": "eleven_multilingual_v2",
  "voice_settings": {
    "stability": 0.5,
    "similarity_boost": 0.75,
    "style": 0.0,
    "speed": 0.9,
    "use_speaker_boost": true
  }
}
```

### Model Selection
| Model | Use Case | Quality |
|-------|----------|---------|
| eleven_multilingual_v2 | Best quality, multilingual (recommended) | Highest |
| eleven_turbo_v2_5 | Low latency, real-time applications | Good |
| eleven_flash_v2_5 | Fastest, WebSocket streaming | Acceptable |

Note: WebSockets are NOT available for eleven_v3.

## Headers

```
xi-api-key: ${ELEVENLABS_API_KEY}
Content-Type: application/json
Accept: audio/mpeg
```

## Voice Selection Process

1. List voices: `GET https://api.elevenlabs.io/v1/voices`
2. Filter by `category`: `premade` for built-in, `cloned` for custom
3. Preview voices at `preview_url` before committing
4. Recommended voices for demos:
   - **Professional male:** "Adam" or "Antoni"
   - **Professional female:** "Rachel" or "Bella"
   - **Casual/friendly:** "Josh" or "Elli"

## Batch Generation Script

```typescript
import fs from 'fs';
import path from 'path';

interface Scene {
  name: string;
  text: string;
}

async function generateVoiceovers(
  scenes: Scene[],
  voiceId: string,
  outputDir: string
) {
  fs.mkdirSync(outputDir, { recursive: true });

  for (const scene of scenes) {
    const outputPath = path.join(outputDir, `${scene.name}.mp3`);

    // Skip if already generated
    if (fs.existsSync(outputPath)) {
      console.log(`Skipping ${scene.name} — already exists`);
      continue;
    }

    const response = await fetch(
      `https://api.elevenlabs.io/v1/text-to-speech/${voiceId}`,
      {
        method: 'POST',
        headers: {
          'xi-api-key': process.env.ELEVENLABS_API_KEY!,
          'Content-Type': 'application/json',
          Accept: 'audio/mpeg',
        },
        body: JSON.stringify({
          text: scene.text,
          model_id: 'eleven_multilingual_v2',
          voice_settings: {
            stability: 0.5,
            similarity_boost: 0.75,
            speed: 0.9,
            use_speaker_boost: true,
          },
        }),
      }
    );

    if (!response.ok) {
      throw new Error(`ElevenLabs API error: ${response.status} ${await response.text()}`);
    }

    const buffer = Buffer.from(await response.arrayBuffer());
    fs.writeFileSync(outputPath, buffer);
    console.log(`Generated: ${outputPath} (${buffer.length} bytes)`);

    // Rate limit: wait 500ms between requests
    await new Promise((r) => setTimeout(r, 500));
  }
}
```

## TypeScript SDK Pattern

Alternative to the fetch-based approach above, using `@elevenlabs/elevenlabs-js`:

```typescript
import { ElevenLabsClient } from "@elevenlabs/elevenlabs-js";
import { createWriteStream } from "fs";

const elevenlabs = new ElevenLabsClient({
  apiKey: process.env.ELEVENLABS_API_KEY,
});

const audio = await elevenlabs.textToSpeech.convert(voiceId, {
  modelId: "eleven_multilingual_v2",
  text: sceneText,
  outputFormat: "mp3_44100_128",
  voiceSettings: {
    stability: 0.5,
    similarityBoost: 0.75,
    speed: 0.9,
  },
});

const fileStream = createWriteStream(`public/audio/${sceneName}.mp3`);
audio.pipe(fileStream);
```

## Language Codes

| Language | Code | Notes |
|----------|------|-------|
| English | `en` | Default, best quality |
| Finnish | `fi` | Supported in v3 |
| Spanish | `es` | Good quality |
| French | `fr` | Good quality |
| German | `de` | Good quality |
| Japanese | `ja` | Supported in v3 |
| Chinese | `zh` | Supported in v3 |

Set language via the `language_code` parameter in the request body when using non-English text.

## Voiceover Script Guidelines

- **Pacing:** Write at ~150 words per minute (a 30-second scene = ~75 words)
- **Sentence length:** Keep sentences short (10-15 words max)
- **Active voice:** "Click the button" not "The button should be clicked"
- **Present tense:** "This opens the dashboard" not "This will open the dashboard"
- **Pauses:** Use `...` for natural pauses: "And just like that... your report is ready."
- **Avoid jargon:** Explain features in benefit terms, not technical terms
- **Match the action:** Script should describe what's happening on screen in sync

## Audio Duration Estimation

To calculate expected duration before generating:
- Average speaking rate at speed 0.9: ~140 words per minute
- Formula: `duration_seconds = (word_count / 140) * 60`
- Add 0.5s buffer per sentence for natural pauses

## Cost Optimization

- eleven_multilingual_v2 uses ~1 character credit per character
- Batch generate and cache — never regenerate unchanged scripts
- Use `skip existing` pattern in the batch script above
- Preview with a short test phrase before generating all scenes
