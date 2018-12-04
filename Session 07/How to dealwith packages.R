#how to build a package

install.packages("devtools", dependencies = TRUE)
library(devtools)
install.packages("roxygen2")
library(roxygen2)

has_devel()

#where should the skeleton be created?
getwd()
setwd("C:/Users/Jakob/OneDrive/EAGLE M.Sc/1st term/Introduction to Programming and Geostatistics/Playground/Session 07")
#initialize your package structure
create("Jakobs.Package")


#how to load and use package
getwd()
setwd("C:/Users/Jakob/OneDrive/EAGLE M.Sc/1st term/Introduction to Programming and Geostatistics/Playground/Session 07/Jakobs.Package")

load_all()
document()
install()

library(Jakobs.Package)

#ausprobieren:
addValue(1,2)

#checking my package:
check()
run_examples()

#build the pkge:
build() #bundled.tar.gz
build(binary=TRUE) #bundled zip etc

#devtools goodies
##package development sandbox
