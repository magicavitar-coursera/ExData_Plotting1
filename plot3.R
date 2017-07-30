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

png("plot3.png")

with(data, {
  plot(datetime, sub.metering.1, type = 'n', xlab = "", ylab = "Energy sub Metering")
  lines(x = datetime ,y=sub.metering.1, col = "black")
  lines(x = datetime ,y=sub.metering.2, col = "red")
  lines(x = datetime ,y=sub.metering.3, col = "blue")
  legend("topright", 
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
         col=c("black","red","blue"), 
         lty=1)
})

dev.off()