fa_loadings <- function(fa, treshold=0, round=2, labels=NA){

  # Check loadings and remove those inferior to a treshold
  loadings <- fa$loadings %>%
    unclass() %>%
    as.data.frame()
  loadings[abs(loadings) <= abs(treshold)] <- NA

  # Save n factors
  n_factors <- length(loadings)

  # Add item labels
  loadings$Item <- rownames(loadings)
  if(length(labels)==nrow(loadings)){
  } else {loadings$Label <- 1:nrow(loadings)}

  # Keep Order
  loadings$N <- 1:nrow(loadings)
dplyr::select_vars()
  # Select the max loading for each item
  max <- loadings %>%
    tidyr::gather_("Component", "Loading", names(loadings)[!names(loadings) %in% c("Item", "N", "Label")]) %>%
    dplyr::group_by_(~Item) %>%
    dplyr::slice_(~which.max(Loading)) %>%
    dplyr::arrange_(~Component, ~desc(Loading))

  # Remove Label column if not needed
  if(length(labels)!=nrow(loadings)){
    max <- dplyr::select_(max, .dots="-Label")
    loadings <- dplyr::select_(loadings, .dots="-Label")
  }

  # Reorder the loading matrix accordingly
  loadings <- loadings[order(max$N), ]

  # Round it
  loadings[1:n_factors] <- round(loadings[1:n_factors], round)

  return(list("full"=loadings, "max"=max))
}
