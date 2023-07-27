## Creating a line graph based on the energy_sub_metering and date. Also adding legend.

png("plot3.png")

par(mar=c(6,6,4,4), mfrow=c(1,1))

plot(data$DateTime, data$Sub_metering_1, type="n", xlab = " ", ylab = "Energy sub metering", col="#424242")
lines(data$DateTime, data$Sub_metering_1, col="#424242")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")

legend("topright", lty = c(1,1,1), lwd = c(1,1,1), col=c("#424242", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = .8)

dev.off()

