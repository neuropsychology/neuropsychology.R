install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)

text <- extract_text()
