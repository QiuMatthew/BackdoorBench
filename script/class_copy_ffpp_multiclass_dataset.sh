#!/bin/bash
#SBATCH -p qcpu
#SBATCH --out="out/copy_ffpp_multiclass_dataset.out"

cp -r ~/BackdoorBenchIJCB/data/ffpp_multiclass ~/BackdoorBench/data/
