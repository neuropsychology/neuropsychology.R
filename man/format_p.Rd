\name{format_p}
\alias{format_p}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Format the p value
%%  ~~function to do ... ~~
}
\description{
Format the p value using APA6 standards.
}
\usage{
format_p(p,
        add.stars=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{The p value.}
  \item{add.stars}{Should it add significance stars at the end.}
}
\value{
\item{p}{The formatted value.}
}
\author{Dominique Makowski}
\examples{
format_p(0.07)
}
