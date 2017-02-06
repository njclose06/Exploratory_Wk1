ElecData <- read.table("exdata/household_power_consumption_trunc.txt", header=TRUE, sep = ";", na.strings = "?")

png("plot4.png", 480, 480)
par(mfrow=c(2,2), mar=c(5,4,2,2))
plot(ElecData$Global_active_power, type ="l", xlab = "", ylab ="Global Active Power", xaxt="n")
axis(1,at=c(0,1440,2880),labels=c("Thu", "Fri", "Sat"))

plot(ElecData$Voltage, type ="l", xlab = "datetime", ylab ="Voltage", xaxt="n")
axis(1,at=c(0,1440,2880),labels=c("Thu", "Fri", "Sat"))

plot(ElecData$Sub_metering_1, type ="l", xlab = "", ylab ="Energy sub metering", xaxt="n")
points(ElecData$Sub_metering_2, type ="l", col="red")
points(ElecData$Sub_metering_3, type ="l", col = "blue")

axis(1,at=c(0,1440,2880),labels=c("Thu", "Fri", "Sat"))

legend("topright", c("Sub-metering_1","Sub-metering_2","Sub-metering_3"),col = c("black", "red","blue"),lty = c(1,1,1), bty = "n")

plot(ElecData$Global_reactive_power, type ="l", xlab = "datetime", ylab ="Global_reactive_power", xaxt="n")
axis(1,at=c(0,1440,2880),labels=c("Thu", "Fri", "Sat"))

dev.off()