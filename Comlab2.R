##1
set.seed(432)
x <- 1:6
px <- rep(1/6,6)
samp <- sample(x,60,replace = TRUE, prob = px)
#a
which (samp == 3)
#b
table(samp)
#####c hot question
#round() to get the value round up to certain decimal
round(table(samp)/60,3)
#d
#the mean from the data
m <- mean(samp)
#the theoritical mean
theo <- sum(x*px)
c(m,theo)
#e
barplot(table(samp),main = "60 throws")
#f
set.seed(432)
x <- 1:6
px.unfair <- c(rep(2/8,2),rep(1/8,4))
samp2 <- sample(x,60,replace = TRUE, prob = px)
which(samp2 == 3)
table(samp2)
round(table(samp2)/60,3)
mean.emp <- mean(samp2)
mean.theo <- sum(x*px)
c(mean.emp,mean.theo)
barplot(table(samp2))
##2
#1
x <- 0:10

par(mfrow = c(1,2))
px <- dbinom(x, 10, 0.3)
plot(x, px, type = "h", xlab = "x", ylab = "P(X = x)",
     main = "PDF of X-Bin(10,0.3)")
px2 <- dbinom(x, 10, 0.7)
plot(x, px, type = "h", xlab = "x", ylab = "P(X = x)",
     main = "PDF of X-Bin(10,0.7)")
par(mfrow = c(1,2))
par(mfrow = c(1,1))
plot(x, px, type = "h", xlab = "x", ylab = "P(X = x)",
     main = "PDF of X-Bin(10,0.7)")
plot(x, px2, type = "h", xlab = "x", ylab = "P(X = x)",
     main = "PDF of X-Bin(10,0.3)")
par(mfrow = c(1,2))
par(mfrow = c(1,1))
x <- 0:10

##plot cdf for Binomial
plot.discreteCDF <- function(x,Fx){  
  n <- length(x)
  margen <- mean(x[2:n]- x[1:n-1])
  
  # blank plot, only define the axis
  plot(x,Fx,type="n",xlab="x",ylab="F(x)",xlim=c(x[1]-margen,x[n]+margen),ylim=c(0,1))  
  
  # Plot the horizontal segments
  segments(x[1]-margen,0,x[1],0)
  segments(x[1:n-1],Fx[1:n-1],x[2:n],Fx[1:n-1])
  segments(x[n],1,x[n]+margen,1)
  
  # Plot the dots to indicate which segment includes each x value.
  lines(x,Fx,type="p",pch=16)
  
  title("CDF")
}
par(mfrow=c(1,2),pty = "s")
px <- dbinom(x,10,0.3)
Fx <-cumsum(px)
#Fx <- pbinom(x,10,0.3)
plot.discreteCDF(x,Fx)
px <- dbinom(x,10,0.7)
Fx <- cumsum(px)
plot.discreteCDF(x,Fx)
par(mfrow=c(1,1))

#2
x <- seq(-4, 4, 0.01)
y <- dnorm(x, 0, 1)
plot(x,y,type = "l",xlim = c(-4,4), main = "pdf N(0,1)")

#3
dbinom(16,20,0.7)
1-pbinom(16,20,0.7)
1-pbinom(15,20,0.7)

#4
dpois(4,8)
1-ppois(4,8)
1-ppois(3,8)
a <- qpois(0.95,8)
a

#5
pexp(1,3/4)
pexp(1.25,3/4) - pexp(0.5,3/4)
#quantile
qexp(0.97,3/4)
qexp(1-0.9,3/4)

#6
pnorm(8,7,2)
pnorm(5,7,2)-pnorm(3,7,2)
qnorm(0.9,7,2)
b <- qnorm(0.05,7,2)
a <- 7-b
a
b <- qnorm(0.95,7,2)
a <- b-7
a
