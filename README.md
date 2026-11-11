# How-To set-up, configure and run StableDiffusion on Linux Mint with podman

* How-To for running StableDiffusion under Linux Mint (`Linux Mint 22.3 Zena`)
with Podman under different users.
* Each user will be in user group `shared`.
* Each user will have a symlink from `~/shared` to `/home/shared`
* So working directory for stable diffusion will be `~/shared/stable-diffusion`,
e.g., `~/shared/stable-diffusion/docker-compose.yml`

## Disable secure boot
If Secure Boot is enabled then `Nvidia` driver will be silently ignored
and Linux will fallback to default graphics driver.
Disabling secure boot should not have a negative impact on an already installed
LinuxMint or MS Windows 11 installation. MS Windows 11 just requires that
a system must support secure boot - not that it is enabled.
1. Go to Bios and disable Secure Boot
   1. If Secure boot cannot be enabled/disabled: Set supervisor password
   1. Then disable secure boot

## Install podman (if not already done)

1. **Install / configure Podman + podman compose**
   ```bash
   sudo apt update && sudo apt install -y podman-compose
   ```

## Install Nvidia driver
We need to install recommended `Nvidia` driver.
With `nouveau` driver it will not work.
`nvidia-driver-595-open` will not work as it will lead to problems
with framebuffer devices when switching users or switching to virtual terminals.
```bash
# Remove nvidia-driver-xyz-open
sudo apt purge "*nvidia*open*"
# Install correct nvidia-driver and nvidia settings
sudo apt install nvidia-driver-595 nvidia-prime nvidia-settings
# Ensure that /etc/default/grub contains correct nvidia framebuffer settings
grep '^GRUB_CMDLINE_LINUX_DEFAULT=".*nvidia-drm.modeset=1 nvidia_drm.fbdev=1.*"$' /etc/default/grub
# (Only if these settings are not yet configured)
## Add  nvidia-drm.modeset=1 nvidia_drm.fbdev=1 to GRUB_CMDLINE_LINUX_DEFAULT
## parameters manually
sudo nano /etc/default/grub

# Boot set-up
sudo update-initramfs -u
sudo update-grub
sudo prime-select nvidia
sudo reboot
```

## Check if your NVIDIA GPU is detected (from Linux side)
```
lspci | grep -i nvidia
```
This should output your Nvidia graphics card and the exact model number
```
01:00.0 VGA compatible controller: NVIDIA Corporation GA104M [GeForce RTX 3080 Mobile / Max-Q 8GB/16GB] (rev a1)
```

## Check if Nvidia driver is loaded
```
lsmod | grep -i nvidia
```

This should output nvidia driver and its dependent modules:
```
nvidia_uvm           2060288  0
nvidia_drm            139264  3
nvidia_modeset       1748992  3 nvidia_drm
nvidia              14815232  34 nvidia_uvm,nvidia_modeset
ecc                    45056  2 ecdh_generic,nvidia
video                  77824  3 acer_wmi,amdgpu,nvidia_modeset
```

## Verify the NVIDIA driver is loaded
```
nvidia-smi
```

This should display your GPU model, driver version, and CUDA version
```
Thu Oct 29 02:39:48 2026       
+-----------------------------------------------------------------------------------------+
| NVIDIA-SMI 595.99.02              Driver Version: 595.99.02      CUDA Version: 13.2     |
+-----------------------------------------+------------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. |
|                                         |                        |               MIG M. |
|=========================================+========================+======================|
|   0  NVIDIA GeForce RTX 3080 ...    Off |   00000000:01:00.0 Off |                  N/A |
| N/A   34C    P0             19W /   80W |      15MiB /   8192MiB |      9%      Default |
|                                         |                        |                  N/A |
+-----------------------------------------+------------------------+----------------------+

+-----------------------------------------------------------------------------------------+
| Processes:                                                                              |
|  GPU   GI   CI              PID   Type   Process name                        GPU Memory |
|        ID   ID                                                               Usage      |
|=========================================================================================|
|    0   N/A  N/A            1394      G   /usr/lib/xorg/Xorg                        4MiB |
+-----------------------------------------------------------------------------------------+
```

## Check the driver version
```
cat /proc/driver/nvidia/version
```

This should output the exact driver version:
```
NVRM version: NVIDIA UNIX x86_64 Kernel Module  595.99.02  Wed Aug 26 05:24:08 UTC 2026
GCC version:  gcc version 13.3.0 (Ubuntu 13.3.0-6ubuntu2~24.04.1)
```

## Installing the NVIDIA Container Toolkit
```
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | \
  sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
  sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
  sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
```

## Generating CDI specifications
Generate CDI spec for all NVIDIA GPUs on the system.
Podman 4.x versions cannot deal with newer CDI versions.
Therefore, we need to let generator not use latest CDI features
=> then it automatically downgrades to older version.
```
sudo nvidia-ctk cdi generate --feature-flag no-additional-gids-for-device-nodes   --output=/etc/cdi/nvidia.yaml
```

Last line should be something like this:
```
INFO[0001] Generated CDI spec with version 0.5.0 
```

## Verify CDI specifications
Verify the generated spec
```
nvidia-ctk cdi list
```
Should output something like this:
```
INFO[0000] Found 3 CDI devices                          
nvidia.com/gpu=0
nvidia.com/gpu=GPU-6935af74-2293-8f16-3f7c-2302d81a7a3a
nvidia.com/gpu=all
```

Inspect the generated CDI file with
```
cat /etc/cdi/nvidia.yaml 
```

## (optional) Force Podman to re-build cache
```
podman system migrate
```

