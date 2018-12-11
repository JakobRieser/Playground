#'@description The function that computes the NDVI
#'@param NIR Reflection in the Near Infrared band 
#'@param RED Reflection in the Red Band

#'@details The function is based on the reflection of NIR and RED bands. 
#'You have to assign the bands to the NIR and RED variables first, if you want to work with raster data

#'@return raster file

#'@examples NDVI <- NDVI_output(0.2, 0.87)

#very important:
#'@export



NDVI_output <- function(RED, NIR){
  return((NIR-RED)/(NIR+RED))
}
