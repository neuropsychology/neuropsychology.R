\name{get_numeric}
\alias{get_numeric}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Select numeric variables
%%  ~~function to do ... ~~
}
\description{
Subset a dataframe by keeping the numeric variables.
}
\usage{
get_numeric(df)
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

df_only_numeric <- get_numeric(df)
}
