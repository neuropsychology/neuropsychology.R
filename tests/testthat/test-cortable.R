install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)

library(neuropsychology)

df <- personality

ggsave("cortable_plot.png", cortable(df, returns="plot"))
