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

png("plot1.png")

with(data, hist(global.active.power, xlab = 'Global Active Power (kilowatts)', main = "Global Active Power", col='red'))

dev.off()
