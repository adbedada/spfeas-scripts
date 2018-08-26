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
  'orb_sc31_mean': 'Sri_Lanka_orb_bands/',
  'orb_sc31_variance': 'Sri_Lanka_orb_bands/',
  'orb_sc31_skew': 'Sri_Lanka_orb_bands/',
  'orb_sc31_kurtosis': 'Sri_Lanka_orb_bands/',
  'orb_sc31_variance':'Sri_Lanka_orb_bands/',
  'orb_sc51_mean': 'Sri_Lanka_orb_bands/',
  'orb_sc51_variance': 'Sri_Lanka_orb_bands/',
  'orb_sc51_skew': 'Sri_Lanka_orb_bands/',
  'orb_sc51_kurtosis': 'Sri_Lanka_orb_bands/',
  'orb_sc51_variance':'Sri_Lanka_orb_bands/',
  'orb_sc71_mean': 'Sri_Lanka_orb_bands/',
  'orb_sc71_variance': 'Sri_Lanka_orb_bands/',
  'orb_sc71_skew': 'Sri_Lanka_orb_bands/',
  'orb_sc71_kurtosis': 'Sri_Lanka_orb_bands/',
  'orb_sc71_variance':'Sri_Lanka_orb_bands/'
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
    stats = zs(shp, path, nodata=-999, stats=metrics)
    new_colnames = ["{}_{}".format(rast, metric) for metric in metrics]
    df = pd.DataFrame(stats)
    df2 = df.rename(columns=dict(zip(metrics, new_colnames)))
    spfeas_stats =spfeas_stats.join(df2)

# Save dataframe as csv
spfeas_stats.to_csv("orb_stats_all.csv")
