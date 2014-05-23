## A script to:
## Read the data and create a histogram with red bars

##
## Unzip and read in the file
##

# download and Unzip.R contains the below code
#
#
#library(downloader) 
#URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#zipFile <- "exdata_data_household_power_consumption.zip"
#download(URL, zipFile, mode="wb")
#powerConsumptionFile <- unzip(zipFile)

SourceClassificationCode <- "C:\\Users\\Alisonm\\Documents\\GitHub\\EXData_Plotting2\\Source_Classification_Code.rds"
summarySCC_PM25 <- "C:\\Users\\Alisonm\\Documents\\GitHub\\EXData_Plotting2\\summarySCC_PM25.rds"

zipFile <- "C:\\Users\\Alisonm\\Documents\\GitHub\\EXData_Plotting2\\exdata_data_NEI_data.zip"
#exDataFile <- unzip(zipFile)

#
# Read the first row to get a vector for the column names
# And to determine the first date/time in the file
#
SCC <- read.table(SourceClassificationCode, 
                     nrows=5, header=TRUE, sep = ";")

SCC

summarySCC <- read.table(summarySCC_PM25, 
                      nrows=5, header=TRUE, sep = ";")

summarySCC

#
# Create the histogram
#

png(filename = "plot1.png",
    width = 480,
    height = 480,
    restoreConsole = TRUE
    )


dev.off()
