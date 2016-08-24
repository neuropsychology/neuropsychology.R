get_numeric <- function(x){
  dfnum <- x
  for (i in names(dfnum)){
    if (is.numeric(dfnum[,i]) == FALSE){
      dfnum[,i] = NULL
    }
  }
return(dfnum)
}