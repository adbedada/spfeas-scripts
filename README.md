This repository contains scripts used for pre-processing a satellite image and extracting various sapatial features.

- Sentinel-2 imagery for Sri Lanka was collected from Google Earth Engine and preprocessed with GDAL. 
   - <a href="https://raw.githubusercontent.com/adbedada/How-tos/master/sentinel-2-from-earth-engine.js"> Download Image from Google Earth Engine</a>
   - <a href="https://raw.githubusercontent.com/adbedada/How-tos/master/gdal-commands.md">Comnands for image preprocessing with GDAL</a>
- 11 features (PANTEX, HOG, SFS, LAC, NDVI, MEAN, LSR, GABOR, LBPM, ORB, and FOURIER were extracted using the python package <a href="https://github.com/jgrss/spfeas">SpFeas</a>. 

- Images were processed and analyzed using High performance computers. 
 
 - Basic Instructions to interact with high performance computers with slurm management can be found on <a href="https://raw.githubusercontent.com/adbedada/How-tos/master/lunix-interractive.md"> how-tos</a> repository.
 
 - Three zonal statistics were calcuated for a total of 146 bands using the python package <a href="https://github.com/perrygeo/python-rasterstats">rasterstats</a>
