###########################################################
# The gdal commands crop large image into subsets of images
# July-2018
###########################################################


#!/bin/bash

#SBATCH -p gpu
#SBATCH -t 12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


#export path
export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7


gdalwarp -cutline shapefiles/PAN_1_384.shp -crop_to_cutline ../Sri_Lanka_2017_Mosaic_V2.tif Sri_Lanka_subset_1_v2.tif -co COMPRESS=LZW

gdalwarp -cutline shapefiles/PAN_385_768.shp -crop_to_cutline ../Sri_Lanka_2017_Mosaic_V2.tif Sri_Lanka_subset_2_v2.tif -co COMPRESS=LZW

gdalwarp -cutline shapefiles/PAN_769_1152.shp -crop_to_cutline ../Sri_Lanka_2017_Mosaic_V2.tif Sri_Lanka_subset_3_v2.tif -co COMPRESS=LZW

gdalwarp -cutline shapefiles/PAN_1153_1536.shp -crop_to_cutline ../Sri_Lanka_2017_Mosaic_V2.tif Sri_Lanka_subset_4_v2.tif -co COMPRESS=LZW

gdalwarp -cutline shapefiles/PAN_1537_1920.shp -crop_to_cutline ../Sri_Lanka_2017_Mosaic_V2.tif Sri_Lanka_subset_5_v2.tif -co COMPRESS=LZW 

gdalwarp -cutline shapefiles/PAN_1921_2304.shp -crop_to_cutline ../Sri_Lanka_2017_Mosaic_V2.tif Sri_Lanka_subset_6_v2.tif -co COMPRESS=LZW






