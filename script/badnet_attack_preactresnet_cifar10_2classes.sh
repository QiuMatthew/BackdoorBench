#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/badnet_attack_preactresnet_cifar10_2classes.out"

python ./resource/badnet/generate_white_square.py \
--image_size 32 \
--square_size 3 \
--distance_to_right 0 \
--distance_to_bottom 0 \
--output_path ./resource/badnet/trigger_image.png

python ./attack/badnet.py \
    --yaml_path ./config/attack/prototype/cifar10.yaml \
    --patch_mask_path ./resource/badnet/trigger_image.png \
    --save_folder_name badnet_attack_preactresnet_cifar10_2classes \
    --dataset cifar10_2classes \
    --attack_label_trans all2one \
    --attack_target 0
