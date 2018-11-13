# Raster import in R
raster() #single layer raster
brick() #multi layer raster from one file
stack() #multi layer raster from seperate files (same extent/resolution!)

# toexport raster:
writeRaster(...,...,...,)


lsat
plot(lsat)

#plot ndvi using RStoolbox:
ndvi <- spectralIndices(lsat, red="B3_dn", nir="B4_dn", indices="NDVI")
ndvi
plot(ndvi)


#plot all vis using RStoolbox:
vi <- spectralIndices(lsat, red="B3_dn", nir="B4_dn")
plot(vi)
