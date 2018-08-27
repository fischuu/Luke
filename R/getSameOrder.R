# Order function, if one matrix should be brought into the order of another one
getSameOrder <- function(x,y){
  newPos <- numeric(length(y))
  for(i in 1:length(y)){
    newPos[i] <- which(y[i]==x)
  }
  newPos
}