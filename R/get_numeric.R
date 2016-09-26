get_numeric <- function(df){
  for (i in names(df)){
    if (is.numeric(df[,i]) == FALSE){
      df[,i] = NULL
    }
  }
return(df)
}
