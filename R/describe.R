describe <- function(df){

  return(prettyR::describe(df))
}
  # factors <- select_factors(df)
  # numerics <- select_numeric(df)
  #
  # numerics <- prettyR::describe(numerics)$Numeric
  # factors <- prettyR::describe(factors)$Factor
#
# Need to do: function that returns one dataframe, with columns as follows:
#   Variable, n obs, Percentage (empty for non factors), Mean += SD, [Min-Max]
