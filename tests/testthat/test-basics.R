install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)
df <- persomind
library(ggplot2)

ggplot(df, aes(x=Age, y=Extraversion, colour=Mood_Disorder, fill=Mood_Disorder))+
  geom_point() +
  geom_smooth(method="lm",fullrange = T) +
  theme_bw() +
  scale_fill_brewer(palette="Set1",direction=-1) +
  scale_colour_brewer(palette="Set1",direction=-1) +
  theme_neuropsychology

library(lme4)
citation("neuropsychology")
citation("lme4")
df <- neuropsychology::persomind
