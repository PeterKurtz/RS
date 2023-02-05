load("L11c_rainfallCO.rda")

lapply(rain,mean)#Mean of each station. Here we get a list.
sapply(rain,mean)#Here we get a vector

args(lapply)

lapply(rain, mean, na.rm = TRUE, trim = 0.1)

x = 1:10
v <- c(1,1,1,0,0,0,1,1,1,0)
tapply(x, v, mean)
mean(x[v==0])
mean(x[v==1])

tapply(x, v, median)

sapply(rain, max)
sapply(rain, quantile, probs = 0.99)

all(sapply(rain, length) == sapply(day, length))

Year <- lapply(day, floor)
Uyear <- lapply(Year, unique)
OpYear <- sapply(Uyear, length)

length(unique(floor(day[[1]])))
sapply(day, function(x) length(unique(floor(x))))

sapply(rain, function(x) sum(x>0)/length(x))
sapply(rain, function(x) mean(x>0))

m <- matrix(1:6, nrow = 2)
apply(m, 1, sum)
apply(m, 2, sum)




