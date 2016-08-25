\name{get_factors}
\alias{get_factors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{A function to get the factors
%%  ~~function to do ... ~~
}
\description{
Subset a dataframe by keeping the factors
}
\usage{
get_factors(x)
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

