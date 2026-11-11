# Anime Ecchi

*Note: This will not generate any **nsfw** (not safe for work) pictures,
like nipples, etc.
For that see [Anime hentail NSFW](./Anime-NSFW-hentai.md) instead.*

## Download .safetensors files
Same models as in  [Anime cute girls](./Anime-cute-girls.md)

## Prompts for Anime-Echii scenes

For an ecchi anime style (reminiscent of series like To Love-Ru, High School DxD, or modern harem comedies), the prompts shift focus toward suggestive situations, teasing expressions, camera angles that emphasize body lines, and minor wardrobe mishaps (like loose clothing or untied ribbons).


Optimization Settings for Ecchi Style Generations

* Sampling Method (Sampler): DPM++ 2M Karras or Euler a
  * Why: These samplers are excellent for anime models. They keep color gradients soft and smooth, which is perfect for rendering skin tones and fabric shadows without making them look grainy or "burnt."
* Sampling Steps: 28 to 35
	* Why: Going below 25 can leave clothing folds and hair look unfinished. Going above 35 rarely improves the image and wastes your GPU rendering time.
* CFG Scale: 5.0 to 6.5
	* Why: Keep this slightly lower than the standard 7.0. A lower CFG scale prevents the colors from becoming over-saturated and allows the model to render softer, more natural body contours and blushing effects.
* Resolution (Aspect Ratio): 896 x 1152 (Portrait) or 768 x 1152 (Tall Portrait)
	* Why: Ecchi art relies heavily on vertical compositions to capture dynamic body poses and full outfits. Because you are using an SDXL model (like Animagine XL or Pony), using these resolutions prevents the AI from generating glitched, double-headed, or stretched characters.

* CFG Scale: 5.5 to 6.5 (Lowering it slightly helps the AI blend soft skin shading and fabric folds more naturally without causing hard, crispy lines).
* High-Fix / Upscaling (Optional but Recommended): Turn on Hires. fix in your WebUI settings using the Latent or R-ESRGAN 4x+ Anime6B upscaler. Set the denoising strength to 0.45 to add incredibly crisp details to eyes, skin texture, and clothing lines.

### Option 1: The Classic Wardrobe Malfunction (Teasing & Playful)
This prompt captures the accidental, comedic fanservice moment common in school-setting ecchi anime.
**Prompt:**
```
1girl, solo, cute anime girl, ecchi style, high school uniform, loose sailor shirt, one collar slipping off shoulder, untied red ribbon, disheveled clothes, embarrassed blushing expression, hands covering face nervously, messy hair, thighs focus, sitting on classroom floor, soft dramatic lighting, clean anime linework, fanservice visual, masterpiece
```
**Negative prompt:**
```
photo, realistic, 3d render, fully dressed, presentation style, expressionless, bad anatomy, text, watermark
```

### Option 2: Post-Pool / Wet Hair Aesthetic (Sensual & Detailed)
Focuses on reflective textures (like wet skin and water droplets) and high-contrast visuals.
**Prompt:**
```
1girl, solo, cute anime girl, ecchi aesthetic, school swimsuit, wet clothes, clinging fabric, translucent texture, water droplets on skin, long damp hair framing face, looking up at viewer, seductively smiling, heavy blush, locker room background, steam, mist, reflection, dynamic shadows, soft focus, high detail
```
**Negative prompt:**
```
photo, 3d, realism, dry skin, winter clothes, safe for work, extra fingers, text, bad proportions
```

### Option 3: Oversized Shirt / Morning After (Cozy & Suggestive)
A softer, modern take focusing on comfortable loungewear with strong suggestive tones.
**Prompt:**
```
1girl, solo, cute anime girl, ecchi style, wearing only an oversized white button-up dress shirt, unbuttoned collar, collarbone focus, bare legs, thigh-high socks, kneeling on a messy bed, rumpled sheets, playful wink, biting lip, warm morning sunlight, dust particles, soft glowing bokeh, pixiv trend style
```
**Negative prompt:**
```
photo, 3d, realistic, jeans, dark lighting, outdoor background, deformed hands, ugly face, cropped
```

### Option 4: The Steamy Home Bathroom (Accidental Intrusion)
**Prompt:**
```
1girl, solo, cute anime girl, ecchi style, stepping out of a steamy bathtub, wrapping a small white towel around her chest, dripping water, wet skin, moisture droplets, long damp hair clinging to shoulders, shocked expression, blushing furiously, wide eyes, foggy bathroom background, frosted glass door, tiled floor, steam clouds, high contrast light, sharp anime linework, masterpiece
```
**Negative prompt:**
```
photo, 3d, realistic, fully dressed, clothing, calm expression, dark, low resolution, bad anatomy, text
```

