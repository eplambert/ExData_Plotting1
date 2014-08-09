## This function takes in specified dates of interest 'DOF'
## DOF must be in the form of "2007-02-01" or c("2007-02-01", "2007-02-02", etc.)
## This function automatically loads household_power_consumption.txt data
## This function returns a data frame that has been subsetted by the users DOF

datesOfInterest <- function(DOF) {
        ## Must read in a large text file with 2075259 rows and 9 columns
        data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, nrows = 2075259, colClasses = c("character", "character", rep("numeric",7)), na="?")
        data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")         ## places date and time in the Time column
        data$Date <- as.Date(data$Date, "%d/%m/%Y")
        dates <- DOF           ## Dates of interest
        dates <- as.Date(dates, "%Y-%m-%d")             ## convert to a "Date"

        ## subset data bases on dates of interest
        data.subset <- subset(data,Date %in% dates)
        return(data.subset)
}
