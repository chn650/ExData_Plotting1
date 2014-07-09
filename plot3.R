#loading the data using the function from the load_data.R file
source("load_data.R")
data <- load_data()


#save plot datetime vs. Sub_metering_1, Sub_metering_2 and Sub_metering_3
png("plot3.png", height=480, width=480, bg = "transparent")

plot(data$datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col = "blue")

#include legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

dev.off()
