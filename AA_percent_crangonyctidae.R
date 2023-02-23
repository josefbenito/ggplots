library(ggplot2)

AApercent <- read.csv("Crangonyctidae_AA_percent_stat.csv")
View(AApercent)

ggplot(AApercent, aes(x=AA, y=AA_percent)) + geom_boxplot() + theme(text = element_text(size=10), axis.text.x = element_text(angle=90, hjust=1)) + theme(axis.title.x = element_blank()) + theme(axis.title.y = element_blank()) + ggtitle("AA Percent")


