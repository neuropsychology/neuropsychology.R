\name{cortable}
\alias{cortable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Correlation matrix with significance stars
%%  ~~function to do ... ~~
}
\description{
Quickly get a correlation table with significance stars
}
\usage{
cortable(df,
        correction="holm",
        type="pearson",
        print.result=TRUE,
        plot.result=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
Dataframe
}
  \item{correction}{
  "none", "holm" for holm-bonferroni, "fdr" for False Discovery Rate
}
  \item{type}{
  "spearman" for Spearman's and "pearson" for Pearson's
}
  \item{print.result}{
  TRUE or FALSE. Should it print the table in the console.
}
\item{plot.result}{
  TRUE or FALSE. Should it plot the result in the plotting tab.
}
}
\value{
    The table in the format of a dataframe
}
\author{
Bertolt and Dominique Makowski
}
\examples{
require(neuropsychology)

df <- personality

result <- cortable(df)

# If you are using RStudio, you can visualize it more nicely using the following "View(cortable(df))"

# You can also save the table as a .csv file using the following:

write.csv(cortable(df), "correlation_table.csv")  # Use write.csv2 if you have trouble opening the file in excel
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~correlation }% __ONLY ONE__ keyword per line
