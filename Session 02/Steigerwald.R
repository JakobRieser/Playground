install.packages("RCurl")
library(RCurl)
df <- read.csv("https://raw.githubusercontent.com/wegmann/R_data/master/Steigerwald_sample_points_all_data_subset_withNames.csv")

df

df$LUCAS_LC

#DF to SPDF
spdf.obj <- df
names(spdf)
library(sp)
coordinates(spdf.obj) <- ~x+y
df
sp.obj@data <- df
