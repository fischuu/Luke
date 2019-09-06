final <- function(name, env=.GlobalEnv){
  if(!bindingIsLocked(name, env)){
    lockBinding(name, env)
  } else {
    stop("Variable", name, "is already declared as 'final'!")
  }
}