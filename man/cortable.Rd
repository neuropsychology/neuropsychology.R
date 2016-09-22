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
        returns="table",
        print.result=TRUE,
        plot.result=TRUE,
        iamaboringperson=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
  A dataframe
}
  \item{correction}{
  "none", "holm" for holm-bonferroni (default), "fdr" for False Discovery Rate
}
  \item{type}{
  "spearman" for Spearman's correlation and "pearson" for Pearson's
}
  \item{returns}{
  "table" or "plot". Should the function return the table or the plot
}
  \item{print.result}{
  TRUE or FALSE. Should it print the table in the console
}
\item{plot.result}{
  TRUE or FALSE. Should it plot the result in the plotting tab
}
\item{iamaboringperson}{
  Are you a boring person?
}
}
\value{
\item{result}{
  Either The table in the format of a dataframe or the plot in the format of a ggplot's plot. Depending on the "returns" argument
}
}
\author{
Dominique Makowski and Bertolt 
}
\examples{
require(neuropsychology)

df <- personality

cortable(df)

# Extract the table
table <- cortable(df, returns="table")

# Extract the plot
plot <- cortable(df, returns="plot")

# Save table
write.csv(table, "correlation_table.csv")

# Save plot
ggplot2::ggsave("mycorrplot.png", plot)
}

\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
