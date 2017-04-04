extract_text <- function(files=".",
                          word.length.min=4,
                          word.length.max=Inf,
                          freq.min=10,
                          freq.max=Inf){

  
  
  if(grepl(".pdf", files)){
    files <- c(files)
  } else{
    files <- list.files(path=files, pattern = "pdf$")
  }
  
  if (length(files) > 1){
    text <- c()
    for(file in files){
      text <- c(text, pdftools::pdf_text(file))
    }
    text <- unlist(text)
  } else{
    text <- pdftools::pdf_text(files)
  }
  
  text_clean <- tm::termFreq(text, control = list(removePunctuation = TRUE,
                                    tolower = TRUE,
                                    removeNumbers = TRUE,
                                    stopwords = TRUE,
                                    wordLengths=c(word.length.min, word.length.max)))
  
  data <- data.frame(word=rownames(text_clean), freq=rowSums(as.matrix(text_clean))) %>%
    dplyr::arrange_("desc(freq)") %>% 
    filter_(paste("freq > ", freq.min)) %>% 
    filter_(paste("freq < ", freq.max))
    
  return(data)
}

