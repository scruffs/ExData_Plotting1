library(dplyr)
library(data.table)
library(lubridate)

## Make a temporary file and download the zip file to it.
temp <- tempfile()
downloadURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(downloadURL,temp)

## Define a column class to convert to the dtae to the correct format
setClass("firstDate")
setAs("character","firstDate", function(from) as.Date(from, format="%d/%m/%Y"))

## Define the column classes for the file
col_classes = c("firstDate", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")

## Unzip the file and load it into a table. This sets the correct NA values.
energy <- read.table(unz(temp, "household_power_consumption.txt"), 
                     header = TRUE, 
                     sep = ";",
                     na.strings = "?",
                     colClasses = col_classes)

## Remove all dates that are not the required days.
energy <- filter(energy, Date == "2007-02-01" | Date == "2007-02-02")
energy <- mutate(energy, comp_date = ymd_hms(paste(Date, Time)))

## Unlink and remove the temp file.
unlink(temp)
rm(temp)