library(testthat)
options(mypkg.connection = stdin())

ReadInteger <- function()
{
  n <- readLines(con = getOption("mypkg.connection"), n = 1)
  cat("\n")
  return(as.integer(n))
}
print(ReadInteger())

test_that("input",{
  f<-file()
  options(mypkg.connection = f)
  ans <- paste(c(88, 21, 23), collapse =  "\n")
  write(ans, f)
  #print(ReadInteger())
  #print(ReadInteger())
  #print(ReadInteger())
  expect_equal(ReadInteger(),88)
  expect_equal(ReadInteger(), 21)
  expect_equal(ReadInteger(), 23)
  
  options(mypkg.connection = stdin())
  
  close(f)
})
