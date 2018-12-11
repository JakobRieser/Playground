##Example of working with pipes

install.packages("tidyverse")
library(tidyverse)

starwars%>%
  filter(gender=="male")

starwars%>%
  select(name, ends_with("color"))

starwars%>%
  mutate(name, bmi=mass/((height/100)^2))%>%
  select(name:mass, bmi)

starwars%>%
  arrange(desc(mass))

starwars%>%
  group_by(species)%>%
  summarize(
    n=n(),
    mass=mean(mass, na.rm=TRUE)
  )%>%
  filter(n>1)
  )