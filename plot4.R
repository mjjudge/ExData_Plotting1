plot4 <- function() {
  par(mfrow=c(2,2))
  #First Plot
  plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  #Second Plot
  plot(df$timestamp,df$Voltage, type="l", xlab="datetime", ylab="Voltage")
  #Third Plot
  plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(df$timestamp,df$Sub_metering_2,col="red")
  lines(df$timestamp,df$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
  #Fourth Plot
  plot(df$timestamp,df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  #Create PNG of 480 x 480
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
}