#!/bin/bash

#SBATCH -p short
#SBATCH -J sfsvrt
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 2-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

# build_vrt
gdalbuildvrt sri_lanka_all_subsets_sfs.vrt Sri_Lanka_subset_1_sfs/Sri_Lanka_subset_1_sfs/Sri_Lanka_subset_1__BD1_BK1_SC3-5-7_TRsfs/*.tif Sri_Lanka_subset_2_sfs/Sri_Lanka_subset_2_sfs/Sri_Lanka_subset_2__BD1_BK1_SC3-5-7_TRsfs/*.tif Sri_Lanka_subset_3_sfs/Sri_Lanka_subset_3_sfs/Sri_Lanka_subset_3__BD1_BK1_SC3-5-7_TRsfs/*.tif Sri_Lanka_subset_4_sfs/Sri_Lanka_subset_4_sfs/Sri_Lanka_subset_4__BD1_BK1_SC3-5-7_TRsfs/*.tif Sri_Lanka_subset_5_sfs/Sri_Lanka_subset_5_sfs/Sri_Lanka_subset_5__BD1_BK1_SC3-5-7_TRsfs/*.tif Sri_Lanka_subset_6_sfs/Sri_Lanka_subset_6_sfs/Sri_Lanka_subset_6__BD1_BK1_SC3-5-7_TRsfs/*.tif

