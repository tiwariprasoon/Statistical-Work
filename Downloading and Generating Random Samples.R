#
Data= read.csv('Data.csv')
Pre= sample(Data$Pre,50, replace = T)
Post= sample(Data$Post,50, replace = T)


#Hypothesis Testing Single Population

install.packages('BSDA')
library('BSDA')

z.test(Pre, mu=4.5, alternative = 'two.sided', conf.level = .95,sigma.x = sd(Data$Pre))

qnorm(p=.05/2,lower.tail = T)

mean(Data$Pre)
###Hypothesis Testing Single tailed Design
z.test(Pre, mu=4.5, alternative = 'greater', conf.level = .95,sigma.x = sd(Data$Pre))

z.test(Pre, mu=4.5, alternative = 'less', conf.level = .95,sigma.x = sd(Data$Pre))
qnorm(p=.05,lower.tail = T)

####### Hypothesis Testing Using t test
t.test(Pre, mu=4.5, alternative = 'two.sided', conf.level = .95)
DOF=length(Pre)-1
qt(p=0.05/2,df=DOF,lower.tail = T)



### Post Z TEst
z.test(Post, mu=4.5, alternative = 'two.sided', conf.level = .95,sigma.x = sd(Data$Post))
qnorm(p=.05/2,lower.tail = F)

z.test(Post, mu=4.5, alternative = 'greater', conf.level = .95,sigma.x = sd(Data$Post))
mean(Data$Post)


##Analyze Pre and Post Z TEst

z.test(Pre,Post, mu=4.5, alternative = 'two.sided', conf.level = .95,sigma.x = sd(Data$Pre),sigma.y = sd(Data$Post))

z.test(Pre,Post, mu=4.5, alternative = 'greater', conf.level = .95,sigma.x = sd(Data$Pre),sigma.y = sd(Data$Post))
z.test(Pre,Post, mu=4.5, alternative = 'less', conf.level = .95,sigma.x = sd(Data$Pre),sigma.y = sd(Data$Post))


mean(Data$Pre)-mean(Data$Post)

##Analyze Pre and Post T TEst
t.test(Pre,Post,  alternative = 'two.sided', conf.level = .95)
t.test(Pre,Post,  alternative = 'greater', conf.level = .95)
t.test(Pre,Post,  alternative = 'less', conf.level = .95)
mean(Data$Pre)-mean(Data$Post)


##########HYpothesis Testing Using Binomial Distribution
### Pre Sample Data with Single Sample Test Pre Data

Pre_bino=ifelse(Pre<4.5 ,0,1)

prop.test(sum(Pre_bino),length(Pre),conf.level = .95, alternative = 'two.sided')
qchisq(.95,1)

prop.test(sum(Pre_bino),length(Pre),conf.level = .95, alternative = 'greater')

prop.test(sum(Pre_bino),length(Pre),conf.level = .95, alternative = 'less')

### Post Sample Data with Single Sample Test Post Data

Post_bino=ifelse(Post<4.5 ,0,1)

prop.test(sum(Post_bino),length(Post),conf.level = .95, alternative = 'two.sided')
qchisq(.95,1)

prop.test(sum(Post_bino),length(Post),conf.level = .95, alternative = 'greater')

prop.test(sum(Post_bino),length(Post),conf.level = .95, alternative = 'less')
