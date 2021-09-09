class.table <- function(x, classes=NULL){
  if(is.null(classes)){
    out <- table(x)
  } else {
    out <- rep(0, length(classes))
    for(i in 1:length(classes)){
      out[i] <- sum(x==classes[i])
    }
    names(out) <- classes
  }
  out
}
