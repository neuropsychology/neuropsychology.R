\name{APAze}
\alias{APAze}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{APA6-ready output for lm and lmer objects
%%  ~~function to do ... ~~
}
\description{
APA6-ready output for mixed effects and non-mixed effects linear models
}
\usage{
APAze(fit, method="boot", nsim=1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fit}{
A lm() or lme4::lmer() fit
}
\item{method}{
"boot" for bootstrapped CI, "Wald" for estimated. Only in the case of a mixed-effect model. See ?confint.merMod
}
\item{nsim}{
how many times should it bootstrap the confindence intervals (only if method = "boot")
}
}
\author{
Dominique Makowski
}
\examples{
require(neuropsychology)

df <- personality

fit <- lmer(Age ~ BMI + (1|Salary), data=df)
APAze(fit, method="Wald")
}
