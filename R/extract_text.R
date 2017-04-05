extract_text <- function(sources=".",
                          type="pdf",
                          word.length.min=4,
                          word.length.max=Inf,
                          freq.min=10,
                          freq.max=Inf){

  # Transform to list if not list
  if(length(sources) == 1){
    sources <- c(sources)
  }


  # Read PDFs
  if(type == "pdf"){
    if(grepl(".pdf", sources)){
      sources <- c(sources)
    } else{
      sources <- list.files(path=sources, pattern = "pdf$")
    }

    for(source in sources){
        text <- c(text, pdftools::pdf_text(source))
    }
    text <- unlist(text)
    }

  # Scrap HTML
  if(type == "html"){
    text <- data.frame()
    for(source in sources){
      page <- xml2::read_html(source)
      page <- page %>%
        rvest::html_nodes("p") %>%
        rvest::html_text() %>%
        unlist() %>%
        strsplit(split = " ") %>%
        unlist() %>%
        as.data.frame() %>%
        dplyr::transmute_("word" = ".")
      text <- rbind(text, page)
    }
    text <- as.character(text$word)
  }


  # Clean
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

