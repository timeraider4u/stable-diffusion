# Sci-Fi

## Download .safetensors files
See [Downloading .safetensors files in README.md](./README.md#downloading-safetensors-files).

## Space port

### Option 1
> Help me generate a StableDiffusion prompt for a realistic sci-fi space port security control (like at airports). It should show our our main protagonist at the center who is a space mercenary (kind of an edge runner). He wears a suit.

> Here is a collection of highly optimized prompts tailored specifically for the models you downloaded (Juggernaut XL or CyberRealistic).
> For hyper-realism, Stable Diffusion works best when you describe the camera, lighting, and specific textures, rather than just using buzzwords like "photorealistic."

**Prompt:**
```
A crisp, 35mm cinematic film still of a male space mercenary standing at the center of a bustling sci-fi spaceport security checkpoint. He is an edgerunner, sporting a sleek, high-tech dark tailored suit integrated with subtle carbon-fiber armored plating on the shoulders. Neon security scanners cast sharp blue and orange volumetric light across his face, highlighting a rugged jawline and a subtle cybernetic optical implant glowing faintly in one eye. Background shows a futuristic airport terminal terminal, transparent digital holographic customs gates, security droids patrolling, blurred crowds of interplanetary travelers, and towering armored security guards. Atmospheric haze, raw photography, depth of field, award-winning sci-fi cinematography, moody lighting, highly detailed textures, 8k resolution.
```
**Negative prompt:**
```
deformed, bad anatomy, disfigured, poorly drawn face, mutated hands, extra fingers, blurry, low resolution, cartoon, anime, illustration, 3d render, digital painting, painting, text, watermark, signature, glowing skin, plastic skin, oversaturated, perfect skin, clean background, generic sci-fi, asymmetrical eyes
```
**Settings:**
```
Sampling Method: DPM++ 2M Karras or Euler a
Sampling Steps: 25 to 30
Width x Height: 1216 x 832 (Wide aspect ratio, perfect for cinematic terminal scenes) or 1024 x 1024 (Square portrait)
CFG Scale: 5.5 to 7 (Keeps the model creative while tightly following your prompt)
```

### Option 2
> Go back to original prompt ... because now he looks more like robocop. But let's make his implant go over the whole right side of his face

> Here are the revised prompts based on your original wide composition, scaled up so the modification is a massive, visible structural fixture (covering the entire right half of his face) rather than a small cybernetic eyeball.
> By defining it as a flush metallic or composite plate, we avoid the clunky, robotic "helmet" look of RoboCop and keep his sleek, Edgerunner mercenary vibe intact.

**Prompt:**
```
A crisp, 35mm cinematic film still of a male space mercenary standing at the center of a bustling sci-fi spaceport security checkpoint. He is an edgerunner wearing a sleek, high-tech dark tailored suit. The entire right side of his face is completely covered by an intricate, flush (asymmetrical cybernetic faceplate chrome-and-carbon-fiber implant:1.3) with glowing blue circuitry lines tracking down his jawline and a glowing blue optical lens visor slot. The left side of his face remains completely human and rugged. Neon security scanners cast sharp blue and orange volumetric light across him. Background shows a futuristic airport terminal, transparent digital holographic customs gates, and blurred crowds of interplanetary travelers. Atmospheric haze, raw photography, depth of field, award-winning sci-fi cinematography, moody lighting.
```
**Negative prompt:**
```
deformed, bad anatomy, disfigured, poorly drawn face, mutated hands, extra fingers, blurry, low resolution, cartoon, anime, illustration, 3d render, digital painting, painting, text, watermark, signature, glowing skin, plastic skin, oversaturated, perfect skin, clean background, generic sci-fi, asymmetrical eyes, helmet, robocop
```
**Settings:**
```
Sampling Method: Euler a
Sampling Steps: 28
Width x Height: 1024 x 768 (Wide aspect ratio, perfect for cinematic terminal scenes) or 1024 x 1024 (Square portrait)
CFG Scale: 6 (Keeps the model creative while tightly following your prompt)
```
