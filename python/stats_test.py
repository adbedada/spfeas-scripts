import rasterio as rio
from rasterstats import zonal_stats as zs
import geopandas as gpd
import pandas as pd
import os

from glob import glob
#Read shapefile
shp = gpd.GeoDataFrame.from_file("../zonal_stats/GN_Divisions.shp")

data_dir ="Sri_Lanka_lac_bands"
rasters =glob(os.path.join(data_dir, "*.tif"))


for i in rasters:
    with rio.open(i) as src:
        transform=src.meta['transform']
        array = src.read()

metrics = "sum mean std"
shp_cols =shp[['gid', 'gnd_c','gnd_n']]
#Run zonal stat and save values as csv

for i in array:
    stats = zs(shp, i, stats = metrics, transform=transform, prefix ="lac_")

pd_stats =shp_cols.join(pd.DataFrame(stats))
pd_stats.to_csv('lac_all_stats.csv')

