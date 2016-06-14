library(dplyr)

#loading data
e=read.table("./data/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

#Change factor to char Easy to change to Date
ee = mutate(e,Date=as.character(Date),Time=as.character(Time))

#choose the data
ans = ee[ee$Date=="1/2/2007"|ee$Date=="2/2/2007",]

#calc the Time
ans$Date <- as.Date(ans$Date, format="%d/%m/%Y")
ans$Time = strptime(paste(ans$Date, ans$Time), format="%Y-%m-%d %H:%M:%S")