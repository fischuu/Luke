calculateOccurences <- function(search, universe){
  res <- matrix(0, ncol=length(universe), nrow=length(search))
  for(i in 1:length(search)){
    for(j in 1:length(universe)){
      res[i,j] <- strcount(universe[j], search[i])
    }
  }
  rownames(res) <- search
  colnames(res) <- paste("S",1:length(universe), sep="")
  res
}