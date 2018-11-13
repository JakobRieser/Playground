#various packages exist for importing vector data
install.packages("rgdal")
library(rgdal)

install.packages("sf")
library(sf)

clc_vector <- st_read("C:/Users/Jakob/Desktop/CLC_2012/clc_12.shp")


#Raster data handling:

#loops, conditions, functions:
a <- 5
if(a>0){print("posnbr")}


myfunction <- function(x,y)
  {x+y}
myfunction(3,4)

myfunction <- function(x,y)
  {z <- x+y
  return(z)}  
myfunction(3,4)

