## This code uses the function Dates of interest to subset dates of interest
DOF <- c("2007-02-01", "2007-02-02")
data <- datesOfInterest(DOF)

## Open a graphics device
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
