getTopN <- function(x, n){
  x.sorted <- sort(x, decreasing = TRUE)
  valueOI <- x.sorted[n]
  names(x)[x>=valueOI]
}
