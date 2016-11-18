\name{select_factors}
\alias{select_factors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Subset a dataframe by keeping the factors.
%%  ~~function to do ... ~~
}
\description{
Subset a dataframe by keeping the factors.
}
\usage{
select_factors(df)
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

df_only_factors <- select_factors(df)
}

