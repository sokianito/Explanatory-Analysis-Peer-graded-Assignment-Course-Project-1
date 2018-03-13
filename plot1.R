getwd()
setwd("C:/Users/fried/Desktop")

household <- read.table("./data/household_power_consumption.txt", sep = ";", header =  TRUE, stringsAsFactors = FALSE, dec = "." )
## subset the data 
sub_data <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]

##plot
sub_data$Global_active_power <- as.numeric(sub_data$Global_active_power)
hist(sub_data$Global_active_power  , col = "red", xlab = "GLOBAL ACTIVE POWER (kilowatts) ",
     main = "Global Active Power")

## 
dev.copy(png, "plot1.png" )
dev.off()

