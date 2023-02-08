load("family.rda")
fheight * 2.54
Convert <- function(x)x*2.54
#Orphan function is a function without a name.
load("rain.rda")
Nyears <- function(x) length(unique(floor(x)))
sapply(day, Nyears)

#function says you want to make a function

args(median)
#important values first. 

Convert <- function(x)x*2.54
#make function brief. 

#control flow

if (any(x < -1 | x>1))
  warning("Value(s) in x outside the interval [-1,1]")
if (any(x <=0)) y <- log(1+x) else y<-log(x)
#same as
y <- if(any(x<=0)) log(1+x) else log(x)

if (any(x<=0)) x<- 1 + x
y<-log(x)

#runs through conditions in order

#if there is an if, immediately following must be else. Must be on the same line on the }
#following if, begin next line with } and then do the else. 

corplot <- function(x,y,plotit=TRUE){
  if (plotit) plot(x,y)
  cor(x,y)
}
m=0
if(!is.matrix(m)) stop("m must be a matrix")

ratio <- if(x !=0) y/x else NA

normt <- function(n,dist){
  if (dist == "normal"){
    return (rnorm(n))
  }else if (dist == "t"){
    return(rt(n,df=1,ncp=0))
  }else{
    stop("distribution not implemented")
  }
}

ratio <- ifelse(x != 0, y/x, NA)

country = "China"
US.indicator <- ifelse(country == "USA",1,0)
US.indicator
  
plot(Income, Donation, col=iffelse(party=="Republican", "red","blue"))
#These can be slow!








