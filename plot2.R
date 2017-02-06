ElecData <- read.table("exdata/household_power_consumption_trunc.txt", header=TRUE, sep = ";", na.strings = "?")

png("plot2.png", 480, 480)
plot(ElecData$Global_active_power, type ="l", xlab = "", ylab ="Global Active Power (kilowatts)", xaxt="n")

axis(1,at=c(0,1440,2880),labels=c("Thu", "Fri", "Sat"))

dev.off()
