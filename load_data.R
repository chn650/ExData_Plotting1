load_data <- function(){
        #read data
        data <- read.table("household_power_consumption.txt", sep =";", header=TRUE, na.strings = "?")
        
        #convert the Date and Time variables to Date/Time classes
        data$datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
        data$Date <- as.Date(data$Date, "%d/%m/%Y")
        
        #only use data from the dates 2007-02-01 and 2007-02-02
        data <- data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
}
