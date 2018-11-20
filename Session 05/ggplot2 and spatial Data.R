#ggmap example:

##ggmap
install.packages("ggmap")
library(ggmap)

##get data for defined location
map.wue <- get_map(maptype="roadmap", "Wurzburg")
?get_map
##plot map of location
ggmap(map.wue)

##zoom in

##and an overview map
map_ovv <- get_map("Bavaria", zoom=6)
ggmap(map)



#lsat data

library(RStoolbox)

lsat.df <- data.frame(coordinates(lsat), getValues(lsat))
lsat.df

lsat.df <- lsat.df[lsat.df$B3_dn !=0,]

ggplot(lsat.df)+
  geom_raster(aes(x=x, y=y, fill=B3_dn))+
  scale_fill_gradient(na.value=NA)+
  coord_equal()

##adding other color scheme:
ggplot(lsat.df)+
  geom_raster(aes(x=x, y=y, fill=B5_dn))+
  scale_fill_gradient(low="white", high="red", na.value=NA)+
  coord_equal()

#displaying multispectral data on RGB
plotRGB(lsat, 3,2,1)

##strech
plotRGB(lsat, 5,3,2, stretch="lin")


install.packages("tibble")
library(tibble)
library(RStoolbox)
##single layer greyscale

##single layer map to user defined legend
ggR(lsat, layer=1, stretch="lin", geom_raster=TRUE)+
  scale_fill_gradient(low="blue", high="green")

