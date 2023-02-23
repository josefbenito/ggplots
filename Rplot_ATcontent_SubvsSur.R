library(ggplot2)
setwd("~/UAH_Docs/Fall_2017/Niemiller_Lab_Research/R_plots")
ATcontent <- read.csv("geom_line_edited_v4.csv")
View(ATcontent)
ATcontent$Regions <- factor(ATcontent$Regions, levels = c("Full genome",	"PCGs", "rRNAs", "tRNAs"))
ggplot(ATcontent, aes(x=Regions, y=Size_in_bp, fill=Habitat)) + geom_boxplot() + theme(text = element_text(size=10), axis.text.x = element_text(angle=90, hjust=1)) + theme(axis.title.x = element_blank()) + theme(axis.title.y = element_blank()) + ggtitle("Size (bp)")

