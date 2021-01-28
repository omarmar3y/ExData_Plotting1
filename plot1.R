cdata <- read.csv('clean_data.csv')

with(data = cdata,hist(Global_active_power,col = 'red',xlab = 'Global Acive Power (kilowatts)'))
dev.copy(png,file = 'plot1.png')
dev.off()
