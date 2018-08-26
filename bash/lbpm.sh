#!/bin/bash

#SBATCH -p defq
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J lbpm6
#SBATCH --export=NONE
#SBATCH -t 14-00:00:00

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_6.tif -o Sri_Lanka_subset_6_lbpm --vis-order rgb --block 1 --scales 3 5 7 --tr lbpm
