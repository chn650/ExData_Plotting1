#loading the data using the function from the load_data.R file
source("load_data.R")
data <- load_data()


#save plot of datetime vs. Global_active_power
png("plot2.png", height=480, width=480, bg = "transparent")

plot(data$datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
