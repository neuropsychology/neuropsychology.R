\name{odds_to_probs}
\alias{odds_to_probs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Odds to probabilities transformation.
%%  ~~function to do ... ~~
}
\description{
Transform odds or log odds to probabilities.
}
\usage{
odds_to_probs(odds, log=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{odds}{The odds.}
  \item{log}{Are these log odds?}
}
\author{
Dominique Makowski
}
\examples{
require(neuropsychology)

odds_to_probs(0.46)
}

