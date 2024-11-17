#!/bin/bash
#SBATCH -p qcpu
#SBATCH --out="out/remove_unnecessary_data.out"

rm -r ~/BackdoorBench/data/ffpp_{3..5}classes/{train,test,val}/5_faceshifter
rm -r ~/BackdoorBench/data/ffpp_{3,4}classes/{train,test,val}/4_neuraltextures
rm -r ~/BackdoorBench/data/ffpp_3classes/{train,test,val}/3_faceswap
