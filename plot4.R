#Load data
source("loaddata.R")

#define the mfrow
par(mfrow=c(2,2))

#plot1
plot(ans$Time,ans$Global_active_power,xlab="",ylab="Global Active Power",type="l")

#plot2
plot(ans$Time,ans$Voltage,xlab = "datetime",ylab="Voltage",type="l")

#plot3
plot(ans$Time,ans$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(ans$Time,ans$Sub_metering_2,col="red")
lines(ans$Time,ans$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1), col=c("black","red", "blue"))

#plot4
plot(ans$Time,ans$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power",cex.lab=0.7, cex.axis=0.8)

#save to a png file
dev.copy(png,'plot4.png',  width = 480, height = 480)
dev.off()
