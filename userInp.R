StringUse <- function()
{
  cat("Please enter a string, and I perform basic function calling!")
  
  ##readLines is the only function that works with this R console pasting
  ##scenario, I don't believe I can do the same with say, askUser,
  ##without extensive modification. 
  ##I'll have to ask more about askUser later, as it seems to be the 
  ##biggest tripping point for user input (I.E. "c", "c", "c").
  ##con just stand for connection, but don't change the wording, otherwise
  ##readLines freaks out. 
  
  ##There is an option to use command line arguments for a function like askUSer,
  ##but this would also require modifying both askUser and QAQCPostConstruction
  ##and will not maintain the user friendly nature of the R console that 
  ##I believe most WEST staff are accustomed to. 
  
  ans <- readLines(con = getOption("mypkg.connection"), n = 1)
  cat("\n")
  cat("\n")
  if(ans == "y")
  {
    ConfirmSuccess()
  }
  else
  {
    ConfirmNothing()
  }
  
}

ConfirmSuccess <- function()
{
  cat("It works!")
}

ConfirmNothing <- function()
{
  cat("Great! An argument has been passed, but it's not the right one")
}