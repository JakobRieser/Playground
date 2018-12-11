##Reshaping your data

#create Data:

fielddata_table <- read.table(header=TRUE, text="
    plot_id name  Cover LAI DBH
    1 Sophie  79  2.3 1.7
    2 Achmed  63  0.6 1.1
    3 Achmed  95  3.1 1.8
    4 Sophie  11  3.4 1.9
                     ")

#look at the data:

fielddata_table

#make sure the plot id is a fector:

fielddata_table$plot_id <- factor(fielddata_table$plot_id)

#activate the needed package:
install.packages("reshape2")
library(reshape2)

#change format to a long version; plot id and names should be preserved:
melt(fielddata_table, id.vars=c("plot_id", "name"))

#what happens when "name" is excluded?
melt(fielddata_table, id.vars=c("plot_id"))

#...



