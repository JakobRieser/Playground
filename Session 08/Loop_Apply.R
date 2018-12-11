m <- matrix(data=cbind(rnorm(30,0), rnorm(30,2), rnorm(30,5)), nrow=30, ncol=3)
m

mean(m[,1])
mean(m[,2])

#or

m.mean <- vector()
m.mean <- for(i in 1:ncol(m)){
  m.mean[i] <- mean(m[,1])
}

#or:
apply(m,1,mean)
apply(m,2,mean)


apply(m,2,function(x) length(x[x<0]))



