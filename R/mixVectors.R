# This function mixes two vectors alternating
mixVectors <- function(x,y){
  unlist(c(rbind(x, y)) )
}