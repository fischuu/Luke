vectorToDF <- function(x, sep=" ", names=NULL, autoCoerc=TRUE){
  x.split <- strsplit(x, sep)
  no.columns <- length(x.split[[1]])
  no.rows <- length(x.split)
  out <- as.data.frame(matrix(NA, ncol=no.columns, nrow=no.rows))
  for(i in 1:no.columns){
    out[,i] <- sapply(x.split,"[", i)
  }
  names(out) <- names
  if(autoCoerc){
    for(i in 1:no.columns){
      ac <- suppressWarnings(as.numeric(out[1,i]))
      if(!is.na(ac)){
        out[,i] <- as.numeric(out[,i])
      }
      
    }
  }
  out
}