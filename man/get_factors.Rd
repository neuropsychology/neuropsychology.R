\name{get_factors}
\alias{get_factors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Select numeric variables
%%  ~~function to do ... ~~
}
\description{
Subset a dataframe by keeping the factors.
}
\usage{
get_factors(df)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{A Data frame.}
}
\author{
Dominique Makowski
}
\examples{
require(neuropsychology)

df <- personality

df_only_factors <- get_factors(df)
}

