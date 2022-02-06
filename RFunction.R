# TODO libary need to match appspec.json

library('move')
library(ctmm)

# TODO data have to be moveStack, don't change copilot-sdk, always load moveStack and make conversion here instead of there.
# get data. for outlie it should only take one individual, select one individual in previous step, so this will be one animal moveStack
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
  # expecting one animal moveStack, should drop to single telemetry object
  tele <- as.telemetry(data)
  res <- outlie(tele, plot = FALSE)
  
  return(res)
}
