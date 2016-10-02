textcloud <- function(pdf.file=".",
                      words=NULL,
                      frequency=NULL,
                      word.length.min=4, 
                      word.length.max=Inf,
                      freq.min=10,
                      freq.max=Inf,
                      image=NULL,
                      text.size=0.5){
  
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
    print("No correct input. Check ?textcloud")
  }

  if(is.null(image)==FALSE){
    png::writePNG(masks[image], "img.png")
  }
  cloud <- wordcloud2:wordcloud2(data=text, 
                      size=text.size,
                      figPath=image)
  
  if(is.null(image)==FALSE){
    unlink("img.png")
    }
  
  return(cloud)
}

  