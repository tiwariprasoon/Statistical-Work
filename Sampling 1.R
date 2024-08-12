#simple Sampling 1

sample(Data$Pre,50, replace = T)
set.seed(51)

Pre= sample(Data$Pre,50, replace = T)
Post= sample(Data$Post,50, replace = T)

summary(Pre)
summary(Post)

library(statip)
head(mfv(Pre))
head(mfv(Post))

quantile(Pre ,seq(0,1 ,.20))
quantile(Post,seq(0,1 ,.20))
