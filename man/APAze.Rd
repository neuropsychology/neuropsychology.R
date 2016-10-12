\name{APAze}
\alias{APAze}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{APA6-ready output for (g)lm , (g)lmer objects and Bayes Factors.
%%  ~~function to do ... ~~
}
\description{
APA6-ready output for mixed effects and non-mixed effects linear models.
}
\usage{
APAze(fit,
      method="boot",
      nsim=1000,
      add.stars=TRUE,
      ddf=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fit}{A \code{(g)lm} or \code{lme4::(g)lmer} fit.}
  \item{method}{\code{"boot"} for bootstrapped CI, \code{"Wald"} for estimated. Only in the case of a mixed-effect model. See \code{\link[lme4]{confint.merMod}}.}
  \item{nsim}{how many times should it bootstrap the confindence intervals (only if \code{method = "boot"}).}
  \item{add.stars}{Add significance stars.}
  \item{ddf}{Denominator degrees of freedom approximation (only if \code{fit} is an instance of \code{lmerTest::merModLmerTest}, ignored otherwise). If `NULL`, then the normal approximation (treat t-values as z-values) is used for lmer objects fit with lme4 and the default Satterthwaite is used for models fit with \code{lmerTest}.}
}
\author{Dominique Makowski, Phillip Alday}
\examples{
require(neuropsychology)

df <- personality

fit <- lmer(Age ~ BMI + (1|Salary), data=df)
APAze(fit, method="Wald")
}
