#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -p qgpu
#SBATCH --gres=gpu:tesla_a100:1
#SBATCH --out="badnet_attack_efficientnet.out"
#SBATCH --error="badnet_attack_efficientnet.err"

python ../resource/badnet/generate_white_square.py \\
--image_size 32 \\
--square_size 3 \\
--distance_to_right 0 \\
--distance_to_bottom 0 \\
--output_path ./resource/badnet/trigger_image.png

