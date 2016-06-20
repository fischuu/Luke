mergeVectors <- function(x,y){
  names.x <- names(x)
  names.y <- names(y)
  x.df <- data.frame(x=x)
  y.df <- data.frame(y=y)
  x.df$ID <- names.x
  y.df$ID <- names(y)
  merge(x.df,y.df,by="ID")
}