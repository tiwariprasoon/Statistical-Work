var(Pre)
var(Pre)

range(Pre)
range(Post)

sd(Pre)
sd(Post)

mad(Pre)
mad(Post)
##############

plot(density(Pre),col=('red'), main = 'Density Graph',xlab = 'data',xlim  = c(1,7) ,ylim=c(0,.8) ,lwd= 3)

Example_Pre =rnorm(1000,mean = mean(Pre),sd = sd(Pre)) 
lines(density(Example_Pre),col= 'blue',lwd=3)
#######################

plot(density(Post),col=('Green'), main = 'Density Graph',xlab = 'data',xlim  = c(1,7) ,ylim=c(0,.8) ,lwd= 3)

Example_Post =rnorm(1000,mean = mean(Post),sd = sd(Post)) 
lines(density(Example_Post),col= 'blue',lwd=3)

##################
plot(density(Pre),col=('red'), main = 'Density Graph',xlab = 'data',xlim  = c(1,7) ,ylim=c(0,.8) ,lwd= 3)

lines(density(Post),col= 'blue',lwd=3)
legend('topright',c('Pre','Post'),fill = c('red','blue'))
