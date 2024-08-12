#Mean median mode

#mean
mean(Data$Pre)
m1= mean(Data$Pre)
m1

mean(Data$Post)
m2=mean(Data$Post)
m2

mean(Data$Post, na.rm = T)
#median


median(Data$Pre)
m1=median(Data$Pre)

median(Data$Post)
m2=median(Data$Post)


#mode

install.packages('statip')
library('statip')

mfv(Data$Pre)
head(mfv(Data$Pre),10)
head(mfv(Data$Post),10)

tail(mfv(Data$Post),10)

#quantile

quantile(Data$Pre)

quantile(Data$Post)


quantile(Data$Pre,seq(0,1,0.30))
quantile(Data$Post,seq(0,1,0.30))
