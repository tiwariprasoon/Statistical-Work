## Confidence interval estimation
install.packages("distributions3")
library('distributions3')

#Using Z Statistic

mean(Pre)

a=0.05
1-a
Norm=Normal(0,1)
Norm$mu
Norm$sigma
plot(Norm)

SE=sd(Data$Pre)/sqrt(length(Pre))
z= quantile(Data$Pre,1-a/2)

MOE= z*SE

lower = mean(Pre)- MOE
upper = mean(Pre)+ MOE
mean(Data$Pre)





#Using T Statistic

DOF=length(Pre)-1

t=qt(p=a/2,df=DOF,lower.tail = F)
SE=sd(Pre)/sqrt(length(Pre))
MOE=t*SE
lower=mean(Pre)-MOE
upper=mean(Pre)+MOE
lower
upper
mean(Data$Pre)


plot(density(rnorm(100)), col='red', lwd=3, main='')
lines(density(rt(100,df=10)), col='blue', lwd=3, main='')

legend('topleft',c('Norm','t-dist'),fill =c('red','blue'))



############### Short TRick of Confidence Interval
t.test(Pre)
###linear model or regression
confint(lm(Pre~1))



