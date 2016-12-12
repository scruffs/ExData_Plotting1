plot3 <- function() {
      
      png(filename = "plot3.png",
          width = 480, height = 480)
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
             lty = 1)
      dev.off()
}