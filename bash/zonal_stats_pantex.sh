#!/bin/bash

#SBATCH -p gpu
#SBATCH -J hog_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# Start Zonal Stat

# sc3_min 
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r pantex_sc3_min.tif --prefix  pantex_sc3_min_ --stats "sum mean std" > pantex_sc3_min_stats.geojson

# sc5_min
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r pantex_sc5_min.tif --prefix  pantex_sc5_min_ --stats "sum mean std" > pantex_sc5_min_stats.geojson

# sc7_mean
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r pantex_sc7_min.tif --prefix  pantex_sc7_min_ --stats "sum mean std" >  pantex_sc7_min_stats.geojson
