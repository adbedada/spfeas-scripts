#!/bin/bash

#SBATCH -p defq
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J spfeas
#SBATCH --export=NONE
#SBATCH -t 14-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_1.tif -o Sri_Lanka_subset_1_lsr_njobs_test --vis-order rgb --block 1 --scales 3 5 7 --n-jobs 16 --tr lsr


