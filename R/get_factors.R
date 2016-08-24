get_factors <- function(x){
  dfchar <- x
  for (i in names(dfchar)){
    if (is.numeric(dfchar[,i]) == TRUE){
      dfchar[,i] = NULL
    }
  }
  return(dfchar)
}