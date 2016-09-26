get_factors <- function(df){
  for (i in names(df)){
    if (is.numeric(df[,i]) == TRUE){
      df[,i] = NULL
    }
  }
  return(df)
}
