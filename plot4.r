plot4 <- function(){
  consumption <- dataPrepare()
  png("plot4.png")
  par(mfrow = c(2,2))
  plot(consumption$Date, consumption$Global_active_power, type = "l", 
       xlab = "", ylab = "Global active power (kilowatts)")
  plot(consumption$Date, consumption$Voltage, type = "l", 
       xlab = "datetime", ylab = "Voltage")
  plot(consumption$Date, consumption$Sub_metering_1, type = "l", col = "black",
       xlab = "", ylab = "Energy sub metering")
  lines(consumption$Date, consumption$Sub_metering_2, col = "red")
  lines(consumption$Date, consumption$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metring_3"),
         lty = c(1,1,1), col = c("black", "red", "blue"))
  plot(consumption$Date, consumption$Global_reactive_power, type = "l", 
       xlab = "datetime", ylab = "Global_reactive_power")
  dev.off()
}