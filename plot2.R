plot2 <- function() {
      
      png(filename = "plot2.png",
          width = 480, height = 480)
      plot(energy$comp_date, energy$Global_active_power, 
           type = "l", 
           ylab = "Global Active Power (kilowatts)", 
           xlab = "")
      dev.off()
}