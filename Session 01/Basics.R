install.packages("RCurl")
library(RCurl)
df <- read.csv("https://raw.githubusercontent.com/wegmann/R_data/master/Steigerwald_sample_points_all_data_subset_withNames.csv")

df
head(df)
df
tail(df)
summary(df)
plot(df)
str(df)
names(df)
dim(df)
class(df)
levels(df)

#Vectors:
c <- c(1,4,6) 
c
plot(c)


X <- seq(1,100,by=2.5)
plot(X)
X[5]
X[4:10]
X[length(X)]
X[length(X)-1]

#extract all but one position:
X[-2]

#How to extractor omit a list of positions?
idx <- c(1,4,6)
X[idx]
X[-idx]

#change values:
X2 <- numeric(length(X))
X2[X<=5] <- 1
X2[(X>30)&(X<70)] <- 2

#alternative:
install.packages("car")
library(car)
X2 <- recode(X, "0:30=1; 30:70=2; else=3")


#some stats in between:
summary(X2)
sum(X2)
cumsum(X2)

#some data modification in between:
rev(X2)
sort(X2, decreasing=TRUE)
sample(X2, 10)

#generate a 2 by 3 matrix:
m1 <- matrix(c(4,7,3,8,9,2), nrow=2)
m1

m2 <- matrix(c(2,4,3,1,5,7), nrow=2, ncol=3, byrow=TRUE)
m2

m1[,2]
m1[2,]
m1[2,2]

#create a vector with 80 entries based on normally distributed data
numbers_1 <- rnorm(80, mean=0, sd=1)
numbers_1

#populatematrix with vector data in 20 rows and 4 columns:
mat_1 <- matrix(numbers_1, nrow=20, ncol=4)
mat_1

#and convert it into a data frame:
df_1 <- data.frame(mat_1)
df_1
names(df_1) <- c("var1", "var2", "var3", "var4")
df_1

head(df_1)
summary(df_1)

#gernerate a data frame with 2 colums:
test <- data.frame(A=c(1,2,3), B=c("aB1", "aB2", "aB3"))
test
test[,1]
test[,"A"]
test$A

#a list from two vectors of different size:
a <- runif(199)
b <- c("aa", "bb", "cc", "dd", "ee")
c <- list(a,b)
c

#indexing a list of 2 vectors:
c[2]
c[[2]]
c[[2]][1]
