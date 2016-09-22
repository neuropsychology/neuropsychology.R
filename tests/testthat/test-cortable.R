install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)

library(neuropsychology)

df <- personality

cortable(df)

ggsave("cortable_plot.png", cortable(df, returns="plot"), dpi=600)
