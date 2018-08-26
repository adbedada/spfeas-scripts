##########################################################################
# This script generates a csv containing the zonal statitics of
# several raster files. The script leverages rasterstats and geopandas.

# July 31-2018
# By Adane Bedada
###########################################################################

# Load Modules
import os
import rasterio as rio
from rasterstats import zonal_stats as zs
import geopandas as gpd
import pandas as pd
from glob import glob

#Read the shapefile
shp = gpd.GeoDataFrame.from_file("../zonal_stats/GN_Divisions.shp")


# Store the names of files as a directory
dirs = {
  'hog_sc3_mean': 'Sri_Lanka_hog_bands/',
  'hog_sc3_variance': 'Sri_Lanka_hog_bands/',
  'hog_sc3_skew': 'Sri_Lanka_hog_bands/',
  'hog_sc3_kurtosis': 'Sri_Lanka_hog_bands/',
  'hog_sc3_variance':'Sri_Lanka_hog_bands/',
  'hog_sc5_mean': 'Sri_Lanka_hog_bands/',
  'hog_sc5_variance': 'Sri_Lanka_hog_bands/',
  'hog_sc5_skew': 'Sri_Lanka_hog_bands/',
  'hog_sc5_kurtosis': 'Sri_Lanka_hog_bands/',
  'hog_sc5_variance':'Sri_Lanka_hog_bands/',
  'hog_sc7_mean': 'Sri_Lanka_hog_bands/',
  'hog_sc7_variance': 'Sri_Lanka_hog_bands/',
  'hog_sc7_skew': 'Sri_Lanka_hog_bands/',
  'hog_sc7_kurtosis': 'Sri_Lanka_hog_bands/',
  'hog_sc7_variance':'Sri_Lanka_hog_bands/'

}

# names of statistical variables
metrics = "sum mean std".split()

# Specify columns to join from shapefile
shp_cols =shp.drop(['geometry'],axis=1)

# Read rasters and join names with path
rasters = {}

for n, d in dirs.items():
        raster = (os.path.join(d, n+".tif"))
        rasters[n]= raster


#copy metrics
spfeas_stats = shp_cols.copy()

# Calculate Rasters
for rast, path in rasters.items():
    print rast
    stats = zs(shp, path, nodata=-999, stats=metrics)
    new_colnames = ["{}_{}".format(rast, metric) for metric in metrics]
    df = pd.DataFrame(stats)
    df2 = df.rename(columns=dict(zip(metrics, new_colnames)))
    spfeas_stats =spfeas_stats.join(df2)

# Save dataframe as csv
spfeas_stats.to_csv("hog_stats_all.csv")
