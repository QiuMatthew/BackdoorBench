#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/badnet_attack_gtsrb.out"

python ./attack/badnet.py \
    --yaml_path ./config/attack/prototype/gtsrb.yaml \
    --patch_mask_path ./resource/badnet/trigger_image.png \
    --save_folder_name badnet_attack_gtsrb \
