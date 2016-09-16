APAze <- function(fit, method="boot"){
  confint <- confint(fit, method=method, nsim=1000,oldNames=F)
  coefs <- data.frame(coef(summary(fit)))
  coefs$CI25 <- tail(confint,nrow(coefs))[,1]
  coefs$CI75 <- tail(confint,nrow(coefs))[,2]
  p_list <- 2 * (1 - pnorm(abs(coefs$t.value)))
  coefs <- subset(coefs,select=-c(Std..Error,t.value))
  coefs <- round(coefs,2)
  coefs$p <- round(p_list,3)

  p <- ifelse(coefs$p < .001, "< .001",
              ifelse(coefs$p < .01, "< .01",
                     ifelse(coefs$p < .05, "< .05",
                            paste("= ", coefs$p, sep=""))))
  apa <- paste(
    paste(rownames(coefs), ": ", sep=""),
    paste("(β = ", as.character(coefs$Estimate), ",", sep=""),
    paste(" 95% CI [", as.character(coefs$CI25), ", ", sep=""),
    paste("", as.character(coefs$CI75), "]", sep=""),
    paste(", p ", p, ")", sep=""),
    sep=""
  )
  return(apa)
}
            
