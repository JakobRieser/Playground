library(RStoolbox)
data(lsat)
lsat
plot(lsat)

str(lsat)

#tocreate raster from scratch

r1 <- raster(nrows=10, ncols=10)
r1
plot(r1)
#fill raster with random values
r1[] <- rnorm(100)
r1
plot(r1)

#Data Frame and raster data
#data frame to raster:

df <- data.frame(measure1=runif(1000)*100, measure2=round(rnorm(1000)*100))
length(df$measure1)

library(raster)
r1 <- raster(nrows=100, ncols=100)
r1[] <- df$measure1[1:1000]
r1
plot(r1)

r2 <- raster(nrows=100, ncols=100)
r2[] <- df$measure2[1:1000]
r2
plot(r2)

#stacking the 2 datasets
r12 <- stack(r1, r2)
r12
plot(r12)

#plot the layers:
plot(r12[[1]])
plot(r12,1)
plot(r12,2)

#add new layer:
r12$new <- r12[[1]]+r12[[2]]^2
r12
plot(r12)
plot(r12, "new")

#how to convert raster values back from data frame?
df12 <- r12[]
head(df12)

#indexing:
lsat[[1]]
plot(lsat[[1]])
lsat$B1_dn
plot(lsat$B1_dn)

x <- lsat[[2:3]]
plot(x)

data(lsat)
x <- lsat[1:10,]
x
plot(x)
x <- lsat[]
x
plot(x)
x <- getValues(lsat)

lsat[] <- rnorm(ncell(lsat))
plot(lsat[])
lsat[lsat<0] <- NA
plot(lsat<0)
