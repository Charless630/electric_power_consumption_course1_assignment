## Install the necessary packages

install.packages("data.table")
library(data.table)

## Load the dataset

data <- fread("household_power_consumption.txt", na.strings = "?", sep=";")

## Create a new column that combines the Date and Time columns into a single datetime column

data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

## Filter data for the dates of 2007-02-01 and  2007-02-02

data <- data[(DateTime >= as.POSIXct("2007-02-01") & DateTime < as.POSIXct("2007-02-03"))]
