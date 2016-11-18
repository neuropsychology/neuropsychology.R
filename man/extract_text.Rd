\name{extract_text}
\alias{extract_text}

\title{Extract text from PDFs.}
\description{
Scrap text from PDFs.
}
\usage{
extract_text(files=".",
              word.length.min=4,
              word.length.max=Inf,
              freq.min=10,
              freq.max=Inf)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{files}{Either the name of a file (ending with ".pdf"), a directory or nothing to scrap all the PDFs from the directory.}
  \item{word.length.min}{Keep only words with minimum length x.}
  \item{word.length.max}{Keep only words with maximum length x.}
  \item{freq.min}{Keep only words that appear more than x times.}
  \item{freq.max}{Keep only words that appear less than x times.}
}
\value{
\item{data}{A dataframe containing two columns for words and their frequency.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

# text <- extract_text() # In a folder containg some PDFs.
}
