## =========================================================
#
#    STAT5050: some in class practice with writing and 
#      using loops
#
## =========================================================



# 1.) First, using the sample function, write a 1-line expression to simulate 
# the result of 100 coin flips (Results can be 1s & 0s). 
# HINT: Use the sample function.  NO LOOPS REQUIRED
?sample
coinFlips = c(0,1)
sample(coinFlips, 100, replace = TRUE, prob = NULL)

# 2.) Write a for loop to simulate the results of 100 coin flips. Use the print 
# function to output your result at each stage of the loop.
flips = 1:100

flipsVector = c()

for (x in 1:length(flips)){
  flipsVector[x] <- sample(coinFlips, 1, replace = TRUE)
  print(flipsVector[x])
}

# 3.) Repeat problem 2, this time store your result at each stage into a vector
# called Flips
# HINT: You will need to initialize your Flips variable before starting your loop.
Flips = c()
for (x in 1:length(flips)){
  Flips[x] <- sample(coinFlips, 1, replace = TRUE)
  print(Flips)
}

# 4.) Use Flips to subset the HT variable defined below in order to convert your
# vector of 0's & 1's to a vector of "Tails" & "Heads"
HT<-c('Tails','Heads')
HT[Flips+1]

# 5.) Use a while loop, simulate coin flips until you have gotten "Heads" 
# 50 times. Create variables "hcount" to store the number of "heads "
# and "steps" to store the number total flips.
#Note: the code below sets our random number seed to ensure everyone gets the 
#same result.
set.seed(1)
hcount = 0
steps = 0
while(hcount <= 50){
  coinFlip = sample(coinFlips, 1, replace = TRUE)
  if (coinFlip == 1){
    hcount = hcount + 1
  }
  steps = steps + 1
}
print(steps)

# 6.) We need to be careful when we are designing while loops to ensure they 
# don't run forever. Copy the code from slide 7 of your notes to insert a break
# statement which will abort your loop if it requires more than 1000 iterations. 
set.seed(1)


# 7.) Look at the final value of steps after running your loop from question 6
# to determine the number of coin flips that were required to achieve 50 Heads.
# Is this the amount you would expect?

#######################################
###### Challenge: Nested Loops ########
#######################################

# 8.) To determine how typical our result from part 7 is, we would need to 
# repeat this simulation many times. To accomplish this paste your code from 
# question 6 into a for loop that will run 100 times. Store the number of flips
# required for each loop iteration into a vector called "nFlips".

# 9.) Plot the histogram of nFlips. Based on this histogram would you say that 
# your result from part 7 is fairly typical for this experiment?

# 10.) A correlation matrix is a matrix that summarizes the correlations between
# variables in a dataset. The (i,j) entry of a correlation matrix is equal to 
# the correlation between the ith & jth variables in a dataset 
# (or "cor(X[,i],X[,j])"). Write a nested for loop that will calculate
X<-USArrests


# 11.) We can also use the cor function on a dataframe to calculate the 
# correlation matrix for us. Do this using the code below, then verify that the 
# result matches your answer from question 10. 
cor(dat)


# 12.) Based on the results from questions 10 & 11, which pair of variables 
# exhibit the highest correlation? Does this result make sense?
