############################################################
# The batch scripts summits job that runs the python script
# "zonal_stats.py"
# July-2018
############################################################


#!/bin/bash

#SBATCH -p gpu
#SBATCH -J sfs_stats
#SBATCH -t 7-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu



# Load Conda Env
module load anaconda

# Activate Environment
source activate CondaEnvP2.7

# call python & the script
python raster_stats.py
