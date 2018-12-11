#how to load and use package
getwd()
setwd("C:/Users/Jakob/OneDrive/EAGLE M.Sc/1st term/Introduction to Programming and Geostatistics/Playground/Session 08/NDVI.Test.Pckg")

load_all()
document()
install()

library(NDVI.Test.Pckg)

#ausprobieren:
NDVI_output(1,0.2)

#checking my package:
check()
run_examples()

#build the pkge:
build() #bundled.tar.gz
build(binary=TRUE) #bundled zip etc

#devtools goodies
##package development sandbox
