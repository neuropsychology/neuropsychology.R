\name{cortable}
\alias{cortable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{A function to do correlation matrices
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
cortable(x, correction="none", type="p")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Data frame
}
  \item{correction}{
  "none", "holm" for holm-bonferroni
}
  \item{type}{
  "s" for Spearman and "p" for Pearson
}
}
\author{
Bertolt and Dominique Makowski
}
\examples{
require(neuropsychology)

df <- neuropsychology::persomind

cortable(df)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~correlation }% __ONLY ONE__ keyword per line
