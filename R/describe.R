# describe_beta <- function(df, var, by=NULL){
#   print("WARNING: FUNCTION NOT WORKING FOR NOW")
#   if (is.null(by)==FALSE){
#     print('1')
#     description <- df %>%
#       group_by(parse(by)) %>%
#       summarize(
#         mean = mean(df[var], na.rm=TRUE),
#         sd = sd(df[var], na.rm=TRUE)
#       )
#   }
#   else {
#     print('2')
#     description <- data.frame(mean = mean(df[var], na.rm=TRUE),
#                               sd = sd(df[var], na.rm=TRUE))
#   }
#   return(description)
# }
#
#
# describe(df, "BMI")
# describe(df, "BMI", "Sex")
