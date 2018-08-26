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
   'gabor_sc3_mean': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_variance': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_1': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_2': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_3':'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_4': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_5': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_6': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_7': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_8':'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_9': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_10': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_11': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_12': 'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_13':'Sri_Lanka_gabor_bands/gabor_sc3/',
   'gabor_sc3_filter_14':'Sri_Lanka_gabor_bands/gabor_sc3/'
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
spfeas_stats.to_csv("gabor_sc3_stats.csv")
