import rasterio as rio
from rasterstats import zonal_stats as zs
import geopandas as gpd
import pandas as pd
import os

#Read shapefile
shp = gpd.GeoDataFrame.from_file("../../zonal_stats/GN_Divisions.shp")

#Read Raster
raster1="lac_sc5_lac.tif"
raster2="lac_sc7_lac.tif"

#specify zonal stat mettrics
metrics = "sum mean std"

#Run zonal stat and save values as csv
stats1 = zs(shp, raster1, stats = metrics, prefix ="lac_sc5_")
stats2 = zs(shp, raster2, stats = metrics, prefix ="lac_sc7_")
pd_stats = pd.DataFrame(stats1).join(pd.DataFrame(stats2))
stats_final = shp.join(pd_stats)
stats_final.to_csv('lac_stats.csv')

