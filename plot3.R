## Set Working Data to Data Location and Unzip from Zip File on Website Before Using This File

## Load Lubridate Package

library(lubridate)

## Open Data

fulldata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

## Coerce Date as Date Variable

fulldata$Date <- as.Date(fulldata$Date, format = "%d/%m/%Y")

## Select Data for February 1 and February 2, 2007 Only

data <- subset(fulldata, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Convert Date and Time Variables to Date

date_time <- paste(data$Date, data$Time)
data$Datetime <- ymd_hms(date_time)

## Remove Full Data and date_time Data Frames to Increase Computational Efficiency

rm(fulldata, date_time)

## Generate Plot Three (Line Graph of Energy Sub Metering)

png(filename = "plot3.png", width=480, height=480, units = "px")
plot(data$Datetime, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(data$Datetime, data$Sub_metering_1)
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_Metering_3"))
axis(2, lwd = 2)
dev.off()