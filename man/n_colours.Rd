\name{n_colours}
\alias{n_colours}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Returns a vector of colours
%%  ~~function to do ... ~~
}
\description{
Returns a vector of colours based on the material design palette.
}
\usage{
n_colours(colours="all")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{colours}{c("all", "blues", "reds", "yellows", "greys"). The colours list to return.}
}
\value{
\item{n_colours}{A vector of colours in HEX format.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

mypalette <- n_colours("blues")
}

%\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
