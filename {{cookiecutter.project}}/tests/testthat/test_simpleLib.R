# test the function in src/lib/testLib/simpleLib.R
library(testthat)

test_that('Sum of a and b', {
  source('../../src/lib/testLib/simpleLib.R')
  
  expect_error(SimpleTestFunction(1, '1'), "non-numeric argument to binary operator")
  expect_error(SimpleTestFunction(1, a), "object 'a' not found") 
  #expect_warning(SimpleTestFunction(c(1,2,3), c(1, 2)), "longer object length is not a multiple of shorter object length")

  expect_equal(SimpleTestFunction(1, 2), 3)
  expect_equal(SimpleTestFunction('1', '1'), '11')
  expect_equal(SimpleTestFunction(c(1,3,4), c(2)), c(3, 5, 6))
})


