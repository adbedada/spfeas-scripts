#!/bin/sh

#SBATCH -o pantex_%j.out
#SBATCH -e pantex_%j.err
#SBATCH -N 1
#SBATCH -p defq
#SBATCH -t 7-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


# Load whatever modules you need here:

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"

source activate Ryan_CondaEnvP2.7

cd ${1}

spfeas -i ${1}/${2} -o Sri_Lanka_Fourier --vis-order rgb --block 1 --scales 3 5 7 -tr fourier


