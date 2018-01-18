workspaceSize <- function(){
  size <- 0
  for (x in ls(envir=.GlobalEnv) ){
    thisSize <- object.size(get(x))
    size <- size + thisSize
    message(x, " = ", appendLF = F); print(thisSize, units='auto')
  }
  message("total workspace is ",appendLF = F); print(size, units='auto')
}