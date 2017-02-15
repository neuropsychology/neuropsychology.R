specific_correlations <- function(cor, treshold=0.95, upper=TRUE, labels=NA){
  
  names <- rownames(cor)
  
  if (upper==TRUE){
    cor[abs(cor) <= treshold] <- NA
  }else{
    cor[abs(cor) >= treshold] <- NA
  }
  
  cor[abs(cor) == 1] <- NA
  cor[upper.tri(cor, diag=TRUE)] <- NA
  
  cor <- as.data.frame(cor)
  pairs <- as.data.frame(which(is.na(cor)==F, arr.ind=T))
  
  pairs$Name1 <- names[pairs$row]
  pairs$Name2 <- names[pairs$col]
  
  if (length(labels)==length(cor)){
    pairs$Label1 <- labels[pairs$row]
    pairs$Label2 <- labels[pairs$col]
  }
  
  rownames(pairs) = 1:nrow(pairs)
  return(pairs)
}
