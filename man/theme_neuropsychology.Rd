\name{theme_neuropsychology}
\alias{theme_neuropsychology}
\title{A minimal theme for ggplot2}
\author{Dominique Makowski}
\description{A minimal theme for ggplot2.}
\usage{
theme_neuropsychology(legend.position="right",
                      legend.text.size=20,
                      axis.title.size=20,
                      axis.text.size=15)
}
\arguments{
    \item{legend.position}{One of the following: "right", "left", "top" or "bottom".}
    \item{legend.text.size}{The size of the legend text (usually the numbers).}
    \item{axis.title.size}{The size of the legend title.}
    \item{axis.text.size}{The size of the axis titles.}
}
\details{
For an even better result, don't forget to change the colour palette and to add a space between the axis title and the axix (see the example below).
}
\examples{
require(ggplot2)
require(neuropsychology)

df <- personality

ggplot(df, aes(x=Age, y=Negative_Affect, colour=Sex, fill=Sex)) +
  geom_point() +
  geom_smooth(method="lm", fullrange=TRUE) +

  theme_neuropsychology() +

  xlab("\nAge") +
  ylab("Negative Affect\n") +
  scale_fill_brewer(palette="Set1",direction=-1) +
  scale_colour_brewer(palette="Set1",direction=-1)
}
