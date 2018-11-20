#STeigerwald ggPlot2 examples:
library(ggplot2)
df <- read.csv("https://raw.githubusercontent.com/wegmann/R_data/master/Steigerwald_sample_points_all_data_subset_withNames.csv")
names(df)
head(df)
ggplot(df, aes(x=L8.ndvi, y=L8.savi))+geom_point()

ggplot(df, aes(x=L8.ndvi, y=L8.savi, color=SRTM))+geom_point()+geom_smooth()+facet_wrap("LCname")

ggplot()+geom_point(data=df, aes(LCname, L8.savi, colour=SRTM))

ggplot(df, aes(x=LCname, y=L8.savi))+geom_boxplot(alpha=.5)


ggplot(df, aes(x=LCname, y=L8.savi))+
  geom_boxplot(alpha=.5)+
  geom_point(aes(colour=SRTM), alpha=.7, size=1.5, position=position_jitter(width=.25, height=0))

ggplot(df, aes(x=LCname, y=L8.savi))+
  geom_jitter()

ggplot(df, aes(x=LCname, y=L8.savi))+
  geom_jitter()
ggplot(df, aes(x=LCname, y=L8.savi, colour=SRTM))+
  geom_jitter()
ggplot(df, aes(x=LCname, y=L8.savi))+
  geom_violin()
ggplot(df, aes(x=TimeScan.NDVIavg, fill=LCname))+
  geom_density(alpha=0.3)


ggplot(df, aes(x=LCname, y=L8.savi))+
  geom_jitter(aes(alpha=SRTM, size=TimeScan.NDVIsd, colour=L8.ndvi))+
  geom_boxplot(alpha=.5)

#cover image
ggplot(df, aes(x=LCname, y=L8.savi))+
  geom_point(aes(color=LCname), size=2)+
  facet_grid(.~LCname)
