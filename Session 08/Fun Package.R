###Timevis:


install.packages("timevis")
library(timevis)

data <- data.frame(
  id=1:4,
  content=c("Item one", "Item two", "Ranged Item", "Item four"),
  start=c("2018-01-10", "2018-01-11", "2018-10-20", "2019-02-14 15:00:00"),
  end=c(NA, NA, "2018-12-04", NA)
)

timevis(data)



###Rwalkable:
install.packages("jsonlite")
devtools::install_github("ropenscilabs/rwalkable")

library(rwalkable)
nearby("Paris, France")
plot(nearby("Munich, Germany"))
