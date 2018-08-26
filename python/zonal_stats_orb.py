import rasterio as rio
from rasterstats import zonal_stats as zs
import geopandas as gpd
import pandas as pd
import os

#Read shapefile
shp = gpd.GeoDataFrame.from_file("../../zonal_stats/GN_Divisions.shp")

#Read Raster
raster1="orb_sc31_max.tif"
raster2="orb_sc31_mean.tif"
raster3="orb_sc31_skew.tif"
raster4="orb_sc31_kurtosis.tif"
raster5="orb_sc31_variance.tif"
raster6="orb_sc51_max.tif"
raster7="orb_sc51_mean.tif"
raster8="orb_sc51_skew.tif"
raster9="orb_sc51_kurtosis.tif"
raster10="orb_sc51_variance.tif"
raster11="orb_sc71_max.tif"
raster12="orb_sc71_mean.tif"
raster13="orb_sc71_skew.tif"
raster14="orb_sc71_kurtosis.tif"
raster15="orb_sc71_variance.tif"






stats1 = zs(shp, raster1, stats = 

#specify zonal stat mettrics
metrics = "sum mean std"


#Run zonal stat and save values as csv
stats1 = zs(shp, raster1, stats = metrics, prefix ="lac_sc5_")
stats2 = zs(shp, raster2, stats = metrics, prefix ="lac_sc7_")
stats3 = 
pd_stats = pd.DataFrame(stats1).join(pd.DataFrame(stats2))
stats_final = shp.join(pd_stats)
stats_final.to_csv('lac_stats.csv')


