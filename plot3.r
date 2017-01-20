plot3 <- function(){
  consumption <- dataPrepare()
  png("plot3.png")
  plot(consumption$Date, consumption$Sub_metering_1, pch = "", 
       xlab = "", ylab = "Energy sub metering")
  lines(consumption$Date, consumption$Sub_metering_1, col = "black")
  lines(consumption$Date, consumption$Sub_metering_2, col = "red")
  lines(consumption$Date, consumption$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metring_3"),
         lty = c(1,1,1), col = c("black", "red", "blue"))
  dev.off()
}