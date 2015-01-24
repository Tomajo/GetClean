fedstats <-read.csv(file = 'fedstats.csv',sep=',', header=TRUE)
gdp <-read.csv(file = 'gdp.csv',sep=',', header=TRUE, skip=4, col.names=c('CountryCode','Ranking','Y1','Economy','US dollars','Y2','Y3','Y4','Y5','Y6'),stringsAsFactors = FALSE)
gdp<-gdp[,c(1,2,4,5)]
gdp<-gdp[1:190,]
gdp$Ranking<- as.numeric(gdp$Ranking)
mergedData = merge(gdp,fedstats,by = 'CountryCode')
mergedData=mergedData[with(mergedData, order(-Ranking)), ]