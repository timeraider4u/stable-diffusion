# NSWF - Realistic

## Download .safetensors files
*(Note: Checkpoint files are large, these downloads will take some time depending on your network speed. Ensure you have at least 15GB of free space before proceeding)*

```bash
# Download Chilloutmix
# Chilloutmix is a great realistic model that specializes in creating Asian images.
./download-safetensors.sh \
  'swl-models/chilloutmix' \
  'Chilloutmix.safetensors'
```

```bash
# Download majicMIX model for realistic Prompts
# (majicMIX realistic is a Chinese model that specializes in Asian images. Its
# photorealistic quality is remarkably high.)
./download-safetensors.sh \
  'kli017/majicMIX-realistic-v7' \
  'majicmixRealistic_v7.safetensors'
```

## Download LoRA .safetensors files
*(Note: Checkpoint files are large, these downloads will take some time depending on your network speed. Ensure you have at least 15GB of free space before proceeding)*
```bash
# breastInClass
./download-safetensors.sh \
  --lora \
  'LChinese212/breastInClass' \
  'breastInClass.safetensors'

# cuteGirlMix4
./download-safetensors.sh \
  --lora \
  'DarkAngelH/cuteGirlMix4' \
  'mix4.safetensors'

# koreanDollLikeness
./download-safetensors.sh \
  --lora \
  'beatrixlayla22/koreandolllikenessv20' \
  'koreanDollLikeness.safetensors'

# chilloutmixss
./download-safetensors.sh \
  --lora \
  'KatarLegacy/ChilloutMixss' \
  'ChilloutMixss.safetensors'

# fashion girl
./download-safetensors.sh \
  --lora \
  'KrakExilios/fashion-girl' \
  'fashionGirl_v52.safetensors'

# GoodHands-beta2
./download-safetensors.sh \
  --lora \
  'casque/GoodHands-beta2' \
  'GoodHands-beta2.safetensors'

# EmilyPussy_v05
./download-safetensors.sh \
  --lora \
  'LEMSM/myLoRA' \
  'EmilyPussy_v05.safetensors'

# more_details
./download-safetensors.sh \
  --lora \
  'frankjoshua/more_details' \
  'more_details.safetensors'

#  fashion
./download-safetensors.sh \
  --lora \
  'EarthnDusk/Loras_2023' \
  'Fashion.safetensors' \
  'fashion.safetensors'
```

- Download [zny_1.0 from CivitAI](https://civitai.com/models/11364/hinaiamyoung22) 
manually and store it inside `./data/Lora/` (cannot be found on `huggingface_hub`)


## Nude girl (korean like, chilloutmix)
```
8k,RAW photo,best quality,masterpiece,(realistic,photo-realistic:1), NSFW,1girl,full body,(looking at viewer:1),(black hair),extremely beautiful face,Random hairstyle,Random expression,big eyes,medium breasts,nude,unbuttoned shirt,arms behind back,looking up, nature,forest,river,nightcityscape,soft light, <lora:koreanDollLikeness:0.3>,<lora:fashion:0.3>,<lora:ChilloutMixss:0.3>,<lora:mix4:0.4>,
Negative prompt: EasyNegative,paintings,sketches,(worst quality:2),(low quality:2),(normal quality:2),lowres,normal quality,((monochrome)),((grayscale)),skin spots,acnes,skin blemishes,age spot,glans,extra fingers,fewer fingers,strange fingers,bad hand,ng_deepnegative_v1_75t,badhandv4,
Steps: 28, Sampler: DPM++ SDE, Schedule type: Karras, CFG scale: 5, Seed: 1268251146, Size: 512x512, Model hash: a757fe8b3d, Model: Chilloutmix, Lora hashes: "koreanDollLikeness: 8f3d16e6eada, fashion: af9a93cdbb2a, ChilloutMixss: 9d82c7787e79, mix4: 4768d15b1b67", Version: v1.10.1
```

## Nude girl (korean like, majicmixRealistic_v7)

```
leogirl, seductive leaning forward detailed skin, ultra realistic 8k cg, picture-perfect face, flawless, clean, masterpiece, professional artwork, famous artwork, cinematic lighting, cinematic bloom,((black hair:1)),(beautiful korean girl),perfect face, (young:1.1),((fit figure)),((25 year old)), beautiful face, beautiful blude eyes,detail eyes, detail face, (((perfect female body, narrow waist))),(lage breasts:1.2), looking at viewer,(nude:1),<lora:GoodHands-beta2:1> ,pussy, beautiful nipples, anal, <lora:EmilyPussy_v05:0.4>,((beautiful black pubic hair:1.25)),<lora:more_details:0.3>, <lora:zny_1.0:0.25>,
Negative prompt: easynegative,ng_deepnegative_v1_75t,(worst quality:2),(low quality:2),(normal quality:2),lowres,bad anatomy,bad hands,normal quality,((monochrome)),((grayscale)),((watermark)),(badhandv4), (bad fingers), (bad arms), (bad hands), (thin), sagging breast, huge breast, bad legs, ((deformed hand)), ((abnormal hand)), (long face:1), (less than five fingers:1), (more than five fingers:1), (high forehead:1), ((slanted eyes)), sagging breast, badhandv4, Bad-Hands-5, fat, sagging breast, badhandv4, bad-hand-v5, big hand, three arms, ((long fingers)), tall body, long body, long legs, fat, thin, bad-hands-5, negative_hand-neg, six fingers, thress arms, three hands, fat legs, fat ass, ((thin body:1)),(hand deformity, hand disability), text, ((thin legs))), ((bone, rib:1.2)
Steps: 28, Sampler: DPM++ 3M SDE, Schedule type: Exponential, CFG scale: 5, Seed: 2227011164, Size: 896x1152, Model hash: 7c819b6d13, Model: majicmixRealistic_v7, Lora hashes: "GoodHands-beta2: c05ed279295e, EmilyPussy_v05: 7ecd5a788570, more_details: 3b8aa1d351ef, zny_1.0: f2b92abc311b", Version: v1.10.1
```

## References
- https://betterwaifu.com/blog/nsfw-prompts
