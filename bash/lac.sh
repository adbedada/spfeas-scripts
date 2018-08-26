#!/bin/bash

#SBATCH -p defq
#SBATCH -N 2
#SBATCH -n 32
#SBATCH -J spfeas_ndvi
#SBATCH --export=NONE
#SBATCH -t 8-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_1.tif -o Sri_Lanka_subset_1_ndvi --vis-order rgb --block 1 --scales 3 5 7 --tr ndvi --n-jobs 32


