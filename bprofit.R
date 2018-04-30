bprofit <- function(clsize=35,num=1137,odds=2){
                    brownProfit = 0
                    bdays <- (1:365)
                    for (i in 1:num){
                      students <- sample(bdays,size = clsize, replace = TRUE)
                      xx <- duplicated(students)
                      winornot <- sum(xx)
                      if (winornot >= 1) brownProfit = brownProfit+1 else brownProfit = brownProfit - odds
                    }
                    return(brownProfit) }
#use with map - to get an estimate of 500 trys you would build
#an array 500 long with the clsize in each element --- myclsize <- rep(35,times=500)
#then myoutput <- map(myclsize,bprofit)
#hist(myoutput)
#if you wanted to change the odds to 1.5:1 you would do myoutput2 <- map(myclsize,bprofit,odds=1.5)
#you could have an array where each element of myclsize was different in case the classes 
#varied in size, you could even do myoutput3 <-  map(myclsize,bprofit,odds=c(1,2,3))