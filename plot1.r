plot1 <- function() {
  consumption <- dataPrepare()
  png("plot1.png")
  hist(consumption$Global_active_power, col="red", main = "Global active power", 
       xlab = "Global active power (kilowatts)")
  dev.off()
}