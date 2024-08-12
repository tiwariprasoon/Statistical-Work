#measures of shape 
install.packages('moments')
install.packages('tseries')
library('tseries')
library('moments')
library(tseries)
library(moments)

Data= read.csv('e:/r prac/Data.csv')


#skewness
Norm=rnorm(10000)

skewness(Data$Pre)
skewness(Data$Post)

#agostino test

agostino.test(Data$Pre)
agostino.test(Data$Post)

#kurtosis

kurtosis(Data$Pre)
kurtosis(Data$Post)

anscombe.test(Data$Pre)
anscombe.test(Data$Post)

#jarqe.bera test
jarque.bera.test(Data$Pre)
jarque.bera.test(Data$Post)

jarque.test(Data$Pre)
jarque.test(Data$Post)

#graphics

hist(Data$Pre)
hist(Data$Pre, probability = T)
lines(density(Data$Pre))
lines(density(Data$Pre),lwd=3 , col='blue')

plot(Data$Pre)
plot(Data$Pre,col='red')
