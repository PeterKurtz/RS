#Notes

#Vector creation:
x = c(1,2,3,4)
mean(x)

#How to find out what something is.
class(x)

cars
objects(cars)
load("family.rda")

fbmi[5]
fbmi[-6]
fbmi

#Subsetting
fheight[foverWt]#Only returns fheights where foverWt is TRUE. 

fweight[fgender == "f"]#Returns female heights.

#rep and seq
rep(3,2)#Repeates 3 two times. 
rep(x, 4)

seq(1,5,by=2)
seq(5,1)

order(fage)#Says the one at 12 is the smallest
sort(fage)#Orders least to greates. 

#Matrices

m <- matrix(1:6, nrow = 2, ncol = 3)
mrow <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)

#Dimensions of the matrix
dim(m)
nrow(m)
ncol(m)

#Transpose
t(m)

#array
ar <- array(1:30, c(4,3,2))

#Data Frames
dat<-USArrests
class(dat)
length(dat)
names(dat)
dat$Murder#Values for Murder variable. 
dat[10:13, -(3:7)]#Returns some at certain position and excludes some others. 

#Plotting
plot(dat[,c("UrbanPop")], dat[,c("Murder")])

#Lists
Ingredients <- list(cheese = c("Cheddar", "Swiss"), mean = c("Ham", "Turkey", "Bologna"))#Makes a list.
Ingredients[2]#Returns the second thing. 

Ingredients[[2]]#The second thing
Ingredients[[2]][1]#The first thing of the second thing

#Linear regression
x <- 1:100
y <- x * 3 + rnorm(100)
regression.results <- lm(y~x)
names(regression.results)

#Matrix of one value
i <- matrix(1, 10,10)










































