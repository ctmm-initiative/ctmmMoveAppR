library('move')
library('lubridate')
library(ctmm)

# get data. for outlie it should only take one individual, select one individual in previous step
#The last parameter with the name data is the result of the previous app
#   -> Should be removed if no data should be provided from previous app
rFunction = function(data) {
  # data[year(data@timestamps) == year]
  # this line doesn't work with input.rds, can work with input2.rds
  # data <- data[year(data@timestamps) == year]
  # # browser()
  # pdf(file.path(Sys.getenv(x = "APP_ARTIFACTS_DIR", "."), "hello_world.pdf"))
  # plot(data,main="Hello World!")
  # dev.off()
  res <- outlie(data, plot = FALSE)
  
  return(res)
}