## Test Podman with Nvidia graphics card
```
podman run --rm --device nvidia.com/gpu=all --security-opt=label=disable ubuntu nvidia-smi
```
should output something like this:
```
Thu Oct 29 01:51:41 2026       
+-----------------------------------------------------------------------------------------+
| NVIDIA-SMI 595.99.02              Driver Version: 595.99.02      CUDA Version: 13.2     |
+-----------------------------------------+------------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. |
|                                         |                        |               MIG M. |
|=========================================+========================+======================|
|   0  NVIDIA GeForce RTX 3080 ...    Off |   00000000:01:00.0 Off |                  N/A |
| N/A   34C    P0             19W /   80W |      15MiB /   8192MiB |      9%      Default |
|                                         |                        |                  N/A |
+-----------------------------------------+------------------------+----------------------+

+-----------------------------------------------------------------------------------------+
| Processes:                                                                              |
|  GPU   GI   CI              PID   Type   Process name                        GPU Memory |
|        ID   ID                                                               Usage      |
|=========================================================================================|
|  No running processes found                                                             |
+-----------------------------------------------------------------------------------------+
```

## Set-up directories / build the directory tree
```bash
# Create the shared group (if it doesn't already exist)
sudo groupadd shared

# Assign group ownership and set the Setgid bit 
# (New files automatically inherit the 'shared' group)
sudo chown -R root:shared /home/shared
sudo chmod -R 2775 /home/shared

# Enforce default POSIX ACLs so group read-write-execute permissions persist across users
sudo setfacl -d -m g:shared:rwx /home/shared/stable-diffusion
sudo setfacl -m g:shared:rwx /home/shared/stable-diffusion
```

## Adjust user accounts
For every local user account that requires access, run the following:
```bash
# Add the specific user to the shared group
sudo usermod -aG shared <username>
# e.g.,
sudo usermod -aG shared dev

# Create the symlink inside the user's home directory
ln -s /home/shared ~/shared
```

## Downloading models
* Fetch the official repository weights directly into your Podman workspace directory.
* To achieve hyper-realistic photography and crisp anime art, download custom
`safetensors` checkpoint models from community platforms
like `Civitai` or `Hugging Face`.
* Both websites do not allow download via `wget` or `curl`
... but for `Hugging Face` there
exists a dedicated Python-CLI.
* Older model formats (.ckpt or .pt) run Python code via a process called "unpickling". A bad model file can execute a backdoor or ransomware on your system.


### Downloading .safetensors files
*(Note: Checkpoint files are large, these downloads will take some time depending on your network speed. Ensure you have at least 15GB of free space before proceeding)*

```bash
# Download Juggernaut XL (via Docker container)
podman run -it --rm -v .:/models:Z python:3.11-slim bash -c "
  pip install --no-cache-dir huggingface_hub tqdm && \
  python -c '
from huggingface_hub import hf_hub_download
from huggingface_hub.utils import enable_progress_bars

enable_progress_bars()

hf_hub_download(
    repo_id=\"RunDiffusion/Juggernaut-XL-v9\",
    filename=\"Juggernaut-XL_v9_RunDiffusionPhoto_v2.safetensors\",
    local_dir=\"/models\"
)
'
"
```

```bash
# Download the official CyberRealistic V4.0 (FP16) base checkpoint
podman run -it --rm -v .:/models:Z python:3.11-slim bash -c "
  pip install --no-cache-dir huggingface_hub tqdm && \
  python -c '
from huggingface_hub import hf_hub_download
from huggingface_hub.utils import enable_progress_bars

enable_progress_bars()

hf_hub_download(
    repo_id=\"cyberdelia/CyberRealistic\",
    filename=\"CyberRealistic_V4.0_FP16.safetensors\",
    local_dir=\"/models\"
)
'
"
```

```bash
# [Hyper-Realism] Download Juggernaut XL (approx. 6.6 GB)
podman run -it --rm -v .:/models:Z python:3.11-slim bash -c "
  pip install --no-cache-dir huggingface_hub tqdm && \
  python -c '
from huggingface_hub import hf_hub_download
from huggingface_hub.utils import enable_progress_bars

enable_progress_bars()

hf_hub_download(
    repo_id=\"RunDiffusion/Juggernaut-X-Hyper\",
    filename=\"JuggernautXRundiffusion_Hyper.safetensors\",
    local_dir=\"/models\"
)
'
"
```

## Run stable-diffusion

1. **Launch the Container Stack:**
   ```bash
   ./start.sh

   # or directly:
   podman-compose up -d
   ```

1. **Watch the Initialization Logs:**
   Track its background processing and wait for the system to declare it is ready:
   ```bash
   ./watch-logs.sh

   ## or directly:
   podman logs -f stable-diffusion-webui
   ```

## File Infrastructure & Persistency

Your generated images and configuration assets are automatically mirrored on your Linux Mint host machine inside your home directory. Because of Podman's configuration, you can safely open, edit, or delete these files locally without needing root privileges.

* **Local Output Files:** `./output/` (All your generated PNGs appear here in real-time).
* **Custom VAEs (Fine-tuning filters):** `~/sdata/VAE/`
* **Custom Models Folder:** `~/data/StableDiffusion/`

## Using StableDiffusion
- [Anime cute girls](./Anime-cute-girls.md)
- [Anime Ecchi](./Anime-Ecchi.md)
- [Anime NSFW Hentai stuff](./Anime-NSFW-hentai.md)
- [SciFi](./SciFi.md)

## Troubleshooting
```bash
# (in case docker-compose YAML file was changed)
podman-compose down && podman-compose up -d
```

## References:
- https://share.google/aimode/a0fsdYDtYZNWlnP8K
- https://oneuptime.com/blog/post/2026-03-18-run-nvidia-gpu-containers-podman/view
