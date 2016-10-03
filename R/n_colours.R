n_colours <- function(colours="all"){
  Ncolours_Reds <- c("#f44336", "#E91E63", "#9C27B0","#673AB7")
  Ncolours_Blues <- c("#3F51B5","#2196F3","#03A9F4","#00BCD4")
  Ncolours_Greens <- c("#009688", "#4CAF50", "#8BC34A", "#CDDC39")
  Ncolours_Yellows <- c("#FFEB3B", "#FFC107", "#FF9800","#FF5722")
  Ncolours_Greys <- c("#795548", "#9E9E9E", "#607D8B")
  Ncolours_All <- c(Ncolours_Reds, 
                    Ncolours_Blues,
                    Ncolours_Greens,
                    Ncolours_Yellows,
                    Ncolours_Greys)
  
  if(tolower(colours)=="all"){
    return(Ncolours_All)
  }
  else if(tolower(colours)=="reds"){
    return(Ncolours_Reds)
  }
  else if(tolower(colours)=="blues"){
    return(Ncolours_Blues)
  }
  else if(tolower(colours)=="greens"){
    return(Ncolours_Greens)
  }
  else if(tolower(colours)=="yellows"){
    return(Ncolours_Yellows)
  }
  else if(tolower(colours)=="greys"){
    return(Ncolours_Greys)
  }
  else{
    print(paste(colours, "unknown. Please check documentation."))
  }
  }
