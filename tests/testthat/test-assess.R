install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)

assess(score=27, population=personality$Age)

figure <- assess(87, mean=100, sd=15)

ggsave("assess_plot.png", figure, dpi=600,
       scale=1.2)

