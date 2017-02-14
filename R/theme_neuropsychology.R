theme_neuropsychology <- function(legend.position="right",
                        legend.text.size=20,
                        axis.title.size=20,
                        axis.text.size=15){
  theme_classic() +
    theme(
      legend.position = legend.position,
      legend.text = element_text(size=legend.text.size),
      legend.title = element_blank(),
      legend.key = element_blank(),
      axis.title = element_text(size=axis.title.size),
      axis.text.x = element_text(size=axis.text.size),
      axis.text.y = element_text(size=axis.text.size),
      axis.ticks = element_blank()
    )
}
