fa_loadings <- function(fa, treshold=0, round=2, names=NA){
  
  # Check loadings and remove those inferior to a treshold
  loadings <- fa$loadings %>% 
    unclass() %>% 
    as.data.frame()
  loadings[abs(loadings) <= abs(treshold)] <- NA
  
  # Save n factors
  n_factors <- length(loadings)
  
  # Add item names
  loadings$Item <- rownames(loadings)
  if(length(names)==nrow(loadings)){loadings$Name <- names} 
  else{loadings$Name <- 1:nrow(loadings)}
  
  # Keep Order
  loadings$N <- 1:nrow(loadings)
  
  # Select the max loading for each item
  max <- loadings %>% 
    gather(Component, Loading, -Item, -N, -Name) %>% 
    group_by(Item) %>% 
    slice(which.max(Loading)) %>% 
    arrange(Component, desc(Loading))
  
  # Remove Name column if not needed
  if(length(names)!=nrow(loadings)){
    max <- select(max, -Name)
    loadings <- select(loadings, -Name)
  }
  
  # Reorder the loading matrix accordingly
  loadings <- loadings[order(max$N), ]
  
  # Round it
  loadings[1:n_factors] <- round(loadings[1:n_factors], round)
  
  return(list("full"=loadings, "max"=max))
}