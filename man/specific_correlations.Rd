\name{specific_correlations}
\alias{specific_correlations}
\title{Correlations Pairs According to Condition}
\description{
Get pairs of correlations according to a specific condition.
}
\usage{
specific_correlations(cor, treshold=0.95, upper=TRUE, labels=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cor}{Correlation matrix.}
  \item{treshold}{A treshold.}
  \item{upper}{Higher than the treshold if TRUE, lower if FALSE.}
  \item{labels}{Vector of additional infos about the items (such as the title).}
}
\value{
\item{pairs}{A dataframe.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

cor <- cor(na.omit(select_numeric(personality)))
specific_correlations(cor, treshold=0.2)
}
