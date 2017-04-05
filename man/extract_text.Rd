\name{extract_text}
\alias{extract_text}

\title{Extract text from PDFs and HTMLs pages.}
\description{
Scrap text from PDFs.
}
\usage{
extract_text(sources=".",
              type="pdf",
              word.length.min=4,
              word.length.max=Inf,
              freq.min=10,
              freq.max=Inf)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sources}{Either the name of a file (ending with ".pdf"), a directory, nothing to scrap all the PDFs of the current directory, a html link or a list of links.}
  \item{type}{"pdf" or "html".}
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
