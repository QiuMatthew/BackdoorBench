#!/bin/bash
#SBATCH -p qcpu
#SBATCH --out="out/generate_ffpp_with_2_classes.out"

cp -r ~/BackdoorBench/data/ffpp_3classes ~/BackdoorBench/data/ffpp_2classes
rm -r ~/BackdoorBench/data/ffpp_2classes/*/2_face2face
