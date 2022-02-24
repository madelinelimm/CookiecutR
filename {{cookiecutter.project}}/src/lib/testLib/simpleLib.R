# Simple test function that takes in a and b then return the sum
# note that adding arrays in R works differently from python and does not concatenates the array


SimpleTestFunction <- function(a1, b1){
  # main function
  test <- function(a1, b1){
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
  # try Catch loop
  tryCatch(
    expr = {
      res <- test(a1,b1)
      return(res)
    },
    error = function(e){
      message(e)
      return('Error in SimpleTestFunction, please try again!')
    },
    warning = function(w){
      message(w)
      return('Warning in SimpleTestFunction, please try again!')
    },
    finally = {
      message(' ')
    }
  )
}


# could uncomment and test by clicking on "Source"
# print(SimpleTestFunction(1, 2))
# print('testing..')
# print(SimpleTestFunction(1, '1'))
# print('testing again...')
# print(SimpleTestFunction(1, a))
# print(SimpleTestFunction(c(1,3,4), c(1,2)))
# print('testing once more')
