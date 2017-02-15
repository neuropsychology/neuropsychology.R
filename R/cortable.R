cortable <- function(df,
                     returns="both",
                     correction="holm",
                     type="pearson",
                     iamaboringperson=FALSE){

  type <- ifelse(type == "s", "spearman",
                 ifelse(type == "spearman", "spearman", type))

  correction_text <- ifelse(correction=="holm", "Holm-Bonferroni",
                            ifelse(correction=="fdr", "False Discovery Rate",correction))


  if(length(names(df)) > 15 && correction=="none" && iamaboringperson==FALSE){
    warning("We've detected that you are running a lot (> 15) of correlation tests without adjusting the p values.
To help you in your p fishing, we've added some cool variables:
You never know, you might find something significant and get to publish this paper!
\nTo deactivate this, change the 'iamaboringperson' argument to TRUE.
Cheers.")
  df$Local_Air_Density <- rnorm(nrow(df), mean=47, sd=12)
  df$Number_of_Reproducing_Frogs <- runif(nrow(df), max=100)
  df$Researchers_Hapinness <- rnorm(nrow(df), mean=0, sd=1)
  df$Aliens_Motherships_Distance <- rnorm(nrow(df), mean=50000, sd=5000)
  df$Gods_Desctrutive_Power <- runif(nrow(df), max=10)
    }

  # Remove non numeric
  df <- df[ , sapply(df, is.numeric)]
  
  dimnames <- names(df)
  df <- as.matrix(df)


  if (type!="partial"){
    R_raw <- rcorr(df, type = type)$r
    p <- rcorr(df, type = type)$P
  } else {
    R_raw <- pcor(df)$estimate
    p <- pcor(df)$p.value
  }
  
  R <- R_raw
  p <- p.adjust(p, method = correction)
  p.mat <- matrix(p, ncol = ncol(R), dimnames = list(dimnames,dimnames))

  ## define notions for significance levels; spacing is important.
  mystars <- ifelse(p < .001, "***", ifelse(p < .01, "** ", ifelse(p < .05, "* ", " ")))

  ## trunctuate the matrix that holds the correlations to two decimal
  R <- format(round(cbind(rep(-1.11, ncol(df)), R), 2))[,-1]

  ## build a new matrix that includes the correlations with their apropriate stars
  table <- matrix(paste(R, mystars, sep=""), ncol=ncol(df))
  diag(table) <- paste(diag(R), " ", sep="")
  rownames(table) <- colnames(df)
  colnames(table) <- paste(colnames(df), "", sep="")

  ## remove upper triangle
  table <- as.matrix(table)
  table[upper.tri(table, diag = TRUE)] <- NA
  table <- as.data.frame(table)

  ## remove last column and return the matrix (which is now a data frame)
  table <- cbind(table[1:length(table)-1])


  plot <- ggcorrplot::ggcorrplot(R_raw,
                     title = paste("A ", type, "'s correlation matrix (correction: ", correction_text, ")\n", sep = ""),
                     method = "circle",
                     type="lower",
                     colors=c("#E91E63", "white", "#03A9F4"),
                     hc.order = TRUE,
                     p.mat = p.mat,
                     insig="pch",
                     legend.title="",
                     lab=FALSE) +
    theme(plot.title = element_text(hjust = 0.7))



  if (returns=="table"){
    return(table)
  } else if (returns=="plot"){
    return(plot)
  } else {
    return(list("table"=table, "plot"=plot))
  }
}
