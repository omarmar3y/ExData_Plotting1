download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip','data')
unzip('data')
data <- read.table('household_power_consumption.txt',sep = ';',header = T)
data$Date <- as.Date(data$Date,format = '%d/%m/%Y')
for (i in 3:9){data[,i]<- as.numeric(data[,i])}
subdata <- data[(data$Date == as.Date('2007-02-01')|data$Date == as.Date('2007-02-02')),]
library(tidyr)
subdata <- unite(subdata,timedate,Date,Time)
write.csv(subdata,'clean_data.csv',)
