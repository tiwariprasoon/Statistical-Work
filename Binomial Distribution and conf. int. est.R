#####Binomial Distribution 
Pre_bino=ifelse(Pre<4.5 ,0,1)
sum(Pre_bino)/length(Pre)


prop.test(sum(Pre_bino),length(Pre),conf.level = .95)

Population_pre =ifelse(Data$Pre<4.5, 0,1)
sum(Population_pre)/length(Data$Pre)

#########POst Sample Data 
Post_bino=ifelse(Post<4.5,0,1)
sum(Post_bino)/length(Post)


prop.test(sum(Post_bino),length(Post),conf.level = .95)
Population_post=ifelse(Data$Pre<4.5,0,1)
sum(Population_post)/length(Data$Pre)
# 0.06277009 0.27356376
#0.6151339 0.8647833



