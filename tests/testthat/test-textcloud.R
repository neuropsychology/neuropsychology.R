install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)

braincloud(image=NULL)

braincloud(image="head2", text.size = 0.8)
