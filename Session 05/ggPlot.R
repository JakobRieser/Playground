library(ggplot2)
gplot(df, aes(a, b,color=c))+geom_boxplot()+geom_jitter()
a <- c(100)
b <- c(1:100, 3)
ggplot(df, aes(a,b))+geom_point()
ggplot(df, aes(a,))+geom_histogram(color="blue")
ggplot(df, aes(c,fill=c))+geom_density(aplha=.5)

ggplot(df)+geom_histogram(aes(a, ..density..), fill="blue", color="darkgrey")+
  geom_density(aes(a, ..density..), color="yellow")+
  geom_rug(aes(a))

ggplot(df, aes(c, color=c))+
  geom_point(stat="count", size=6, alpha=.5)+
  coord_flip()+
  scale_fill_grey()

ggplot(df, aes(c, color=c))+
  geom_point(stat="count", size=6, alpha=.5)+
  scale_color_grey()

d <- c(1:100, 5)

ggplot(df, aes(d,a, color=c))+
  geom_jitter(.3, color="blue")+
  geom_boxplot(alpha=.5)

ggplot(df, aes(a,b, color=d))+
  geom_point(alpha=.5)+facet_grid(c~.)


ggplot(df, aes(a,b))+
  geom_point(size=1)+
  geom_density2d()

ggplot(df, aes(a,b))+
  geom_hex(bins=30)
install.packages("hexbin")
library(hexbin)


#ggplot Plots and Themes:

ggplot2-exts.org/gallery


