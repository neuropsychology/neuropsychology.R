install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)

textcloud(image=NULL)


png(filename="textcloud.png")
plot(textcloud(image="head1", text.size = 0.8))
dev.off()

