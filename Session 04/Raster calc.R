#Raster calculation:
rasterAB <- rasterA*rasterB
plot(r12)
rastersd <- calc(r12, fun=sd)
plot(rastersd)
raster_sd <- calc(r12, fun=sd, filename="raster.tif", options=c("COMPRESS=DEFLATE"))
plot(raster_sd)

#lsat-data
data(lsat)
plot(lsat)
rastersd <- calc(lsat, fun=sd)
plot(rastersd)

#regression analysis
#overlay command

#crop

aggregated <- aggregate(r12, fact=10, fun=mean)
plot(aggregated)
