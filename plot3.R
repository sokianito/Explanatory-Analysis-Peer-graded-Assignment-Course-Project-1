setwd("C:/Users/fried/Desktop")

household <- read.table("./data/household_power_consumption.txt", sep = ";", header =  TRUE, stringsAsFactors = FALSE, dec = "." )




## subset the data 
sub_data <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]

globalactpower <- as.numeric(sub_data$Global_active_power)
datetime <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(sub_data$Sub_metering_1)
subMetering2 <- as.numeric(sub_data$Sub_metering_2)
subMetering3 <- as.numeric(sub_data$Sub_metering_3)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.copy(png, "plot2.png" )
dev.off()

dev.copy(png, "plot4.png" )
dev.off()
