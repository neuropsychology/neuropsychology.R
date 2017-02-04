ASQ_subjective_mood_disorder <- function(Suppression, Pretending, Feeling_of_Control, Cognitive_Change, Acceptance){
  
  data = data.frame("Suppression"=Suppression,
                    "Pretending"=Pretending,
                    "Feeling_of_Control"=Feeling_of_Control,
                    "Cognitive_Change"=Cognitive_Change,
                    "Acceptance"=Acceptance)
  prob <- predict(neuropsychology::models$ASQ_tree, data, type="prob")[2]
  print(paste("The probability of subjectively reporting a mood disorder is", round(prob*100, 2), "%"))
  return(prob)
}