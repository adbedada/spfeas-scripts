#!/bin/bash

#SBATCH -p short
#SBATCH -J lsr2b
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 2-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

# mosaic
# gdal_translate -of GTiff -co "TILED=YES" -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.vrt sri_lanka_all_subsets_sfs.tif



# sc-3-ll
gdal_translate -b 1 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc3_line_length.tif

# sc-3-l-mean
gdal_translate -b 2 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc3_line_mean.tif

# sc-3-lc
gdal_translate -b 3 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc3_line_contrast.tif

# sc-5-ll
gdal_translate -b 4 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc5_line_length.tif

# sc-5-l-mean
gdal_translate -b 5 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc5_line_mean.tif

# sc-5-lc
gdal_translate -b 6 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc5_line_contrast.tif

# sc-7-ll
gdal_translate -b 7 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc7_line_length.tif

# sc-7-l-mean
gdal_translate -b 8 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc7_line_mean.tif

# sc-7-lc
gdal_translate -b 9 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_lsr.vrt lsr_sc7_line_contrast.tif







