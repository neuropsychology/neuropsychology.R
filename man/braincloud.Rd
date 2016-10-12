\name{braincloud}
\alias{braincloud}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Draw a brain shaped wordcloud
%%  ~~function to do ... ~~
}
\description{
Draw a brain shaped wordcloud.
}
\usage{
braincloud(pdf.file=".",
            words=NULL,
            frequency=NULL,
            word.length.min=4,
            word.length.max=Inf,
            freq.min=10,
            freq.max=Inf,
            image="brain1",
            text.size=0.5,
            colours="neuropsychology",
            colours.replicate=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pdf.file}{Either the name of a file (ending with ".pdf"), a directory or nothing to scrap all the PDFs from the directory.}
  \item{words}{A vector of words.}
  \item{frequency}{A length-equal frequency vector.}
  \item{word.length.min}{Keep only words with minimum length x.}
  \item{word.length.max}{Keep only words with maximum length x.}
  \item{freq.min}{Keep only words that appear more than x times.}
  \item{freq.max}{Keep only words that appear less than x times.}
  \item{image}{NULL or "brain1", "brain2", "head1", "head2".}
  \item{text.size}{Adjust the text size.}
  \item{colours}{colour of the words. A vector of HEX colours or the following: "random-dark", "random-light" or "neuropsychology" for a material design palette (default).}
    \item{colours.replicate}{Should it replicate the length of the colours vector to match the length of the data? If FALSE and length of the colours vector shorter than the length of the data, the words left will appear black.}

}
\value{
\item{cloud}{A wordcloud. Better to click on "show in new window" in RStudio.}
}
\author{Dominique Makowski}
\examples{
require(neuropsychology)

braincloud(words=c("here", "is", "some", "random", "words"))
}
