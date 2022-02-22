# Simple test function that takes in a and b then return the sum
# note that adding arrays in R works differently from python and does not concatenates the array



SimpleTestFunction <- function(a1, b1){
  if (is.character(a1) & is.character(b1)){
    return(paste(a1, b1, sep = ''))
  }
  else if (is.numeric(a1) & is.numeric(b1)){
    return(a1 + b1)
  }
  else{
    return(a1 + b1)
  }
}
