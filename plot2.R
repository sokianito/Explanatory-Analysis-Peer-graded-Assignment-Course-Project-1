setwd("C:/Users/fried/Desktop")

household <- read.table("./data/household_power_consumption.txt", sep = ";", header =  TRUE, stringsAsFactors = FALSE, dec = "." )




## subset the data 
sub_data <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]

globalactpower <- as.numeric(sub_data$Global_active_power)
datetime <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

plot(datetime, globalactpower , type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, "plot2.png" )
dev.off()
