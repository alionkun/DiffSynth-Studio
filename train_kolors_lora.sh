#!/bin/bash

python examples/train/kolors/train_kolors_lora.py \
  --pretrained_unet_path /data/models/kolors/Kolors/unet/diffusion_pytorch_model.safetensors \
  --pretrained_text_encoder_path /data/models/kolors/Kolors/text_encoder \
  --pretrained_fp16_vae_path /data/models/sdxl-vae-fp16-fix/diffusion_pytorch_model.safetensors \
  --dataset_path /root/autodl-fs/data/kolors_lora_dataset/dog \
  --output_path /root/autodl-fs/models/kolors_lora \
  --max_epochs 10 \
  --center_crop \
  --use_gradient_checkpointing \
  --precision "16-mixed"

