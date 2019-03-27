pwGenerator=function(pwlength){
  abc<- letters
  ABC<- toupper(letters)
  numerics<- 0:9
  special<- c('!', '?', '$', '%', '&', '/', '=' ,'?')
  basis<- c(abc, ABC, numerics, special)
  pw<- sample(basis, pwlength, replace = TRUE)
  paste(pw, collapse="")
}