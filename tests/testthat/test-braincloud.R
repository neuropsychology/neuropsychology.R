install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)

braincloud(image=NULL)

braincloud(image="head1", text.size = 0.8)
braincloud(image="brain1", text.size = 0.6, colours.replicate=F)
