format_p <- function(p, add.stars=TRUE){
  if(add.stars==FALSE){
    p <- ifelse(p < .001, "< .001",
                ifelse(p < .01, "< .01",
                       ifelse(p < .05, "< .05",
                              ifelse(p >= 0.1, ">= .1",
                                     paste("= ", substring(as.character(format(round(p, 2), nsmall=2)), 2), "^", sep="")))))
  } else{
    p <- ifelse(p < .001, "< .001***",
                ifelse(p < .01, "< .01**",
                       ifelse(p < .05, "< .05*",
                              ifelse(p >= 0.1, ">= .1",
                                     paste("= ", substring(as.character(format(round(p, 2), nsmall=2)), 2), "^", sep="")))))
    
  }
  return(p)
}