extract_text <- function(files=".", 
                          word.length.min=4, 
                          word.length.max=Inf,
                          freq.min=10,
                          freq.max=Inf){
#library(tm)
  Rpdf <- tm::readPDF(control = list(text = "-layout"))
  if(grepl(".pdf",files)){
    files <- c(files)
  }
  else{
    files <- list.files(path=files, pattern = "pdf$")
  }
  text <- tm::Corpus(URISource(files), readerControl = list(reader = Rpdf))
  text_clean <- tm::TermDocumentMatrix(text, control = list(removePunctuation = TRUE,
                                                       tolower = TRUE,
                                                       removeNumbers = TRUE,
                                                       stopwords = TRUE,
                                                       wordLengths=c(word.length.min,word.length.max)
                                                       # stemming = TRUE
                                                       # bounds = list(global = c(2, Inf))
  ))
  
  words <- tm::findFreqTerms(text_clean, lowfreq=freq.min, highfreq=freq.max)
  words <- as.data.frame(inspect(text_clean[words,]))
  data <- data.frame(word=rownames(words),freq=rowSums(words))
  data <- arrange(data, desc(freq))
}

