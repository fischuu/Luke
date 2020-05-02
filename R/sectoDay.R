sectoDay <- function(n){
  day <- n %/% (24 * 3600) 
  n <-  n %% (24 * 3600) 
  
  hour <- n %/% 3600 
  n <- n %% 3600 
  
  minutes <- n %/% 60 
  n <- n %% 60
  
  seconds <-  n 
  
  out <- c()
  if(day > 0 ){
    out <- paste(day,"-",sprintf("%02d", hour),":",sprintf("%02d", minutes),":",sprintf("%02d", seconds),sep="")
  } else {
    out <- paste(sprintf("%02d", hour),":",sprintf("%02d", minutes),":",sprintf("%02d", seconds),sep="")
  }
  out
} 