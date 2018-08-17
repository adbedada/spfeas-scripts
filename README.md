This repository contains scripts used for pre-processing a satellite image and extracting various sapatial features.
The features extracted are: PANTEX, HOG, SFS, LAC, NDVI, MEAN, LSR, GABOR, LBPM, ORB and FOURIER. The scripts in this repository were used to run each features individually.


<a href="https://github.com/adbeda/summer-research-2018/blob/master/1_download-image.js"> 1_download-image.js </a>: download image from google earth engine </br>
<a href="https://github.com/adbeda/summer-research-2018/blob/master/2_crop_with_gdal.sh"> 2_crop_with_gdal.sh </a>: Clip the image int six equal subset images </br>
<a href=""> 3_spfeas_fourier.sh </a>: Extract a spatial feature </br>
<a href=""> 4_gabor_to_vrt.sh </a>: Create one vrt file for the six subset images </br>
<a href=""> 5_vrt_to_bands.sh </a>: Seperate bands from a vrt/tif file </br>
<a href=""> 6_raster_stats.sh </a>: Calcuate zonal statistics from command line </br>
<a href=""> 7A_raster_stats.py </a>: Calcuate zonal statistics with python </br> 
<a href=""> 7B_zonal_stats_fourier.sh </a>: Submit the python script for processing </br> 


- Additional resources: 
   - <a href="https://raw.githubusercontent.com/adbedada/How-tos/master/gdal-commands.md">Commands for image preprocessing with GDAL</a>
   - <a href="https://github.com/adbedada/How-tos/blob/master/lunix-interractive.md"> HPC Interactive computation commands and tips</a>
   - <a href="https://github.com/jgrss/spfeas">SpFeas: Python package used for extracting features <a/> </br>
   - <a href="https://github.com/perrygeo/python-rasterstats">rasterstats: Python package for calculating zonal statistics</a>
