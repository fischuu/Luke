.onAttach <- function(libname, pkgname){
  packageStartupMessage("This is Luke version ", utils::packageVersion("Luke"))
}
