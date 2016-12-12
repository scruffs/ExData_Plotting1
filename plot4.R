plot4 <- function() {
      
      png(filename = "plot4.png",
          width = 480, height = 480)
      par(mfcol = c(2,2))
      
      plot(energy$comp_date, energy$Global_active_power, 
           type = "l", 
           ylab = "Global Active Power (kilowatts)", 
           xlab = "")
      
      plot(energy$comp_date, energy$Sub_metering_1, 
                 type = "l", 
                 ylab = "Energy sub metering", xlab = "")
            points(energy$comp_date, 
                   energy$Sub_metering_2, type = "l", 
                   col = "red")
            points(energy$comp_date, 
                   energy$Sub_metering_3, type = "l", 
                   col = "blue")
            legend("topright", 
                   legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                   col = c("black", "red","blue"), 
                   lty = 1,
                   bty = "n")
      
      plot(energy$comp_date, energy$Voltage,
           type = "l",
           ylab = "Voltage", 
           xlab = "datetime")
      
      plot(energy$comp_date, energy$Global_reactive_power, 
           type = "l",
           ylab = "Global_reactive_power",
           xlab = "datetime")
      dev.off()
}
      
      