winTorF <- function(clsize=35){
    bdays <- (1:365)
      students <- sample(bdays,size = clsize, replace = TRUE)
    xx <- duplicated(students)
    winornot <- sum(xx)
    if (winornot >= 1) out=1  else out=0
  return(out) }