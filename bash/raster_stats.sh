#!/bin/bash

#SBATCH -p gpu
#SBATCH -J gabor_1
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda
source activate CondaEnvP2.7

# python raster_stats_mean.py
# python raster_stats_hog.py
# python raster_stats_lbpm.py
# python raster_stats_orb.py
# python raster_stats_fourier.py
# python raster_stats_sfs.py
# python raster_stats_pantex.py
# python raster_stats_gabor_1.py
# python raster_stats_gabor_2.py
python raster_stats_gabor_3.py
