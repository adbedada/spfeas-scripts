#!/bin/bash

#SBATCH -p gpu
#SBATCH -J lbpm_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# Start Zonal Stat

# sc3_max 
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc3_max.tif --prefix lbpm_sc3_max_ --stats "sum mean std" > lbpm_sc3_max_stats.geojson

# sc3_mean
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc3_mean.tif --prefix lbpm_sc3_mean_ --stats "sum mean std" > lbpm_sc3_mean_stats.geojson
# sc3_skew

# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc3_skew.tif --prefix lbpm_sc3_skew_ --stats "sum mean std" > lbpm_sc3_skew_stats.geojson

# sc3_kurtosis
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc3_kurtosis.tif --prefix lbpm_sc3_kurtosis_ --stats "sum mean std" > lbpm_sc3_max_kurtosis.geojson

# sc3_variance
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc3_variance.tif --prefix lbpm_sc3_variance_ --stats "sum mean std" > lbpm_sc3_variance_stats.geojson

# sc5_max
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc5_max.tif --prefix lbpm_sc5_max_ --stats "sum mean std" > lbpm_sc5_max_stats.geojson

# sc5_mean
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc5_mean.tif --prefix lbpm_sc5_mean_ --stats "sum mean std" > lbpm_sc5_mean_stats.geojson 

# sc5_skew
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc5_skew.tif --prefix lbpm_sc5_skew_ --stats "sum mean std" > lbpm_sc5_skew_stats.geojson

# sc5_kurtosis
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc5_kurtosis.tif --prefix lbpm_sc5_kurtosis_ --stats "sum mean std" > lbpm_sc5_kurtosis_stats.geojson

# sc5_variance
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc5_variance.tif --prefix lbpm_sc5_variance_ --stats "sum mean std" > lbpm_sc5_variance_stats.geojson 

# sc7_max
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc7_max.tif --prefix lbpm_sc7_max_ --stats "sum mean std" > lbpm_sc7_max_stats.geojson

# sc7_mean
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc7_mean.tif --prefix lbpm_sc7_mean_ --stats "sum mean std" > lbpm_sc7_mean_stats.geojson

# sc7_skew
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc7_skew.tif --prefix lbpm_sc7_skew_ --stats "sum mean std" > lbpm_sc7_skew_stats.geojson

# sc7_kurtosis
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc7_kurtosis.tif --prefix lbpm_sc7_kurtosis_ --stats "sum mean std" > lbpm_sc7_max_kurtosis.geojson

# sc7_variance
# fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r lbpm_sc7_variance.tif --prefix lbpm_sc7_variance_ --stats "sum mean std" > lbpm_sc7_variance_stats.geojson


