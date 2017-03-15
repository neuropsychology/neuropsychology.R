odds_to_probs <- function(odds, log=TRUE){
  if (log==TRUE){
    odds = exp(odds)
  }
  probs = odds/(1+odds)
  return(probs)
}
