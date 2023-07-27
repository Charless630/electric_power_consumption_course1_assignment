## Creating a linegraph based on the global_active_power and date.

png("plot2.png")

par(mar=c(6,6,4,4), mfrow=c(1,1))


plot(data$DateTime, data$Global_active_power, type="l", xlab = " ", ylab = "Global Active Power (kilowatts)")


dev.off()