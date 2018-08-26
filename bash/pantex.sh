#!/bin/bash

#SBATCH -o pantex_6.out
#SBATCH -e pantex_6.err

#SBATCH -p defq
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J spfeas
#SBATCH --export=NONE
#SBATCH -t 3-00:00:00

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_6.tif -o Sri_Lanka_subset_6_pantex --vis-order rgb --block 1 --scales 3 5 7 --tr pantex
