#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/badnet_abl_efficientnet_ffpp_multiclass.out"

python ./defense/abl.py \
    --yaml_path ./config/defense/abl/cifar10.yaml \
    --model efficientnet_b3 \
    --dataset ffpp_multiclass \
    --result_file badnet_attack_efficientnet_ffpp_multiclass \
