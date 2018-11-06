install.packages("RCurl")
library(RCurl)
install.packages("sp")
library(sp)
install.packages("raster")
library(raster)
install.packages("ggplot2")
library(ggplot2)
install.packages("RStoolbox")
library(RStoolbox)


df <- read.csv("https://raw.githubusercontent.com/wegmann/R_data/master/Steigerwald_sample_points_all_data_subset_withNames.csv")

spdf.obj <- df
coordinates(spdf.obj) <- ~x+y
...