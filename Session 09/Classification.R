###UNSUPERVISED CLASSIFICATION:

library(RStoolbox)
library(rgdal)

lsat

UC <- unsuperClass(lsat, nClasses=5)
plot(UC$map)


###SUPERVISED CLASSIFICATION:
timescan <- brick("F:/W18_04GeoMB1_01_CH/03_Data/Steigerwald/03_raster/01_landsat/02_timescan/TimeScan_EAGLE_AOI_UTM_WGS84.tif")

superClass()