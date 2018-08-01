This repository contains some of the scripts used for pre-processing a satellite image and extracting various sapatial features.

- Sentinel-2 imagery for Sri Lanka was collected from Google Earth Engine and preprocessed with GDAL. 
   - <a href="https://raw.githubusercontent.com/adbedada/How-tos/master/sentinel-2-from-earth-engine.js"> Download Image from Google Earth Engine</a>
   - <a href="https://raw.githubusercontent.com/adbedada/How-tos/master/gdal-commands.md">Commands for image preprocessing with GDAL</a>
- 11 features with a total of 146 bands were extracted with were extracted using the python package <a href="https://github.com/jgrss/spfeas">SpFeas</a>. </br>
The features are: PANTEX, HOG, SFS, LAC, NDVI, MEAN, LSR, GABOR, LBPM, ORB and FOURIER. 

- Images were processed and analyzed using High performance computers. Some helpful tips can be found: 
   - <a href="https://github.com/adbedada/How-tos/blob/master/lunix-interractive.md"> HPC Interactive commands</a>
   
 - Three zonal statistics were calcuated for a total of 146 bands using the python package <a href="https://github.com/perrygeo/python-rasterstats">rasterstats</a>.
