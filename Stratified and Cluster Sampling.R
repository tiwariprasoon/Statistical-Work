######Systematic Sampling

install.packages('TeachingSampling')
library(TeachingSampling)

Syst_Sample =S.SY(1000,20)
length(Syst_Sample)
Syst_Sample

Pre= Data$Pre[Syst_Sample]

Syst_Sample =S.SY(1000,20)
Post= Data$Post[Syst_Sample]

summary(Pre)
summary(Post)
##############Stratified

install.packages("dplyr")
library(dplyr)

Data$Gender =as.factor(round(runif(1000,0,1),0))
Sample=Data%>%group_by(Gender)%>%sample_n(.,25)

Pre=Sample$Pre
Post=Sample$Post
summary(Pre)
summary(Post)

###################CLUSTER SAMPLING
install.packages("sampling")
library(sampling)


Data$dept= as.factor(round(runif(1000,1,50),0))

Data_Sample=cluster(Data,clustername = c('dept'),size = 10,method = 'srswor')
dim(Data_Sample)
levels(Data_Sample$dept)
Data_Sample$dept=droplevels(Data_Sample$dept)
levels(Data_Sample$dept)
final_Sample= Data_Sample%>%group_by(dept)%>%sample_n(size = 5)
dim(final_Sample)
