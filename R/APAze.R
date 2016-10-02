APAze <- function(fit, method="boot", nsim=1000, add.stars=TRUE, ddf=NULL){

  varsnames <- all.vars(terms(fit))

# lme4 and lmerTest -----------------------------------------------------------------
  if(class(fit)[1]=="lmerMod" | class(fit)[1]=="merModLmerTest"){

  R2 <- MuMIn::r.squaredGLMM(fit)
  confint <- confint(fit, method=method, nsim=nsim, oldNames=F)
  # It would be nice to have this to automatically switch to Wald estimation
  # of confint in the case of eventual warnings. But I have no idea how
  # to catch those...



  if(!is.null(ddf) & inherits(fit, "merModLmerTest")){
    coefs <- data.frame(coef(summary(fit, ddf=ddf)))
  }else{
    coefs <- data.frame(coef(summary(fit)))
  }

  coefs$CI25 <- tail(confint,nrow(coefs))[,1]
  coefs$CI75 <- tail(confint,nrow(coefs))[,2]

  if(inherits(fit, "glmerMod")){
    p_list <- coefs$Pr...z..
  } else if("Pr...t.." %in% colnames(coefs)){
    p_list <- coefs$Pr...t..
  }else{
    p_list <- 2 * (1 - pnorm(abs(coefs$t.value)))
  }

  coefs <- coefs[,!(names(coefs) %in% c("Std..Error","t.value","z.value"))]

  coefs <- round(coefs,2)

  # coefs$p <- round(p_list,3)
#
#   p <- ifelse(coefs$p < .001, "< .001",
#               ifelse(coefs$p < .01, "< .01",
#                      ifelse(coefs$p < .05, "< .05",
#                             ifelse(coefs$p >= 1.00, ">= 1.00",
#                             paste("= ", substring(as.character(format(round(coefs$p, 2), nsmall=2)), 2), sep="")))))
  p <- format_p(p_list, add.stars=add.stars)



  R2_apa <- paste("The overall model predicting ",
  varsnames[1],
  " successfully converged and explained ",
  substring(as.character(format(round(R2[2], 2), nsmall=2)), 3),
  "% of the variance of the endogen (the conditional R2). ",
  "The variance explained by the fixed effects was of ",
  substring(as.character(format(round(R2[1], 2), nsmall=2)), 3),
  "% (the marginal R2) and the one explained by the random effects of ",
  substring(as.character(format(round(R2[2]-R2[1], 2), nsmall=2)), 3),
  "%.", sep="")

  apa <- paste(
    paste(rownames(coefs), ": ", sep=""),
    paste("(beta = ", as.character(coefs$Estimate), ",", sep=""),
    paste(" 95% CI [", as.character(coefs$CI25), ", ", sep=""),
    paste("", as.character(coefs$CI75), "]", sep=""),
    paste(", p ", p, ")", sep=""),
    sep=""
  )
  apa <- c(R2_apa, apa)
  return(apa)
  }



# Else --------------------------------------------------------------------
  else if(class(fit)[1]=="lm"|class(fit)[1]=="glm"){
    confint <- confint(fit)
    coefs <- data.frame(coef(summary(fit)))
    coefs$CI25 <- tail(confint,nrow(coefs))[,1]
    coefs$CI75 <- tail(confint,nrow(coefs))[,2]
    p_list <- 2 * (1 - pnorm(abs(coefs$t.value)))
    coefs <- coefs[,!(names(coefs) %in% c("Std..Error","t.value"))]

    coefs <- round(coefs,2)
#     coefs$p <- round(p_list,3)
#
#     p <- ifelse(coefs$p < .001, "< .001",
#                 ifelse(coefs$p < .01, "< .01",
#                        ifelse(coefs$p < .05, "< .05",
#                               ifelse(coefs$p >= 1.00, ">= 1.00",
#                                      paste("= ", substring(as.character(format(round(coefs$p, 2), nsmall=2)), 2), sep="")))))
    p <- format_p(p_list, add.stars=add.stars)

    if(class(fit)[1]=="lm"){
      R2_apa <- paste("The overall model predicting ",
            varsnames[1],
            " explained ",
            substring(as.character(format(round(summary(fit)$r.squared, 2), nsmall=2)), 3),
            "% of the variance of the endogen (R2).", sep="")
  }else{R2_apa <- paste("AIC =",as.character(round(fit$aic, 2)))}

    apa <- paste(
      paste(rownames(coefs), ": ", sep=""),
      paste("(beta = ", as.character(coefs$Estimate), ",", sep=""),
      paste(" 95% CI [", as.character(coefs$CI25), ", ", sep=""),
      paste("", as.character(coefs$CI75), "]", sep=""),
      paste(", p ", p, ")", sep=""),
      sep=""
    )
    apa <- c(R2_apa, apa)
    return(apa)

  }else{
    print(paste("Function not available yet for object of class", class(fit)[1]))
  }
}

