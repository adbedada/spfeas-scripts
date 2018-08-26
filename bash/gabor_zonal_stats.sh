#!/bin/bash

#SBATCH -p gpu
#SBATCH -J gabor_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# Start Zonal Stat

# sc3_mean
fio cat ../zonal_stats/GN_Divisions.shp | rio zonalstats -r sri_lanka_all_subsets_gabor.vrt --band 1 --prefix gabor_sc3_mean_ --stats "sum mean std" > gabor_sc3_mean_stats.csv

