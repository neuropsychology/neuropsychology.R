braincloud <- function(pdf.file=".",
                      words=NULL,
                      frequency=NULL,
                      word.length.min=4,
                      word.length.max=Inf,
                      freq.min=10,
                      freq.max=Inf,
                      image=NULL,
                      text.size=0.5,
                      colours="neuropsychology",
                      colours.replicate=TRUE){

  if(is.null(words)==FALSE){
    data <- data.frame(word=words)
    if(is.null(frequency)){
      data$freq <- 1
    }else{
      data$freq <- frequency
    }
  }else if(is.null(pdf.file)==FALSE){
    data <- extract_text(pdf.file)
  }else{
    print("No correct input. Check ?braincloud")
  }
  
  if(colours=="neuropsychology"){
    colours <- n_colours()
  }
  if(length(colours)>1){
    if(colours.replicate==TRUE){
      colours <- rep(colours, length.out=nrow(data))
    }
  }
  
  if(is.null(image)==FALSE){
    png::writePNG(neuropsychology::masks[[image]], "img.png")
    cloud <- wordcloud2::wordcloud2(data=data,
                                    color=colours,
                                    size=text.size,
                                    figPath="img.png")
    unlink("img.png")
  }else{
    cloud <- wordcloud2::wordcloud2(data=data,
                                    color=colours,
                                    size=text.size)
  }

return(cloud)
}

