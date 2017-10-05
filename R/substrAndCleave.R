substr.start <- function(x,n){
  substr(x,1,n)
}

substr.end <- function(x,n){
  x.length <- nchar(x)
  substr(x,x.length-n+1, x.length)
}

cleave.start <- function(x,n){
  x.length <- nchar(x)
  substr(x,n+1, x.length)
}

cleave.end <- function(x,n){
  x.length <- nchar(x)
  substr(x,1,x.length-n)
}