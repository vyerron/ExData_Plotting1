dataPrepare <- function(){
  consumption <- read.csv("household_power_consumption.txt", 
                          sep = ";", na.strings = "?")
  consumption$Date <- strptime(paste(consumption$Date, consumption$Time), 
                               format = "%d/%m/%Y %H:%M:%S")
  consumption$Time <- NULL
  firstday <- strptime("2007-02-01 00:00:00", format = "%Y-%m-%d %H:%M:%S")
  secondday <- strptime("2007-02-03 00:00:00", format = "%Y-%m-%d %H:%M:%S")
  consumption <- subset(consumption, Date >= firstday & Date < secondday)
  consumption
}