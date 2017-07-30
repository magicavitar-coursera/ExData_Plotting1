library(lubridate)
data <- read.csv("household_power_consumption.txt", 
                 sep=";",
                 col.names = c("date",
                               "time",
                               "global.active.power",
                               "global.reactive.power",
                               "voltage",
                               "global.intensity",
                               "sub.metering.1",
                               "sub.metering.2",
                               "sub.metering.3")
)

data$datetime <- dmy_hms(paste(data$date, data$time, sep=" "))


png("plot2.png")

with(data, plot(datetime, global.active.power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()
