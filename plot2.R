#Load data
source("loaddata.R")

#plot the data with the xlab and ylab
with(ans,plot(Time,Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l"))

#save to a png file
dev.copy(png,file="plot2.png", width = 480, height = 480)
dev.off()