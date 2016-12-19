\name{interpret}
\alias{interpret}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Interpretation help for AIC and BIC.}
\description{
Interpretation help for AIC and BIC.
}
\usage{
interpret(value,
        what="BIC")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{value}{A value.}
  \item{what}{"AIC" or "BIC".}
}
\value{
\item{list}{list containing the interpretation and the source.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

interpret(7.2, what="BIC")
}
