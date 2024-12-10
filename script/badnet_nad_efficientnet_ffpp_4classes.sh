#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/badnet_nad_efficientnet_ffpp_4classes.out"

python ./defense/nad.py \
    --yaml_path ./config/defense/nad/cifar10.yaml \
    --model efficientnet_b3 \
    --dataset ffpp_4classes \
    --result_file badnet_attack_efficientnet_ffpp_4classes \
