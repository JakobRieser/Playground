###UNSUPERVISED CLASSIFICATION:
library(devtools)
library(raster)
library(RStoolbox)
library(rgdal)

lsat

UC <- unsuperClass(lsat, nClasses=5)
plot(UC$map)


###SUPERVISED CLASSIFICATION:
timescan <- brick("D:/Daten/Downloads/TimeScan_EAGLE_AOI_UTM_WGS84.tif")
timescan

td <- rgdal::readOGR("K:/W18_04GeoMB1_01_CH/03_Data/Steigerwald/02_vector/01_landcover/corine/CLC_2012/clc_12.shp")
sc <- superClass(timescan, trainData = td, responseCol = "code_12", filename = "myClassification.tif")


plot(sc$map)
