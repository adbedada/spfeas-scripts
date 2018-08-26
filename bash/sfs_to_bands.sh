#!/bin/bash

#SBATCH -p 128gb
#SBATCH -J sfs2b
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 3-00:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu


export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

# mosaic
gdal_translate -of GTiff -co "TILED=YES" -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.vrt sri_lanka_all_subsets_sfs.tif

# sc-3-max_ll
gdal_translate -b 1 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc3_max_ll.tif

# sc-3-min_ll
gdal_translate -b 2 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc3_min_ll.tif

# sc-3-mean
gdal_translate -b 3 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc3_mean.tif

# sc-3-wmean 
gdal_translate -b 4 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc3_w_mean.tif

# sc-3-std
gdal_translate -b 5 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc3_std.tif

# sc-3-roa
gdal_translate -b 6 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc3_roa.tif

# sc-5-max_ll
gdal_translate -b 7 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc5_max_ll.tif

# sc-5-min_ll
gdal_translate -b 8 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc5_min_ll.tif

# sc-5-mean
gdal_translate -b 9 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc5_mean.tif

# sc-5-wmean
gdal_translate -b 10 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc5_w_mean.tif

# sc-5-std
gdal_translate -b 11 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc5_std.tif

# sc-5-roa
gdal_translate -b 12 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc5_roa.tif

# sc-7-max_ll
gdal_translate -b 13 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc7_max_ll.tif

# sc-7-min_ll
gdal_translate -b 14 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc7_min_ll.tif

# sc-7-mean
gdal_translate -b 15 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc7_mean.tif

# sc-7-wmean
gdal_translate -b 16 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc7_w_mean.tif

# sc-7-std
gdal_translate -b 17 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc7_std.tif

# sc-7-roa
gdal_translate -b 18 -of GTiff -co "COMPRESS=LZW" -co "BIGTIFF=YES" sri_lanka_all_subsets_sfs.tif sfs_sc7_roa.tif







