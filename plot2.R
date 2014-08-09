## This code uses the function Dates of interest to subset dates of interest
DOF <- c("2007-02-01", "2007-02-02")
data <- datesOfInterest(DOF)

png("plot2.png", width=480, height=480)
## Produce a line plot, Need to remake axes
## The assignment requests that the figure not have a title or a labelled x-axis. This is unusual!
plot(data$Global_active_power, type="l", axes=FALSE, ylab="Global Active Power (kilowatts)", xlab=NA)
ticks <- c(1, 1441, 2881)
axis(side=1, at=ticks, labels= c("Thu","Fri","Sat"))
axis(side=2)
box()
dev.off()
