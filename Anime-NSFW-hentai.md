# NSWF - Hentai

## Download .safetensors files
*(Note: Checkpoint files are large, these downloads will take some time depending on your network speed. Ensure you have at least 15GB of free space before proceeding)*

```bash
# Download waiNSFWIllustrious_v120 for NSFW / hentai stuff
podman run -it --rm -v .:/models:Z python:3.11-slim bash -c "
  pip install --no-cache-dir huggingface_hub tqdm && \
  python -c '
from huggingface_hub import hf_hub_download
from huggingface_hub.utils import enable_progress_bars

enable_progress_bars()

hf_hub_download(
    repo_id=\"Bryan32/IllustriousPonyXL\",
    filename=\"waiNSFWIllustrious_v120.safetensors\",
    local_dir=\"/models\"
)
'
"
```

```bash
# Download DarkSushiMix for NSFW / hentai stuff
podman run -it --rm -v .:/models:Z python:3.11-slim bash -c "
  pip install --no-cache-dir huggingface_hub tqdm && \
  python -c '
from huggingface_hub import hf_hub_download
from huggingface_hub.utils import enable_progress_bars

enable_progress_bars()

hf_hub_download(
    repo_id=\"nergaldarski/Dark-Sushi-mix-2.25D\",
    filename=\"darkSushiMixMix_225D.safetensors\",
    local_dir=\"/models\"
)
'
"
```

## Nude girl
Steps: 28, Sampler: Euler a, Schedule type: Normal, CFG scale: 5, Seed: 322058873, Size: 832x1216, Model hash: b9044b28d6, Model: waiNSFWIllustrious_v120, Version: f2.0.1v1.10.1-previous-603-ge5b34baa, Module 1: sdxl_vae

**Prompt:**
```
masterpiece, best quality, newest, absurdres, highres, 1girl, beautiful body, nude, tall, slender, medium breasts, artistic, van gogh, looking at horizon, studio ghibli, blue sky and clouds zhibuji loom,((rei (sanbonzakura))),(( kinta (distortion))),(((wang xi))),
```
**Negative prompt:**
```
(low quality, worst quality:1.5), (bad anatomy), lowres, bad composition, fewer digits, text, username, logo, inaccurate eyes, extra digits, fewer digits, extra arms, disfigured, missing arms, too many fingers, fused fingers, missing fingers,
```

### Sex in office
Steps: 28, Sampler: Euler a, Schedule type: Normal, CFG scale: 5, Seed: 3576154598, Size: 832x1216, Model hash: b9044b28d6, Model: waiNSFWIllustrious_v120, Version: f2.0.1v1.10.1-previous-603-ge5b34baa, Module 1: sdxl_vae

**Prompt:**
```
masterpiece, best quality, newest, absurdres, highres, sex cowgirl, 1girl, horny, ecstasy, looking at viewer, sex in office, white, open white shirt, one breast exposed, pink panties, sex through panties, long black hair, flying hair
```
**Negative prompt:**
```
(low quality, worst quality:1.5), (bad anatomy), lowres, bad composition, fewer digits, text, username, logo, inaccurate eyes, extra digits, fewer digits, extra arms, disfigured, missing arms, too many fingers, fused fingers, missing fingers,
```

### Woman crotch rub
**Prompt:**
```
1girl, woman crotch rub, table humping, masturbation, cardigan, perky nipples, classroom, closing eyes, badhandv4, <lora:add_detail:0.3>, <lora:more_details:0.1>, <lora:badhandv4:0.9>, <lora:table_humping_v0.1:1>
```
**Negative prompt:**
```
lowres, photo, realism, bad_anatomy, amputee, (low quality:1), (normal quality:2), (worst quality:1.5), (pureerosface_v1:0.01), epiCPhotoGasm-softPhoto-neg
```

### Sex on bed
**Prompt:**
```
masterpiece, best quality, beautiful lighting, (1boy, 1girl, penetration, spread legs, a girl having sex in a missionary position:1.2) (sex, penis in pussy, pussy out, lying in bed, orgasm face, blush, sweaty) nude nsfw, long hair, skinny, wide hips, medium breasts,
```
**Negative prompt:**
```
paintings, sketches, (worst quality:2), (low quality:2), (normal quality:2), lowres, normal quality, ((monochrome)), ((grayscale)), skin spots, acnes, skin blemishes, age spot,(ugly:1.331), (duplicate:1.331), (morbid:1.21), (mutilated:1.21), (tranny:1.331), mutated hands, (poorly drawn hands:1.331), blurry, (bad anatomy:1.21), (bad proportions:1.331), extra limbs, (disfigured:1.331), (missing arms:1.331), (extra legs:1.331), (fused fingers:1.61051), (too many fingers:1.61051), (unclear eyes:1.331), bad hands, missing fingers, extra digit, bad body,pubic
```
**Settings:**
```
Steps: 25, Sampler: DPM++ 2M Karras, CFG scale: 7, Seed: 338664335, Size: 512x768, Model hash: cca17b08da, Model: darkSushiMixMix_225D, Version: v1.6.0
```

### 2 Girls - pussy sandwitch
**Prompt:**
```
<lora:puss_sandwich_v0.2:1.0> (2girls:1.1), pussy sandwich, looking back, pussy, cum, nsfw,, masterpiece, best quality, highly detailed
```
**Negative prompt:**
```
(worst quality, low quality:1.4)
```

### 2 Girls - schoolgirl lesbians
**Prompt:**
```
masterpiece, best quality, beautiful lighting, newest, 2girls, classroom, school uniforms, sitting on desk, girls masturbating, lesbian, kissing, breasts out, touching nipples, pussy shown 
```
**Negative prompt:**
```
(worst quality, low quality:1.4)
```
**Settings:**
```
Model: darkSushiMixMix_225D.safetensors [cca17b08da]
Model (alternative): waiNSFWIllustrious_v120.safetensors [89cb4ec0a9]
Sampling method: Euler a
Sampling steps: 28
Width: 896
Height: 1152
CFG scale: 5
```

### 2 Girls - lesbians in space
**Prompt:**
```
masterpiece, best quality, beautiful lighting, newest, 2girls, inside of space ship, big windows, stars in background, sitting on couch next to window, lesbian, kissing, breasts out, touching nipples, pussy shown, fingering pussy
```
**Negative prompt:**
```
(worst quality, low quality:1.4)
```
**Settings:**
```
Model: waiNSFWIllustrious_v120.safetensors [89cb4ec0a9]
Sampling method: Euler a
Sampling steps: 28
Width: 896
Height: 1152
CFG scale: 5
```

## References
- https://betterwaifu.com/blog/illustrious-guide
- https://betterwaifu.com/blog/ai-pose-prompts
- https://betterwaifu.com/blog/nsfw-prompts
- https://betterwaifu.com/blog/automatic1111-guide
- https://huggingface.co/datasets/jtatman/stable-diffusion-prompts-stats-full-uncensored/viewer
