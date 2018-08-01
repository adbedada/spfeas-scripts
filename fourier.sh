###########################################################
# The spfeas commands calculate Fourier a tif file
# Fourier is calcuated at block 1, scales 31, 51 & 71
# Setting the -vis-order to rgb creates a gray scale layer
# June-2018
##########################################################

#!/bin/bash

#SBATCH -p gpu
#SBATCH -J fourier6
#SBATCH --export=NONE
#SBATCH -t 4-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_6_v2.tif -o Sri_Lanka_subset_6_fourier_v2 --vis-order rgb --block 1 --scales 31 51 71 --tr fourier
