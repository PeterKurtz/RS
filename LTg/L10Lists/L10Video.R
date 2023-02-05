#Lists
#matricies and arrays must be homogenous of data type
#Data frames can have vectors of different types
#List is many things. Yoou can put anything in a list. 
#Data frames are a special type of list. 
#No position type of thing. 

Ingredients1 = list(cheese=c("Cheddar", "Swiss"), meat = c("Ham", "Turkey", "Bologna"))
Ingredients1$meat 

Ingredients1[2]

class(Ingredients1[2])

Ingredients1[[2]]
class(Ingredients1[[2]])

#quiz
Ingredients1 = list(cheese=c("Cheddar", "Swiss"), meat = c("Ham", "Turkey", "Bologna"), list(u = c("1", "2", "3"), t = "i"))

x=1:100
y=x*3+rnorm(100)
regression.results = lm(y~x)#Regress y on x
is.list(regression.results)

names(regression.results)
regression.results$coef
regression.results$residuals

load("L11c_rainfallCO.rda")

class(rain)
length(rain)
names(rain)

class(rain$st050183)
length(rain$st050183)
head(rain$st050183)

class(rain["st050183"])
length(rain["st050183"])

class(rain[[1]])
head(rain[[1]])







