# Exploratory Data Analysis Project 1: Plot 1 
# Princess Depeno

file <- "C:/Users/ACER/Documents/Module 4 Course Project 1/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# convert the date variable to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Subsetting the necessary dataset for Plot 1; dates Feb 1 to Feb 2, 2007
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Plotting Function
globalActivePower <- as.numeric(subSetData$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", ylab="Frequency", xlab="Global Active Power kilowatts")
png("plot1.png", width=480, height=480)
dev.off() 

#
