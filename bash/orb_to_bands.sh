#!/bin/bash

#SBATCH -p 128gb
#SBATCH -J orb2b
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 3-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

# mosaic
gdal_translate -of GTiff -co "TILED=YES" -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.vrt sri_lanka_all_subsets_orb.tif

# sc-3-max
gdal_translate -b 1 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc31_max.tif

# sc-3-mean
gdal_translate -b 2 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc31_mean.tif

# sc-3-variance
gdal_translate -b 3 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc31_variance.tif

# sc-3-skew 
gdal_translate -b 4 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc31_skew.tif

# sc-3-kurtosis
gdal_translate -b 5 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc31_kurtosis.tif

# sc-5-max
gdal_translate -b 6 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc51_max.tif

# sc-5-mean
gdal_translate -b 7 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc51_mean.tif

# sc-5-variance
gdal_translate -b 8 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc51_variance.tif

# sc-5-skew
gdal_translate -b 9 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc51_skew.tif

# sc-5-kurtosis
gdal_translate -b 10 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc51_kurtosis.tif

# sc-7-max
gdal_translate -b 11 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc71_max.tif

# sc-7-mean
gdal_translate -b 12 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc71_mean.tif

# sc-7-variance
gdal_translate -b 13 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc71_variance.tif

# sc-7-skew
gdal_translate -b 14 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc71_skew.tif

# sc-7-kurtosis
gdal_translate -b 15 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_orb.tif orb_sc71_kurtosis.tif
