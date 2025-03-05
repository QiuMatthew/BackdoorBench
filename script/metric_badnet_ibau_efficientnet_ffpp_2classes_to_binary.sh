#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/badnet_ibau_efficientnet_ffpp_2classes_to_binary.out"

python ./defense/i-bau.py \
    --yaml_path ./config/defense/i-bau/cifar10.yaml \
    --model efficientnet_b3 \
    --dataset ffpp_2classes \
    --result_file badnet_attack_efficientnet_ffpp_2classes_to_binary \
