df_3 <- data.frame(plot="location_name_1",measure1=runif(100)*1000, measure2=round(runif(100)*100), value=rnorm(100, 2, 1), ID=rep(LETTERS, 100))
df_4 <- data.frame(plot="location_name_2",measure1=runif(50)*100,measure2=round(runif(50)*10), value=rnorm(50), ID=rep(LETTERS,50))
df <- rbind(df_3,df_4)
summary(df)
str(df)
mode(df)
head(df)

df[,c("plot", "measure1", "measure2")]

