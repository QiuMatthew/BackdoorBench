#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/nad_badnet_nad_efficientnet_ffpp_multiclass.out"

python ./defense/nad.py \
    --yaml_path ./config/defense/nad/cifar10.yaml \
    --model efficientnet_b3 \
    --dataset ffpp_multiclass \
    --result_file nad_badnet_attack_efficientnet_ffpp_multiclass \
    # --beta3 1 \
