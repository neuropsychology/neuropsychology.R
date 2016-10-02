\name{Ncolours}
\alias{Ncolours}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Returns nice colours
%%  ~~function to do ... ~~
}
\description{
Returns nice colours vectors based on the material design palette.
}
\usage{
Ncolours(colours="all")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{colours}{c("all", "blues", "reds", "yellows", "greys"). The colours list to return.}
}
\value{
\item{Ncolours}{A vector of colours in HEX format..}
}
\author{Jim Lemon and Dominique Makowski}
\examples{
require(neuropsychology)

mypalette <- Ncolours("blues")
}

%\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
