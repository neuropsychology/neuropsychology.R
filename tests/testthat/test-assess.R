install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)


figure <- assess(87, mean=100, sd=15)
figure2 <- assess(score=27, distribution=personality$Age, colour.fill="grey", colour.line="black")

ggsave("assess_plot.png", figure, dpi=600,
       scale=1.2)
ggsave("assess_plot2.png", figure2, dpi=600,
       scale=1.2)
# ggsave("mafigure.png", assess(87, mean=100, sd=15, language="fr", colour.line="black", colour.fill="gray"))
