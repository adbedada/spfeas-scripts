#!/bin/bash

#SBATCH -p gpu
#SBATCH -J sfs_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# Start Zonal Stat

# sc3_max_ll 
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc3_max_ll.tif --prefix sfs_sc3_max_ll --stats "sum mean std" > sfs_sc3_max_ll_stats.geojson

# sc3_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc3_mean.tif --prefix sfs_sc3_mean_ --stats "sum mean std" > sfs_sc3_mean_stats.geojson

# sc3_min_ll
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc3_min_ll.tif --prefix sfs_sc3_min_ll_ --stats "sum mean std" > sfs_sc3_min_ll_stats.geojson

# sc3_roa
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc3_roa.tif --prefix sfs_sc3_roa_ --stats "sum mean std" > sfs_sc3_roa_stats.geojson

# sc3_std
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc3_std.tif --prefix sfs_sc3_std_ --stats "sum mean std" > sfs_sc3_std_stats.geojson

# sc3_w_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc3_w_mean.tif --prefix sfs_sc3_w_mean_ --stats "sum mean std" > sfs_sc3_w_mean_stats.geojson

# sc5_max_ll
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc5_max_ll.tif --prefix sfs_sc5_max_ll_ --stats "sum mean std" > sfs_sc5_max_ll_stats.geojson

# sc5_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc5_mean.tif --prefix sfs_sc5_mean_ --stats "sum mean std" > sfs_sc5_mean_stats.geojson

# sc5_min_ll
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc5_min_ll.tif --prefix sfs_sc5_min_ll_ --stats "sum mean std" > sfs_sc5_min_ll_stats.geojson

# sc5_roa
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc5_roa.tif --prefix sfs_sc5_roa_ --stats "sum mean std" > sfs_sc5_roa_stats.geojson

# sc5_std
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc5_std.tif --prefix sfs_sc5_std_ --stats "sum mean std" > sfs_sc5_std_stats.geojson

# sc5_w_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc5_w_mean.tif --prefix sfs_sc5_w_mean_ --stats "sum mean std" > sfs_sc5_w_mean_stats.geojson

# sc7_max_ll
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc7_max_ll.tif --prefix sfs_sc7_max_ll_ --stats "sum mean std" > sfs_sc7_max_ll_stats.geojson

# sc7_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc7_mean.tif --prefix sfs_sc7_mean_ --stats "sum mean std" > sfs_sc7_mean_stats.geojson

# sc7_min_ll
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc7_min_ll.tif --prefix sfs_sc7_min_ll_ --stats "sum mean std" > sfs_sc7_min_ll_stats.geojson

# sc7_roa
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc7_roa.tif --prefix sfs_sc7_roa_ --stats "sum mean std" > sfs_sc7_roa_stats.geojson

# sc7_std
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc7_std.tif --prefix sfs_sc7_std_ --stats "sum mean std" > sfs_sc7_std_stats.geojson

# sc7_w_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r sfs_sc7_w_mean.tif --prefix sfs_sc7_w_mean_ --stats "sum mean std" > sfs_sc7_w_mean_stats.geojson

