library(ggplot2)

ATcontent <- read.csv("geom_line_edited_v2.csv")
View(ATcontent)
ATcontent$Regions <- factor(ATcontent$Regions, levels = c("Full genome",	"PCGs-",	"PCGs+",	"atp6+",	"atp8+",	"cox1+",	"cox2+",	"cox3+",	"cytb+",	"nad1-",	"nad2+",	"nad3+",	"nad4-",	"nad4L-",	"nad5-",	"nad6+",	"rrnL-",	"rrnS-",	"tRNAs-",	"tRNAs+",	"1st codon-",	"1st codon+",	"2nd codon-",	"2nd codon+",	"3rd codon-",	"3rd codon+"))
ggplot(ATcontent, aes(x=Regions, y=AT_percent, fill=Habitat)) + geom_boxplot() + theme(text = element_text(size=10), axis.text.x = element_text(angle=90, hjust=1)) + theme(axis.title.x = element_blank()) + theme(axis.title.y = element_blank()) + ggtitle("% A+T")


