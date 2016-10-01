install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R", dependencies=TRUE)
library(neuropsychology)

APAze(glm(Age~Mood_Disorder,data=personality))

APAze(lm(Age~BMI,data=personality))

library(lmerTest)
fit_lmer <- lme4::lmer(Age~BMI + (1|Sex), data=personality)
fit_lmertest <- lmerTest::lmer(Age~BMI + (1|Sex), data=personality)

APAze(fit_lmer, method="Wald")
APAze(fit_lmertest, method="Wald")
