\name{assess}
\alias{assess}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compare a given score to a parent population.
%%  ~~function to do ... ~~
}
\description{
Compare a given score to a parent population and draws a plot.
}
\usage{
assess(score, 
		mean=0, 
		sd=1, 
		population=NA, 
		language="en",
		colour.line="#E91E63",
		colour.fill="#2196F3")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{score}{The participant's score.}
  \item{mean}{The general population's mean.}
  \item{sd}{The general population's standart deviation.}
  \item{population}{Your own vector of parent distribution (if you feed in a vector, it will of course compute new values for the mean and sd).}
  \item{language}{"en" or "fr".}
  \item{colour.line}{The colour of the vertical line.}
  \item{colour.fill}{"The colour of the density plot.}
}
\value{
A ggplot2 plot.
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

assess(3.4, mean=2.5, sd=1.2)

df <- personality
assess(24, population=df$Age)
}

%\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
