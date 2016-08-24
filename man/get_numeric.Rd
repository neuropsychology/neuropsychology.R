\name{get_numeric}
\alias{get_numeric}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{A function to get the numerical variables
%%  ~~function to do ... ~~
}
\usage{
get_numeric(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Data frame
}
}
\author{
Dominique Makowski
}
\examples{
library(neuropsychology)

df <- neuropsychology::persomind

df_only_factors <- get_factors(df)
}
