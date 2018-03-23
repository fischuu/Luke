table.line <- function(x){
  x.table <- table(x)
  x.names <- names(x.table)
  tmp <- paste(c(rbind(x.names,paste(as.vector(x.table),",",sep=""))), collapse=":")
  gsub(",:",", ",tmp)
}