ElecData <- read.table("exdata/household_power_consumption_trunc.txt", header=TRUE, sep = ";", na.strings = "?")

png("plot3.png", 480, 480)
plot(ElecData$Sub_metering_1, type ="l", xlab = "", ylab ="Energy sub metering", xaxt="n")
points(ElecData$Sub_metering_2, type ="l", col="red")
points(ElecData$Sub_metering_3, type ="l", col = "blue")

axis(1,at=c(0,1440,2880),labels=c("Thu", "Fri", "Sat"))

legend("topright", c("Sub-metering_1","Sub-metering_2","Sub-metering_3"),col = c("black", "red","blue"),lty = c(1,1,1))
dev.off()
