install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)
df <- persomind

ggplot(df, aes(x=Emotion_Experience,y=Presence, colour=Movie_3D,fill=Movie_3D))+
  geom_point() +
  geom_smooth(method="lm",fullrange = T) +
  xlab("\nEmotion") +
  ylab("Presence\n") +
  theme_bw() +
  scale_fill_brewer(palette="Set1",direction=-1) +
  scale_colour_brewer(palette="Set1",direction=-1) +
  theme_flat

library(lme4)
citation("neuropsychology")
citation("lme4")
df <- neuropsychology::persomind
