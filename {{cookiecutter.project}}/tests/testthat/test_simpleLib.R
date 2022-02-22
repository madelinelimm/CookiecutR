# test the function in src/lib/testLib/simpleLin.R

test_that('Sum of a and b', {
  source('../../src/lib/testLib/simpleLib.R')
  expect_error(SimpleTestFunction(1, '1'), "non-numeric argument to binary operator")
  expect_warning(SimpleTestFunction(c(1,3,4), c(1,2)), 'longer object length is not a multiple of shorter object length')
  
  expect_equal(SimpleTestFunction(1, 2), 3)
  expect_equal(SimpleTestFunction('1', '1'), '11')
  expect_equal(SimpleTestFunction(c(1,3,4), c(2)), c(3, 5, 6))
})


