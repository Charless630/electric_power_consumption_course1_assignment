## Creating a histogram based on the global_active_power column.

png("plot1.png")

par(mar = c(6, 6, 4, 4), mfrow = c(1, 1))

hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()