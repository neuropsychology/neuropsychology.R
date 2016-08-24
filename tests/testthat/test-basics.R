install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)

library(neuropsychology)
df <- neuropsychology::persomind


ggplot(persomind, aes(x=Age, y=Negative_Affect))+
  geom_point() +
  geom_smooth(method="lm",fullrange = T) +
  theme_neuropsychology()


a <- get
?theme_neuropsychology
?cortable()

cortable(df)
