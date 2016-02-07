# This file creates plot4 described in the Coursera Exploratory Data 
# Analysis Course Project 1 page. The figure includes four plots; 
# the upper left is the same as the project's plot2, the lower left
# is the same as the project's plot3, the upper right is a line graph of 
# voltage versus day of the week, and the lower right is a line graph
# of global active power versus day of the week.

# Reading data used in the graphs
data <- read.table("/Users/douglasburns/Documents/Home/Douglas/Coursera/Exploratory Data Analysis/household_power_consumption.txt", 
                   header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Setting plot frames
par(mfrow = c(2, 2))

# Setting plot device
png(filename = "plot4.png")

# Plot 1 development
ntime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), 
                  "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
plot(ntime, globalActivePower, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

# Plot 2 development
voltage <- as.numeric(data$Voltage)
plot(ntime, voltage, type = "l", xlab = "datetime", 
     ylab = "Voltage")

# Plot 3 development
plot(ntime, data$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering", col = "gray5")
lines(ntime, data$Sub_metering_3, col = "blue")
lines(ntime, data$Sub_metering_2, col = "red")
legend("topright", lty = c(1, 1, 1), col = c("gray5", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       cex = 0.75, bty = "n")

# Plot 4 development
plot(ntime, data$Global_reactive_power, type = "l", xlab = "datetime", 
    ylab = "Global_reactive_power", col = "black")

dev.off()
