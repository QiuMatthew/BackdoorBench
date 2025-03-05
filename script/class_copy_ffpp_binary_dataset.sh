#!/bin/bash
#SBATCH -p qcpu
#SBATCH --out="out/copy_ffpp_binary_dataset.out"

cp -r ~/BackdoorBenchIJCB/data/ffpp ~/BackdoorBench/data/
mv ~/BackdoorBench/data/ffpp ~/BackdoorBench/data/ffpp_binary
