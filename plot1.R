#loading the data using the function from the load_data.R file
source("load_data.R")
data <- load_data()

#save histogram of Global_active_power
png("plot1.png", height=480, width=480, bg = "transparent")

hist(data$Global_active_power,main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.off()
