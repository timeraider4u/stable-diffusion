#!/bin/bash
set -euo pipefail

BASE_DIR="$HOME/shared/stable-diffusion/data"
TARGET_DIR="${BASE_DIR}/StableDiffusion"

usage() {
  echo "Usage: $(basename "$0") [--lora] <repo_id> <filename>"
  echo "Examples:"
  echo "  Checkpoint: $(basename "$0") RunDiffusion/Juggernaut-XL-v9 Juggernaut-XL_v9_RunDiffusionPhoto_v2.safetensors"
  echo "  LoRA:       $(basename "$0") --lora Kanbara/doll-likeness-series koreanDollLikeness_v20.safetensors"
  exit 1
}

if [[ "${1:-}" == "--lora" ]]; then
  TARGET_DIR="${BASE_DIR}/Lora"
  shift
fi

if [[ $# -ne 2 ]]; then
  usage
fi

REPO_ID="$1"
FILENAME="$2"
DEST_FILE="${TARGET_DIR}/${FILENAME}"

if [[ -f "$DEST_FILE" ]]; then
  echo "File already exists at '${DEST_FILE}'. Skipping download."
  exit 0
fi

mkdir -p "$TARGET_DIR"

echo "Downloading '$FILENAME' from '$REPO_ID' into '$TARGET_DIR'..."

podman run -it --rm \
  --userns=keep-id \
  --group-add keep-groups \
  --env HOME=/tmp \
  --env REPO_ID="$REPO_ID" \
  --env FILENAME="$FILENAME" \
  -v "${TARGET_DIR}:/models:z" \
  python:3.11-slim bash -c '
    pip install --quiet --no-cache-dir huggingface_hub
    python -c "
import os
from huggingface_hub import hf_hub_download

hf_hub_download(
    repo_id=os.environ[\"REPO_ID\"],
    filename=os.environ[\"FILENAME\"],
    local_dir=\"/models\"
)
"
  '

rm -rf "${TARGET_DIR}/.cache"

echo "Done! Saved to ${DEST_FILE}"
