#!/bin/bash

#SBATCH -p gpu
#SBATCH -J lsr1
#SBATCH --export=NONE
#SBATCH -t 7-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_1_v2.tif -o Sri_Lanka_subset_1_lsr_v2 --vis-order rgb --block 1 --scales 31 51 71 --tr lsr


