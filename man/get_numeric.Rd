\name{get_numeric}
\alias{get_numeric}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Get the numerical variables
%%  ~~function to do ... ~~
}
\description{
Subset a dataframe by keeping the numerical variables
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
