# This file creates plot2 described in the Coursera Exploratory Data 
# Analysis Course Project 1 page. The plot is a line graph of Global
# Active Power for February 1-2, 2007 with the x-axis showing days of 
# the week. The graph is saved in .png format.

data <- read.table("/Users/douglasburns/Documents/Home/Douglas/Coursera/Exploratory Data Analysis/household_power_consumption.txt", 
                   header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
ntime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
png(filename = "plot2.png")
plot(ntime, globalActivePower, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off()
