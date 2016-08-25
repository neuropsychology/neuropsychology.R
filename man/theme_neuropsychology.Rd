\name{theme_neuropsychology}
\alias{theme_neuropsychology}
\title{theme_neuropsychology}
\author{Dominique Makowski}
\usage{
theme_neuropsychology(legend.position="right",
                        legend.text.size=20,
                        axis.title.size=20,
                        axis.text.size=15)
}
\arguments{
    \item{legend.position}{
        "right", "top", "bottom"
    }
    \item{legend.text.size}{
        size of legend text (usually the numbers)
    }
    \item{axis.title.size}{
        size of legend title
    }
    \item{axis.text.size}{
        size of axis titles
    }
}
\description{
A minimal theme for ggplot2. Don't forget to change the Palet and to add a space betweenn the axis title and the axix ticks (see example below)
}
\examples{
require(ggplot2)
require(neuropsychology)

df <- persomind

ggplot(df, aes(x=Age, y=Negative_Affect, colour=Sex, fill=Sex)) +
  geom_point() +
  geom_smooth(method="lm", fullrange=TRUE) +

  theme_neuropsychology() +

  xlab("\nAge") +
  ylab("Negative Affect\n") +
  scale_fill_brewer(palette="Set1",direction=-1) +
  scale_colour_brewer(palette="Set1",direction=-1)
}
