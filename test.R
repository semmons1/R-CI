library(testthat)
test_that(context("Correct distribution of random numbers", {
  x <- boxMuller(10000)
  y <- rnorm(10000)
  pv <- ks.test(x,y)$p.value
  # fail to reject null hypothesis 
  expect_equal(pv > 0.05, TRUE)
}) 