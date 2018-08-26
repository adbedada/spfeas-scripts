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
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc31_max.tif --prefix orb_sc31_max_ --stats "sum mean std" > orb_sc31_max_stats.geojson

# sc3_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc31_mean.tif --prefix orb_sc31_mean_ --stats "sum mean std" > orb_sc31_mean_stats.geojson

# sc3_skew
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc31_skew.tif --prefix orb_sc31_skew_ --stats "sum mean std" > orb_sc31_skew_stats.geojson

# sc3_kurtosis
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc31_kurtosis.tif --prefix orb_sc31_kurtosis_ --stats "sum mean std" > orb_sc31_kurtosis_stats.geojson

# sc3_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc31_variance.tif --prefix orb_sc31_variance_ --stats "sum mean std" > orb_sc31_variance_stats.geojson

# sc5_max
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc51_max.tif --prefix orb_sc51_max_ --stats "sum mean std" > orb_sc51_max_stats.geojson

# sc5_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc51_mean.tif --prefix orb_sc51_mean_ --stats "sum mean std" > orb_sc51_mean_stats.geojson 

# sc5_skew
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc51_skew.tif --prefix orb_sc51_skew_ --stats "sum mean std" > orb_sc51_skew_stats.geojson

# sc5_kurtosis
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc51_kurtosis.tif --prefix hog_sc51_kurtosis_ --stats "sum mean std" > orb_sc51_kurtosis_stats.geojson

# sc5_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc51_variance.tif --prefix orb_sc51_variance_ --stats "sum mean std" > orb_sc51_variance_stats.geojson 

# sc7_max
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc71_max.tif --prefix orb_sc71_max_ --stats "sum mean std" > orb_sc71_max_stats.geojson

# sc7_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc71_mean.tif --prefix orb_sc71_mean_ --stats "sum mean std" > orb_sc71_mean_stats.geojson

# sc7_skew
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc71_skew.tif --prefix hog_sc71_skew_ --stats "sum mean std" > orb_sc71_skew_stats.geojson

# sc7_kurtosis
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc71_kurtosis.tif --prefix orb_sc71_kurtosis_ --stats "sum mean std" > orb_sc71_max_kurtosis.geojson

# sc7_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r orb_sc71_variance.tif --prefix orb_sc71_variance_ --stats "sum mean std" > orb_sc71_variance_stats.geojson


