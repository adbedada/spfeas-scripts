#!/bin/bash

#SBATCH -p defq
#SBATCH -J lsr4_v2
#SBATCH --export=NONE
#SBATCH -t 14-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_4_diff_layer.tif -o Sri_Lanka_subset_4_lsr_v3 --vis-order rgb --block 1 --scales 31 51 71 --tr lsr


