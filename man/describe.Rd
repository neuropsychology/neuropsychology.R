\name{describe}
\alias{describe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Description of dataframes.
%%  ~~function to do ... ~~
}
\description{
Describes a numeric vector or numeric columns in a matrix or dataframe.
}
\usage{
describe(df)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{A dataframe, matrix or vector.}
}
\details{
 \samp{describe} displays a table of descriptive statistics for numeric
 variables in the object \samp{df}. This function its just a wrapper for the psych::describe function. All credits go to its authors. Note that it select only numeric variables.
}
\value{
\item{df}{The summary dataframe.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

df <- personality

describe(df)
}

%\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
