\name{describe}
\alias{describe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Description of dataframes
%%  ~~function to do ... ~~
}
\description{
Describes a vector or the columns in a matrix or data frame
}
\usage{
describe(df, group=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
  A dataframe, matrix or vector
}
  \item{group}{
  A string indicating the factor by which you want to separate the descriptions
}
}
\value{
A list with three components:
\item{Numeric}{
  A list of the values returned for each column described
}
\item{Factor}{
  A list of the tables for each column described
}
\item{Logical}{
  A list of the tables for each column described
}
}
\author{
Jim Lemon (the author of  the PrettyR package) and Dominique Makowski
}
\examples{
require(neuropsychology)

df <- personality

describe(df)

describe(df, group="Sex")
}

%\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
