boxMuller <- function(size) {
  
  # generate uniform random variables
  u <- runif(size)
  v <- runif(size)
  
  # transform into gaussian random variables
  x <- rep(0,size)
  for (i in 1:size){
    x[i] = sqrt(-2*log(u[i]))*cos(2*pi*v[i])
  }
  
  return(x) 
}