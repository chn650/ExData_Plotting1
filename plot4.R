#loading the data using the function from the load_data.R file
source("load_data.R")
data <- load_data()


#save multiple plots in one figure
png("plot4.png", height=480, width=480, bg = "transparent")


#2 plots per row and 2 plots per column
par(mfrow=c(2,2))

#first plot: datetime vs. Global_active_power
plot(data$datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")


#second plot: datetime vs. Voltage
plot(data$datetime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")


#third plot: datetime vs. Sub_metering_1, Sub_metering_2 and Sub_metering_3
plot(data$datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col = "blue")

#include legend without border 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, 
        col=c("black", "red", "blue"), bty = "n", cex=0.9)


#fourth plot: datetime vs. Global_reactive_power
plot(data$datetime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")


dev.off()
