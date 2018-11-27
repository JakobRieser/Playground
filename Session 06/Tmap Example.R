install.packages("tmaptools")
library(tmaptools)
install.packages("tmap")
library(tmap)

cities1 <- geocode_OSM(c("Wuerzburg", "Dhaka", "Sydney", "New York")) 
cities2 <- geocode_OSM(c("Cape Town", "Lagos", "Buenos Aires", "Gerbrunn")) 

sp::coordinates(cities1) <- ~lon+lat
sp::coordinates(cities2) <- ~lon+lat

current.mode <- tmap_mode("view")

tm_shape(cities1)+
  tm_dots(col="blue")+
  tm_shape(cities2)+
  tm_dots(col="red")
