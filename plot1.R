# This file creates plot1 described in the Coursera Exploratory Data 
# Analysis Course Project 1 page. The plot is a histogram of Global
# Active Data collected during February 1-2, 2007 saved in .png format

data <- read.table("/Users/douglasburns/Documents/Home/Douglas/Coursera/Exploratory Data Analysis/household_power_consumption.txt", 
                   header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png(filename = "plot1.png")
hist(data$Global_Active_Power, col = "red", 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
