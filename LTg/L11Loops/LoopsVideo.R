vec = c("Peter", "Sarah", "Joey", "Leah", "Ben")
for (x in vec) {
  print(x)
}

#Same two things
x=1:20
r=rep(0,length(x))
for (i in 1:length(x)){
  y[i]=x[i]^2
}
y=x^2

#Sometimes you need for loops.
x=1:20
y=rep(0,length(x))
y[1]
for (i in 2:length(x)){
  y[i]=x[i]+y[i-1]
}

p=.5
sample(c(1,0), size=1, prob=c(p,1-p))

max.iter = 1000
x = 0
steps=0
while(x<10){
  x = x + sample(c(0,1),1)
  steps = steps + 1 
  if (steps == max.iter){
    warning("Maximum iteration reached")
    break
  }
}


x = 0
while(x <= 10){
  x = x+1
}






