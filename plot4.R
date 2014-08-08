## This code uses the function Dates of interest to subset dates of interest
DOF <- c("2007-02-01", "2007-02-02")
data <- datesOfInterest(DOF)

png("plot4.png", width=480, height=480)
par(mfrow = c(2,2), mar=c(4,4,1.8,0.5))
## First Plot
plot(data$Global_active_power, type="l", axes=FALSE, ylab="", xlab=NA)
ticks <- c(1, 1441, 2881)
axis(side=1, at=ticks, cex.axis=0.7, labels= c("Thu","Fri","Sat"))
axis(side=2, cex.axis=0.7)
mtext("Global Active Power", side=2,line=2.2, cex=0.7)
box()

## second plot
plot(data$Voltage, type="l", axes=FALSE, ylab="", xlab="")
axis(side=1, at=ticks, cex.axis=0.7, labels= c("Thu","Fri","Sat"))
axis(side=2, cex.axis=0.7)
mtext("Voltage", side=2,line=2.2, cex=0.7)
mtext("datetime", side=1,line=2.2, cex=0.7)
box()

## Third Plot
plot(data$Sub_metering_1, type="l", axes=FALSE, ylab="", xlab=NA)
lines(data$Sub_metering_2,col="red", ylab=NA, xlab=NA)
lines(data$Sub_metering_3,col="blue", ylab=NA, xlab=NA)
axis(side=1, at=ticks, cex.axis=0.7, labels= c("Thu","Fri","Sat"))
axis(side=2, cex.axis=0.7)
mtext("Energy sub metering", side=2,line=2.2, cex=0.7)
box()
legend("topright", col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1,1), bty="n", cex=0.7)

## Fourth Plot
plot(data$Global_reactive_power, type="l", axes=FALSE, ylab="", xlab="")
axis(side=1, at=ticks, labels= c("Thu","Fri","Sat"), cex.axis=0.7)
axis(side=2, cex.axis=0.7)
mtext("Global_reactive_power", side=2,line=2.2, cex=0.7)
mtext("datetime", side=1,line=2.2, cex=0.7)
box()

dev.off()
