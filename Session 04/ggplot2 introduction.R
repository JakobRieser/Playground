#ggplot2 Introduction
install.packages("ggplot2")
library(ggplot2)
x11()
x <- data.frame(x=1, y=1, label="ggplot2 introduction\n@EAGLE")

ggplot(data=x, aes(x=x, y=y))+geom_text(aes(label=label), size=15)

x1 <- rnorm(1000,0,1)
x2 <- rnorm(1000,5,10)
x3 <- rep(c("catA", "catB", "catB", "catC", "catC", "catC"), 200)[1:1000]
x4 <- factor(rep(c("yes", "no"),500))

df <- data.frame(a=x1, b=x2, c=x3, d=x4)

ggplot(df, aes(a,b))+geom_point()

#add color:
ggplot(df, aes(a,b, color=c))+geom_point()



#add translucency:
ggplot(df, aes(a,b, color=c))+geom_point(alpha=.5)

#adding title and y axis lable:
a <- ggplot(df, aes(a,b, color=c))+geom_point(alpha=.5)+labs(title="first plot", x="x axis\n and a new line")


#create histogram:
ggplot(df, aes(a))+
  geom_histogram(color="white")
a+theme_bw()
