#Load data
source("loaddata.R")

#plot the Sub_metering_1 and define the xlab and ylab
plot(ans$Time,ans$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")

#plot Sub_metering_2 and Sub_metering_3
lines(ans$Time,ans$Sub_metering_2,col="red")
lines(ans$Time,ans$Sub_metering_3,col="blue")

#add legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1), col=c("black","red", "blue"))

#save to a png file
dev.copy(png,'plot3.png',  width = 480, height = 480)
dev.off()
