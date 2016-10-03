install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)

table <- cortable(personality)

ggsave("cortable_plot.png", cortable(df, returns="plot"), dpi=600,
       scale=1.2)

