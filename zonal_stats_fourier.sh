###########################################################
# The rasterstats commands calcuates specific zonal
# statistical values. The "--prefix" option renames 
# columns while the "--stats" option specify the metrics
# July 2018
############################################################
#!/bin/bash

#SBATCH -p gpu
#SBATCH -J fourier_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# Start Zonal Stat

# sc3_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r fourier_sc31_mean.tif --prefix fourier_sc31_mean_ --stats "sum mean std" > fourier_sc31_mean_stats.geojson

# sc3_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r fourier_sc31_variance.tif --prefix fourier_sc31_variance_ --stats "sum mean std" > fourier_sc31_variance_stats.geojson

# sc5_mean
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r fourier_sc51_mean.tif --prefix fourier_sc51_mean_ --stats "sum mean std" > fourier_sc51_mean_stats.geojson

# sc51_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r fourier_sc51_variance.tif --prefix fourier_sc51_variance_ --stats "sum mean std" > fourier_sc51_variance_stats.geojson

# sc7_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r fourier_sc71_mean.tif --prefix fourier_sc71_mean_ --stats "sum mean std" > fourier_sc71_mean_stats.geojson

# sc7_variance
fio cat ../../zonal_stats/GN_Divisions.shp | rio zonalstats -r fourier_sc71_variance.tif --prefix fourier_sc71_variance_ --stats "sum mean std" > fourier_sc71_variance_stats.geojson
