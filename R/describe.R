describe <- function(df, group=NA){

  if(is.na(group)==FALSE){
    df.list <- split(df, df[group])

    n=1
    for (i in df.list){
      print(prettyR::describe(i, xname=levels(df[,group])[n]))
      n=+1
      }
  } else{
    print(prettyR::describe(df))
  }
  }
