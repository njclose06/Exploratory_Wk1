ElecData <- read.table("exdata/household_power_consumption_trunc.txt", header=TRUE, sep = ";", na.strings = "?")

png("plot1.png", 480, 480)
hist(ElecData$Global_active_power, main ="Global Active Power", col ="red3", ylim =c(0, 1200), xlab ="Global Active Power (kilowatts)")

dev.off()