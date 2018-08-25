# Exploratory Data Analysis Project 1: Plot 2 
# Princess Depeno

# Read data
file <- "C:/Users/ACER/Documents/Module 4 Course Project 1/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subsetting the necessary dataset for Plot 1; dates Feb 1 to Feb 2, 2007
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Convert dates and times
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot 2
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 