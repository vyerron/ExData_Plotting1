plot2 <- function(){
  consumption <- dataPrepare()
  png("plot2.png")
  plot(consumption$Date, consumption$Global_active_power, 
       xlab = "", ylab = "Global active power (kilowatts)", type = "l")
  ##lines(consumption$Date, consumption$Global_active_power)
  dev.off()
}