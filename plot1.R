#Load data
source("loaddata.R")

#make a hist plot
hist(ans$Global_active_power,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")

#save to a png file
dev.copy(png,file="plot1.png", width = 480, height = 480)
dev.off()