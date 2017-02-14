\name{describe}
\alias{describe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Description of dataframes.
%%  ~~function to do ... ~~
}
\description{
Describes a vector or the columns in a matrix or dataframe.
}
\usage{
describe(df)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{A dataframe, matrix or vector.}
}
\details{
 \samp{describe} displays a table of descriptive statistics for numeric,
 factor and logical variables in the object \samp{df}. This function its just a wrapper for the prettyR::describe function. All credits go to its authors.
}
\value{
A list with three components:
\item{Numeric}{A list of the values returned for each column described.}
\item{Factor}{A list of the tables for each column described.}
\item{Logical}{A list of the tables for each column described.}
}
\author{Jim Lemon and Dominique Makowski}
\examples{
require(neuropsychology)

df <- personality

describe(df)
}

%\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
