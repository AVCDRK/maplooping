bprofit2 <- function(classsize,times=50,odds=2.0){
myclsize <- rep(classsize,times)
mywins <-sum(map_dbl(myclsize,winTorF))
myoutput<-mywins-odds*(times-mywins)
return(myoutput)}