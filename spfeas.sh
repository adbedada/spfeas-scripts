#!/bin/sh

#SBATCH -o gabor_test.out
#SBATCH -e gabor_test.err
#SBATCH -N 1
#SBATCH -p short
#SBATCH -t 1-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


# Load whatever modules you need here:

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"

source activate Ryan_CondaEnvP2.7


spfeas -i raw_img.tif -o test_sfs --vis-order rgb --block 1 --scales 3 5 7 -tr sfs

