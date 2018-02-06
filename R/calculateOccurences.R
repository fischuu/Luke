# This function takes a vector 'search' and then checks for each element of it, how many times it appeared in each element of universe and reports a table as result

strcount <-  function(universe, search){
  v <- attr(gregexpr(search, universe, fixed = T)[[1]], "match.length")
  if (identical(v, -1L)) 0 else length(v)
  }

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