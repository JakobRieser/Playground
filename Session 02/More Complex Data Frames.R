df_3 <- data.frame(plot="location_name_1",measure1=runif(100)*1000, measure2=round(runif(100)*100), value=rnorm(100, 2, 1), ID=rep(LETTERS, 100))
df_4 <- data.frame(plot="location_name_2",measure1=runif(50)*100,measure2=round(runif(50)*10), value=rnorm(50), ID=rep(LETTERS,50))
df <- rbind(df_3,df_4)
summary(df)
str(df)
mode(df)
head(df)

df[,c("plot", "measure1", "measure2")]

df[df$value>3.0,]

#add a second statement of a second column and combine it with AND or OR
df[df$value>3.2|df$measure1>50,]
df[df$value>3.2&df$measure1>50,]

#add a new column based on the product of two others:
df$new_col <- df$measure1*df$measure2
df

#query your data using a keyword e.g. "a" (quite simple) for the ID-Column
df[grep("a", df$ID, ignore.case=T),]


edit(df)

#create a random list of yes and no:
x1 <- rbinom(10, size=1, prob=0.5)
x2 <- factor(x1, labels = c("yes", "no"))
summary(x2)
levels(x2)
as.character(x2)

#want to recode it?
library(car)
recode(x2, "'yes'='sure';'no'='maybe'")