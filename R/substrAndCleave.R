substr.start <- function(x,n){
  substr(x,1,n)
}

substr.end <- function(x,n){
  x.length <- nchar(x)
  substr(x,x.length-n+1, x.length)
}

cleave.start <- function(x,n=NULL,delim=NULL){
  if(is.null(n)) stop("Value for n is missing.")
  if(is.null(delim)){
    x.length <- nchar(x)
    out <- substr(x,n+1, x.length)  
  } else {
   out <- as.vector(sapply(x, function(x) paste(strsplit(x, delim)[[1]][1:n], collapse = delim)))
  }
  out
}

cleave.end <- function(x,n){
  x.length <- nchar(x)
  substr(x,1,x.length-n)
}
