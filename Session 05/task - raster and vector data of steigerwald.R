s1scene <- raster("K:/W18_04GeoMB1_01_CH/03_Data/Steigerwald/03_raster/03_sentinel/01_sentinel_1/S1A_IW_GRDH_1SDV_20141013_002814_0032B3_VH.tif")
s1scene

s1scene.df <- data.frame(coordinates(s1scene), getValues(s1scene))
