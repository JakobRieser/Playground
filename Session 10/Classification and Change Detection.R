###UNSUPERVISED CLASSIFICATION:
library(devtools)
library(raster)
library(RStoolbox)
library(rgdal)



setwd("C:/Users/Jakob/OneDrive/EAGLE M.Sc/1st term/Introduction to Programming and Geostatistics/Playground/Session 10")
getwd()


###SUPERVISED CLASSIFICATION:

#load the raster data: 
LS0815 <- brick("F:/MfD/Daten/Kythira/Landsat8/LC08_L1TP_183035_20170815.tif")
LS0730 <- brick("F:/MfD/Daten/Kythira/Landsat8/LC08_L1TP_183035_20170730.tif")

#load the corresponding training data:
td0815 <- rgdal::readOGR("F:/MfD/Daten/Kythira/Trainingsdaten/kithira_20170824_class_training.shp")
plot(td0815)
td0730 <- rgdal::readOGR("F:/MfD/Daten/Kythira/Trainingsdaten/kithira_20170725_class_training.shp")
plot(td0730)

#classification 0815:
sc0815 <- superClass(LS0815, trainData = td0815, responseCol = "class", trainPartition = 0.7, filename = "Classification_0815.tif")
??superclass
#classification 0730:
sc0730 <- superClass(LS0730, trainData = td0730, responseCol = "class", trainPartition = 0.7, filename = "Classification_0730.tif")

#results:

par(mfrow=c(1,2))
plot(sc0815$map)
plot(sc0730$map)


#post classification change detection:
sc0730x10 <- sc0730$map*10
sc0730x10

Change_0730_0815 <- sc0730x10 + sc0815$map

par(mfrow=c(1,1))
x11()
plot(Change_0730_0815)
writeRaster(Change_0730_0815, "Change.tif")   
