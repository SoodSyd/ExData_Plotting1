epcon<-read.csv2("household_power_consumption.txt",na.strings="?",dec=".",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
epcons<-subset(epcon,Date == "2/2/2007" | Date == "1/2/2007")
x<-epcons[["Global_active_power"]]
png(filename="plot1.png")
hist(x,xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red",main="Global Active Power")
dev.off()