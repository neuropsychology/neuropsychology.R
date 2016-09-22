install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)

library(neuropsychology)

df <- personality

ggsave("cortable_plot.pdf", cortable(df, returns="plot"))
