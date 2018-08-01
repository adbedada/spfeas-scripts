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
  'mean_sc3_mean': 'Sri_Lanka_mean_bands/',
  'mean_sc3_variance': 'Sri_Lanka_mean_bands/',
  'mean_sc5_mean': 'Sri_Lanka_mean_bands/',
  'mean_sc5_variance': 'Sri_Lanka_mean_bands/',
  'mean_sc7_mean': 'Sri_Lanka_mean_bands/',
  'mean_sc7_variance': 'Sri_Lanka_mean_bands/'
}

# names of statistical variables
metrics = "sum mean std".split()

# Read rasters and join names with path
rasters = {}
for n, d in dirs.items():
    for r in metrics:
        raster = (os.path.join(d, n+".tif"))
        name = n + "_" + r
        rasters[name] = raster

# Specify columns to join from shapefile
shp_cols =shp.drop(['geometry'],axis=1)

# Calculate Rasters
for raster, path in rasters.items():
    print raster
    stats = zs(shp, path, nodata=0, stats=metrics)
    df = pd.DataFrame(stats)
    # Rename names of columns
    new_colnames = ["{}_{}".format(raster, metric) for metric in metrics]
    df2 = df.rename(columns=dict(zip(metrics, new_colnames)))
    working_zones = shp_cols.join(df2) # append to working copy

# Save dataframe as csv
working_zones.to_csv("means_stats_all.csv")

