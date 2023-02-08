## =========================================================
#
#    STAT5050: some in class practice with apply and 
#      tapply
#
## =========================================================


# Make sure that you are familiar with the help for the apply function
?apply



#############################################
#    PART ONE: Apply function basics        #
#############################################

# 1.) Build a matrix of ones with 1000 rows and 2000 columns
#HINT: use the matrix function
m <- matrix(1, nrow=1000, ncol = 2000)

# 2.) Calculate the sum of all elements in the matrix
#HINT: use the sum function
sum(m)

# 3.) a. use apply and sum on the matrix to make a vector of column sums. 
# Name the result v1.
# Note: Make sure you have assigned the margin argument correctly.
v1 <- apply(m, 2, sum)

#b. Verify your result by comparing with the result of the colSums function.
all(v1==colSums(m))

# 4.) a. use apply and sum on the matrix to make a vector of row sums.
vRow <- apply(m, 1, sum)

#b. Verify your result by comparing with the result of the rowSums function.
all(vRow==rowSums(m))

#############################################
# PART TWO: Working with the MTCars dataset #
#############################################
# Load the Motor Trend Car Road Tests dataset into the dat variable
dat <- mtcars

# 5.) Use the apply command to return the mean value for each variable in dat
apply(dat,2,mean)

# 6.) a. Repeat question 5, using the sapply and lapply functions
sapply(dat,mean)
lapply(dat,mean)


#b. What difference does this choice of function make to your output?
#ANSWER: lapply returns the answer as a list
#sapply and apply both return a double. 
#sapply is the data frame flavor of apply. Apply is for matrices.

#############################################
#         Challenge Problems                #
#############################################

# 7.) Use tapply to calculate the average gross horsepower, broken down by the 
# number of carburetors (average HP for cars in the dataset with 1 carburetor,
#average HP for cars in the dataset with 2 carburetors, etc.)
# Name the resulting vector HP
tapply(dat[,c("hp")],dat[,c("carb")],mean)

# 8.) Repeat question 7, this time returning the average MPG broken down by 
# number of carburetors.
# Name the resulting vector MPG
tapply(dat[,c("mpg")], dat[,c("carb")],mean)

# 9.) a. Plot the relationship between number of carburetors and HP
# HINT: use the names function


# b. Plot the relationship between number of carburetors and MPG
# HINT: use the names function


# 10. Based on the results from question 9, what do you expect to happen to MPG
# as HP increases? Plot the relationship between HP and MPG to verify.
#ANSWER: It should decrease











