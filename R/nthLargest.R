nthLargest <- function(x, n){
  sort(x, decreasing=TRUE)[n]
}