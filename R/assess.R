assess <- function(score, mean=0, sd=1, population=NA, language="en", colour.line="#E91E63", colour.fill="#2196F3"){

  if(length(population)==1){
    population <- rnorm(50000, mean=mean, sd=sd)
    given.pop <- FALSE
    }else{given.pop <- TRUE}

  df <- data.frame("pop"=population)

  plot <- ggplot(df, aes_string("pop")) +
    geom_density(fill=colour.fill, colour="white", adjust = 3, na.rm=TRUE) +
    geom_vline(xintercept=score,size = 2, color=colour.line) +
    xlab("\nScore") +
    ylab("Distribution\n") +
    theme_neuropsychology()

  percentile <- ecdf(population)
  percentile <- percentile(score)

  if(percentile<0.50){
    percentile <- 1-percentile
    comparison <- "smaller"
  }else{comparison <- "greater"}

  
  if(given.pop==TRUE){
    mean <- round(mean(population, na.rm=TRUE),2)
    sd <- round(sd(population, na.rm=TRUE),2)
  }else{
    mean <- mean
    sd <- sd
  }
  if(language=="fr"){
    if(comparison=="smaller"){
      comparison <- "inferieur"
    }else{comparison <- "superieur"}
    print(paste("Le participant (score = ",
          score,
          ") se situe a ",
          as.character(round((score-mean)/sd, 2)),
          " ecarts-types de la moyenne (M = ",
          as.character(mean),
          ", ecart-type = ",
          as.character(sd),
          "). ",
          "Le score du participant est ",
          comparison,
          " a ",
          as.character((round(percentile*100, 2))),
          " % de la population generale.", sep=""))
  }else{
    print(paste("The participant (score = ",
                score,
                ") is positioned at ",
                as.character(round((score-mean)/sd, 2)),
                " standard deviations from the mean (M = ",
                as.character(mean),
                ", SD = ",
                as.character(sd),
                "). ",
                "The participant's score is ",
                comparison,
                " than ",
                as.character((round(percentile*100, 2))),
                " % of the general population.", sep=""))
  }
return(plot)
}
