# L09: Dataframe Exercises


# Load the USArrests dataset into data
dat<-USArrests

#1.) First, lets get a feel for how to inspect 
#a.) What are the names of the variables in the dataset?
names(dat)

#b.) There are a number of ways to select a single column from our dataset.
# Write three unique expressions to return only the murder rates from the dataset. 
dat[, c("Murder")]
dat[,-(2:4)]
dat[,1]


#2.) What are the five lowest assault rates in the dataset?
assault = dat[,c("Assault")]
sortedAssault = sort(assault)
fiveLowestAssault = sortedAssault[1:5]

#3.) What are the indices of the states with the five largest urban populations?
# Define your answer as Ind
urbanPop = dat[,c("UrbanPop")]
orderStates = order(urbanPop, decreasing = TRUE)
Ind = orderStates[1:5]

#4.) Use Ind to display the arrest data for these five states
dat[Ind,]

#5.) a.)Use the summary command to view the statistics for each of the variables in
# the dataset. 
summary(dat)

#b.) Comparing the answer to 4.) with this summary, do these states with larger
# urban populations appear to have higher than average arrest rates?
#No. Not all of them have higher than average arrest rates. Some do. 


#6.)  Make an alternate version of the USArrests data in which the states are 
# ordered by murder rate. Call it "dat_sort".
# HINT: use the order function.
murderRate = dat[,c("Murder")]
sortMurderRate = order(murderRate)
dat_sort=dat[sortMurderRate,]

#7.) Based on dat_sort, use the head and tail functions to view the states with
# the six highest and six lowest murder rates. Based on the urban population of
# each group, what can we say about the relationship between urban population
# and murder rate?
tail(dat_sort)
head(dat_sort)

#8.)a) Make a scatter plot comparing the urban population and murder rates. 
# Hint: Use the plot function
plot(dat[,c("UrbanPop")], dat[,c("Murder")])

# b) Based on visual inspection, do you think there is a relationship between these 
# two variables?
#No

#9.) Repeat problem 8 (a & B), this time comparing murder and assault rates.
plot(dat[,c("UrbanPop")], dat[,c("Rape")])
plot(dat[,c("UrbanPop")], dat[,c("Assault")])

#######################
### Bonus Problems: ###
#######################

#10.) Construct a linear model analyzing the relationship between: 
# DVs: Assault rate & Urban Pop. 
# IV: Murder rate
# If you are unsure how to do this, look through the example code in ?lm

#11.) Now lets partition our data by seperating out states in the deep South. 
#Note: Deep South States: Georgia, Alabama, South Carolina, Mississipi, 
# and Louisiana
# a.) Assign States in the deep south to dat_test


# b.) Assign States outside of the deep south to dat_train



# c.) Construct a linear model between assault (IV) and murder (DV)



# d.) construct a scatter plot for the relationship between assault and murder
#mark the deep south points seperately in red (use points function)
#draw the LM fit line using abline



# e.) based on the results of d, what can we say about the murder rate in the 
# deep south?





