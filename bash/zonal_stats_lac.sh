#!/bin/bash

#SBATCH -p gpu
#SBATCH -J lac_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# Start Zonal Stat

# sc3_min 
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lac_sc3_lac.tif --prefix lac_sc3_ --stats "sum mean std" > lac_sc3_stats.geojson

# sc5_min
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lac_sc5_lac.tif --prefix lac_sc5_ --stats "sum mean std" > lac_sc5_stats.geojson

# sc7_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lac_sc7_lac.tif --prefix lac_sc7_ --stats "sum mean std" > lac_sc7_stats.geojson
