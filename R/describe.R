describe <- function(df){

  df <- select_numeric(df)

  n_total <- nrow(df)
  variables <- colnames(df)

  df <- df %>%
    psych::describe() %>%
    dplyr::transmute_(variable=~variables,
              missings=~n_total-n,
              prop_missings=~missings/n_total,
              mean=~mean,
              sd=~sd,
              median=~median,
              min=~min,
              max=~max,
              skew=~skew,
              kurtosis=~kurtosis)

  df[2:10] <- round(df[2:10], 2)

  return(df)
}
  # factors <- select_factors(df)
  # numerics <- select_numeric(df)
  #
  # numerics <- prettyR::describe(numerics)$Numeric
  # factors <- prettyR::describe(factors)$Factor
#
# Need to do: function that returns one dataframe, with columns as follows:
#   Variable, n obs, Percentage (empty for non factors), Mean += SD, [Min-Max]
