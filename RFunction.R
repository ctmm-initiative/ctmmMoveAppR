library('move')
library('lubridate')

#Select year example
#The last parameter with the name data is the result of the previous app
#   -> Should be removed if no data should be provided from previous app
rFunction = function(year, data) {
  data[year(data@timestamps) == year]
}