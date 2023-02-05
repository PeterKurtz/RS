Orange
View(Orange)

#Notes: ordered container of vectors. In vectors they must be the same type.

load("L05c_family.rda")
family = data.frame(firstName = fnames, gender = fgender, age=fage, height=fheight, weight=fweight, bmi=fbmi, overWt=foverWt)
family

class(family)
length(family)#Number of vectors
dim(family)#rows and columns
names(family)#variables stuff.

family$gender#values and levels (datafracme$vector)
mean(family$height)#means of height varaibles
class(family$height)#Class of the vector stuff
family[10:13,-(3:7)]#10 through 13 people, exclude the 3rd through 7th. 
family[c("j","k","l","m"), -(3:7)]#Same as above

family[,c("gender","firstName")]#We can use empty subsetting for all. 
family[family$weight > 180, c("height","bmi")]

family["height"]#This is a dataframe
family[,"height"]#This is a vector

CAquakes = read.table(file = "L10c_ms49epicenters.txt")
dim(CAquakes)
CAquakes[1:3,]
class(CAquakes)
class(CAquakes$Date)
























