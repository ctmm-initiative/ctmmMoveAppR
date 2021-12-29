library('move')
library('lubridate')

#Select year example
#The last parameter with the name data is the result of the previous app
#   -> Should be removed if no data should be provided from previous app
rFunction = function(year, data) {
  # data[year(data@timestamps) == year]
  # this line doesn't work with input.rds, can work with input2.rds
  data <- data[year(data@timestamps) == year]
  # browser()
  pdf("hello_world.pdf")
  plot(data,main="Hello World!")
  dev.off()
  
  return(data)
}
