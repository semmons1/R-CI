library(testthat)
source("userInp.R")

context("Ensure that this new paste function is working properly:")

test_that("Input is being forced",{
  f <- file()
  options(mypkg.connection = f)
  
  ##If something besides 'y' has been entered in this paste function, the 
  ##argument will still be passed, but success will not be confirmed.
  ##This can also act as a 'answer stack". For example, if you wanted to enter
  ##'Y', and then 'n' into the same function, you can just do
  ##'paste(c('y','n')'
  
  ans <- paste(c("y"), collapse =  "\n")
  write(ans, f)
  
  ##Call the StringUse() function, to ensure that an argument is being passed
  ##appropriately
  cat(StringUse())
  
  
  ##Reset my stdin connection, and close the temp file
  options(mypkg.connection = stdin())
  close(f)
})