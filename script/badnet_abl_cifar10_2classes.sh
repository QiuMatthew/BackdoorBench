#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="out/badnet_abl_cifar10_2classes.out"

python ./defense/abl.py \
    --result_file badnet_attack_cifar_10_2classes \
    --yaml_path ./config/defense/abl/cifar10.yaml \
    --dataset cifar10_2classes
