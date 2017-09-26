# This is the untable function that reverses the table command

untable <- function(x){
  rep(as.numeric(names(x)),x)
}