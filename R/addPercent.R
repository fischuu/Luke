addPercent <- function(x){
  namesX <- names(x)
  sumX <- sum(x)
  out <- paste(x, " (",round(x/sumX,3)*100, "%)" ,sep="")
  names(out) <- namesX
  out
}