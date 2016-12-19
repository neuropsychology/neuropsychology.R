interpret <- function(value, what="BIC"){
  if(what=="BIC"){
    interpretation <- ifelse(value < 2, "not worth more than a bare mention",
                ifelse(value < 6, "Positive",
                       ifelse(value < 10, "strong",
                                     "very Strong")))
    source <- "Raftery, A. E. 1995. Bayesian model selection in social research. In Vol. 25 of Sociological Methodology, ed. P. V. Marsden, 111-163. Oxford: Blackwell."
  }
  if(what=="AIC"){
    interpretation <- ifelse(value < 2, "substantial",
                            ifelse(value < 4, "moderate",
                                   ifelse(value < 7, "little",
                                          "essentially null")))
    source <- "Burnham, K. P., & Anderson, D. R. (2002). Information and likelihood theory: a basis for model selection and inference. Model selection and multimodel inference: a practical information-theoretic approach, 49-97."
  }
  print(paste("The evidence in favor of H1 can be considered as", interpretation))
  print(source)
  all <- list("interpretation"=interpretation, "source"=source)
  return(all)
}
