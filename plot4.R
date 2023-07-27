## Creating 4 line graph in 1

png("plot4.png", height=559, width = 655)

par(mar=c(5,5,2,2), mfrow=c(2,2))

## Plot 1

plot(data$DateTime, data$Global_active_power, type="n", xlab = " ", ylab = "Global Active Power")
lines(data$DateTime, data$Global_active_power)

## Plot 2

plot(data$DateTime, data$Voltage, type="l", xlab = "datetime", ylab = "Voltage")

## Plot 3

plot(data$DateTime, data$Sub_metering_1, type="n", xlab = " ", ylab = "Energy sub metering", col="#424242")
lines(data$DateTime, data$Sub_metering_1, col="#424242")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")

## Plot 4

plot(data$DateTime, data$Global_reactive_power, type="l", xlab = "datetime", ylab = "Global_reactive_power")

## Legend

legend("topright", lty = c(1,1,1), lwd = c(1,1,1), col=c("#424242", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 1.2, bty = "n")

dev.off()