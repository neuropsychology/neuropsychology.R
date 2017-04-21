season <- function(date){
  d <- as.Date(cut(as.Date(date), "month")) + 32
  season <- factor(quarters(d), labels = c("Winter", "Spring", "Summer", "Fall"))
  return(season)
}