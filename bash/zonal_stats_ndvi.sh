#!/bin/bash

#SBATCH -p gpu
#SBATCH -J ndvi_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# Start Zonal Stat

# sc3_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r ndvi_sc3_mean.tif --prefix ndvi_sc3_mean_ --stats "sum mean std" > ndvi_sc3_mean_stats.geojson

# sc3_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r ndvi_sc3_variance.tif --prefix ndvi_sc3_variance_ --stats "sum mean std" > ndvi_sc3_variance_stats.geojson

# sc5_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r ndvi_sc5_mean.tif --prefix ndvi_sc5_mean_ --stats "sum mean std" > ndvi_sc5_mean_stats.geojson

# sc5_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r ndvi_sc5_variance.tif --prefix ndvi_sc5_variance_ --stats "sum mean std" > ndvi_sc5_variance_stats.geojson

# sc7_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r ndvi_sc7_mean.tif --prefix ndvi_sc7_mean_ --stats "sum mean std" > ndvi_sc7_mean_stats.geojson

# sc7_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r ndvi_sc7_variance.tif --prefix ndvi_sc7_variance_ --stats "sum mean std" > ndvi_sc7_variance_stats.geojson


