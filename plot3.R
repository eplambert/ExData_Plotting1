## This code uses the function Dates of interest to subset dates of interest
DOF <- c("2007-02-01", "2007-02-02")
data <- datesOfInterest(DOF)

png("plot3.png", width=480, height=480)
plot(data$Sub_metering_1, type="l", axes=FALSE, ylab="Energy sub metering", xlab=NA)
lines(data$Sub_metering_2,col="red", ylab=NA, xlab=NA)
lines(data$Sub_metering_3,col="blue", ylab=NA, xlab=NA)
ticks <- c(1, 1441, 2881)
axis(side=1, at=ticks, labels= c("Thu","Fri","Sat"))
axis(side=2)
box()
legend("topright", col=c("black","red","blue"), 
                        legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                        lty=c(1,1,1))

dev.off()
