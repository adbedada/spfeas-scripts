#!/bin/bash

#SBATCH -p defq
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J spfeas
#SBATCH --export=NONE
#SBATCH -t 8-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_6.tif -o Sri_Lanka_subset_6_mean --vis-order rgb --block 1 --scales 3 5 7 --tr mean