### Option 5: The Traditional Hot Spring (Onsen Relaxing)
**Prompt:**
```
1girl, solo, cute anime girl, ecchi aesthetic, soaking in an outdoor hot spring, water up to chest, smooth skin, hair tied up in a messy bun with loose strands, relaxed but slightly embarrassed smile, rosy cheeks, steam rising from water, natural rock formation background, bamboo fence, cherry blossom petals floating on water, soft morning light, gorgeous digital painting, pixiv trend
```
**Negative prompt:**
```
photo, 3d render, realism, swimwear, modern background, indoor, deformed hands, bad proportions, logo, clothing, fully dressed, bad anatomy
```

### Option 6: The Playful Beach Tease (Modern String Bikini)
**Prompt:**
```
1girl, solo, cute anime girl, ecchi style, wearing a tiny frilly pink and white string bikini, untied side straps, hip focus, midriff focus, leaning forward toward the camera, playful wink, tongue out, disheveled hair blowing in the wind, sunny beach background, ocean waves, white sand, tropical palm trees, lens flare, bright summer lighting, clear blue sky, cell-shaded animation style
```
**Negative prompt:**
```
photo, 3d, realistic, winter clothes, one-piece swimsuit, expressionless, low quality, extra limbs, watermark
```

### Option 7: The Sunlit Poolside (Wet Bikini / High Contrast)
**Prompt:**
```
1girl, solo, cute anime girl, ecchi aesthetic, leaning against the edge of a swimming pool, glistening wet skin, wearing a sleek black metallic bikini, looking up at the viewer, seductive smile, heavy blush, long soaked hair framing her face, shimmering blue water background, poolside tiles, bright afternoon sun, sharp reflections, dynamic shadows, high detail, masterpiece visual
```
**Negative prompt:**
```
photo, realism, 3d render, dry skin, safe for work, bad eyes, text, signature, duplicate character
```

### Option 8: The Untied String Bikini (Ultra-Teasing Focus)
This setup maximizes focus on the midriff and waist contours using a classic anime wardrobe mishap angle.
**Prompt:**
```
1girl, solo, cute anime girl, ecchi style, high fanservice visual, micro bikini, string bikini, untied side strings, loose straps, high hip framing, focus on yummy tummy, defined navel, blushing intensely, looking down shyly, finger to lips, messy hair, private beach background, warm sunset glow, soft shadow casting, beautiful skin shading, masterpiece artwork
```
**Negative prompt:**
```
photo, realistic, 3d, safe for work, baggy clothes, one-piece swimsuit, bloated, covered belly, bad anatomy, deformed hands, text, watermark
```

### Option 9: The Sun-Drenched Poolside Recline (Low-Angle Framing)
A low-angle shot that naturally elongates the torso and places the focus squarely on the midriff and core area.
**Prompt:**
```
1girl, solo, cute anime girl, ecchi aesthetic, leaning back on a poolside lounge chair, low-angle view, looking down at camera, seductive playful smirk, heavy blush, wearing a strapless bandeau bikini, wet skin, deep navel, soft curves, glistening water droplets, sparkling blue pool background, bright summer sunlight, sharp cell-shaded lines, trend on pixiv
```
**Negative prompt:**
```
photo, 3d render, realism, high-angle view, standard portrait, hidden belly, dry skin, extra limbs, ugly face
```

### Option 10: The Wet Translucent Summer Shirt (The Peek-A-Boo Effect)
Combining a bikini with an open or wet layer creates an extra layer of visual texture that highlights the waistline underneath.
**Prompt:**
```
1girl, solo, cute anime girl, hot ecchi style, wearing a tiny neon bikini under a completely unbuttoned wet white summer shirt, translucent fabric, clinging cloth, midriff exposure, clear focus on smooth stomach, soft abs definition, delicious navel, playful wink, tongue out, holding a dripping popsicle, tropical beach resort background, dynamic shadows, high contrast illumination, detailed rendering, high quality flat colors
```
**Negative prompt:**
```
photo, realism, 3d, fully closed shirt, obscured stomach, bad proportions, distorted fingers, monochrome, text
```

### Option 11: Sci-Fi Fanservice
**Prompt:**
```
masterpiece, best quality, newest, absurdres, highres, girl in armor, open stomach, armguards, exposed breasts, small breasts, cybernetic, visible ribcage, monster energy, beautiful face, long flowing hair, visor,
```
**Negative prompt:**
```
(low quality, worst quality:1.5), (bad anatomy), lowres, bad composition, fewer digits, text, username, logo, inaccurate eyes, extra digits, fewer digits, extra arms, disfigured, missing arms, too many fingers, fused fingers, missing fingers,
```

### Option 12: Bikini girl on beach
**Prompt:**
```
masterpiece, best quality, 1girl, large breasts, red eyes, long hair, wide hips, bikini, animal ears, beach, black hair, sunny sky, sunlight, water, palm tree, sitting
```
**Negative prompt:**
```
(low quality, worst quality:1.4),
```
