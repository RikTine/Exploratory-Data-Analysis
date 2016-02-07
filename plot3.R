# This file creates plot3 described in the Coursera Exploratory Data 
# Analysis Course Project 1 page. The plot is a line graph of sub-metering
# data collected during February 1-2, 2007 saved in .png format.

data <- read.table("/Users/douglasburns/Documents/Home/Douglas/Coursera/Exploratory Data Analysis/household_power_consumption.txt", 
                   header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
ntime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), 
                  "%d/%m/%Y %H:%M:%S")
png(filename = "plot3.png")
plot(ntime, data$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering", col = "gray5")
lines(ntime, data$Sub_metering_3, col = "blue")
lines(ntime, data$Sub_metering_2, col = "red")
legend("topright", lty = c(1, 1, 1), col = c("gray5", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
