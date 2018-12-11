library(devtools)

install.packages("colorspace")
library(colorspace)
install_github("16eagle/getSpatialData")
library(getSpatialData)

#set aoi
set_aoi()
viewaoi()

#login:
login_CopHub("JayDXQ")

#query:
query <- getSentinel_query(time_range = c("2018"))