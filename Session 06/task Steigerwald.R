library(raster)
library(sp)
library(ggplot2)
library(RStoolbox)

SRTM <- raster("K:/W18_04GeoMB1_01_CH/03_Data/Steigerwald/03_raster/05_srtm_1arc/SRTM.tif")

cities <- geocode_OSM(c("FabrikSchleichach", "Rauhenebrach"), projection=crs(SRTM))
cities_df <- data.frame(cities)

sp::coordinates(cities) <- ~x+y

ggR(SRTM, geom_raster=T)+
  scale_fill_gradient(low="lightblue", high="darkblue", name="elevation", na.value=NA)+
  labs(x="", y="")+
  ggtitle("SRTM")+
  theme(plot.title=element_text(hjust=0.5, face="bold", size=10))+
  theme(legend.title = element_text(size=10, face="bold"))+
  theme(legend.text=element_text(size=6))+
  theme(axis.text=element_text(angle=45, size=6))+
  scale_y_continuous(breaks=seq(5527000,5538000,4000))+
  xlab("")+
  ylab("")+
  geom_point(data=cities_df, aes(x=x, y=y), shape=3, color="yellow")

#add color and labels of the cities