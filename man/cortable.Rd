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
  "none", "holm" for holm-bonferroni (default), "fdr" for False Discovery Rate
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
\item{table}{
  The table in the format of a dataframe
}
\item{plot}{
  The plot in the format of a ggplot plot
}
}
\author{
Bertolt and Dominique Makowski
}
\examples{
require(neuropsychology)

df <- personality

result <- cortable(df)

# Extract the table and the plot
table <- result$table
plot <- result$plot

# Save table
write.csv(table, "correlation_table.csv")

# Save plot
ggplot2::ggsave("mycorrplot.png", plot)
}

\keyword{ ~correlation }% __ONLY ONE__ keyword per line
