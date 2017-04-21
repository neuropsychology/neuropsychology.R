\name{season}
\alias{season}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Returns the season of an array of dates.
%%  ~~function to do ... ~~
}
\description{
Returns the season of an array of dates.
}
\usage{
season(date)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{date}{Array of dates. Must cover the 4 seasons.}
}
\author{
Dominique Makowski
}
\examples{
require(neuropsychology)
dates <- c("2017-02-15", "2017-05-15", "2017-08-15", "2017-11-15")
season(dates)
}

