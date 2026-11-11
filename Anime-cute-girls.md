# Anime cute girls

## Download .safetensors files
```bash
# [Anime / Illustration] Download Animagine XL V3.1 (approx. 6.6 GB)
podman run -it --rm -v .:/models:Z python:3.11-slim bash -c "
  pip install --no-cache-dir huggingface_hub tqdm && \
  python -c '
from huggingface_hub import hf_hub_download
from huggingface_hub.utils import enable_progress_bars

enable_progress_bars()

hf_hub_download(
    repo_id=\"cagliostrolab/animagine-xl-3.1\",
    filename=\"animagine-xl-3.1.safetensors\",
    local_dir=\"/models\"
)
'
"
```

```bash
# Download Counterfeit-V3.0 FP16-Variante (2,13 GB)
# which is one of the most popular, high-quality,
# and lightweight Anime models based on Stable Diffusion 1.5
# (via Docker container)
podman run -it --rm -v .:/models:U python:3.11-slim bash -c "
  pip install --no-cache-dir huggingface_hub tqdm && \
  python -c '
from huggingface_hub import hf_hub_download
from huggingface_hub.utils import enable_progress_bars

enable_progress_bars()

hf_hub_download(
    repo_id=\"gsdf/Counterfeit-V3.0\",
    filename=\"Counterfeit-V3.0_fix_fp16.safetensors\",
    local_dir=\"/models\",
    local_dir_use_symlinks=False
)
'
"
```

## Prompts for cute anime girls
To capture that distinct romcom anime style (think Horimiya, The Angel Next Door, or Kaguya-sama), the prompt needs keywords that emphasize expressive, clean character designs, high-school or slice-of-life settings, and bright, warm lighting.

Best Generation Settings for Romcom Styles
* Sampling Method: Euler a or DPM++ 2M Karras (these produce smooth, clean flat-shading lines ideal for traditional animation styles).
* Resolution: 896x1152 or 768x1152 (Vertical aspect ratios work best for standard full-body and waist-up anime character posters).
* CFG Scale: Keep it exactly at 7.0 to balance character detail with bright, clean colors.

Here are three romantic-comedy style options you can copy directly into your UI:

### Option 1: The Classic High School Heroine (Slice-of-Life)

This style gives you the bright, clean, standard look of a modern high school romcom protagonist.

**Prompt:**
```
girl, solo, cute anime girl, romcom anime style, high school uniform, sailor collar, pleated skirt, brown hair, soft layers, brown eyes, warm smile, gentle blush, bright classroom background, sunlight streaming through windows, dust motes, lens flare, clean linework, vibrant colors, masterpiece, slice of life aesthetic
```

**Negative prompt:**
```
photo, realistic, 3d, dark, sketchy, deformed hands, bad eyes, text, watermark, fantasy, weapon
```

### Option 2: The Playful Tsundere / Coquette (Expressive & Detailed)
This option focuses on high emotional expression and trendy, cute fashion typical of modern romcom sub-plots.

**Prompt:**
```
1girl, solo, cute anime girl, romcom style, playful pout, looking away, blushing heavily, long blonde hair in twintails, blue eyes, modern casual clothes, oversized knit sweater, heart pendant necklace, urban street corner background, afternoon sun, bokeh, beautiful lighting, Kyoto Animation style texture, detailed face
```
**Negative prompt:**
```
photo, 3d, realistic, expressionless, simple background, ugly, extra limbs, signature, low quality
```

### Option 3: The Rainy Day Umbrella Scene (Cinematic Romcom Moment)
**Prompt:**
```
1girl, solo, cute anime girl, romcom key visual, holding a clear vinyl umbrella, rainy day, wet asphalt reflection, holding a school bag close, long black hair, purple eyes, gentle emotional expression, slight smile, soft lighting, misty atmosphere, high contrast, beautiful digital painting, CloverWorks style
```
**Negative prompt:**
```
photo, realism, 3d, distorted face, monochrome, duplicate, bad anatomy, text
```
