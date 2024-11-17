#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/badnet_attack_efficientnet_ffpp_5classes.out"

python ./resource/badnet/generate_white_square.py \
--image_size 64 \
--square_size 3 \
--distance_to_right 0 \
--distance_to_bottom 0 \
--output_path ./resource/badnet/trigger_image.png

python ./attack/badnet.py \
    --yaml_path ./config/attack/prototype/cifar10.yaml \
    --model efficientnet_b3 \
    --dataset ffpp_5classes \
    --patch_mask_path ./resource/badnet/trigger_image.png \
    --save_folder_name badnet_attack_efficientnet_ffpp_5classes \

