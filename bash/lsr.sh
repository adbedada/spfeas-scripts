#!/bin/bash

#SBATCH -p gpu
#SBATCH -J lsr2
#SBATCH --export=NONE
#SBATCH -t 7-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_2.tif -o Sri_Lanka_subset_2_lsr --vis-order rgb --block 1 --scales 3 5 7 --tr lsr


