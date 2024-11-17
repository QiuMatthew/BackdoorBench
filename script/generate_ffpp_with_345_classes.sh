#!/bin/bash
#SBATCH -p qcpu
#SBATCH --out="out/generate_ffpp_with_345_classes.out"

cp -r ~/BackdoorBenchIJCB/data/ffpp_multiclass ~/BackdoorBench/data/
mv ~/BackdoorBench/data/ffpp_multiclass ~/BackdoorBench/data/ffpp_5classes
rm -r ~/BackdoorBench/data/ffpp_5classes/*/5_faceshifter
cp -r ~/BackdoorBench/data/ffpp_5classes ~/BackdoorBench/data/ffpp_4classes
rm -r ~/BackdoorBench/data/ffpp_4classes/*/4_neuraltextures
cp -r ~/BackdoorBench/data/ffpp_4classes ~/BackdoorBench/data/ffpp_3classes
rm -r ~/BackdoorBench/data/ffpp_3classes/*/3_faceswap
