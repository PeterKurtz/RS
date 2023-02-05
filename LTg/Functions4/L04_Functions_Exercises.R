## =========================================================
#
#    STAT5050: Using functions in R
#
## =========================================================

# In this exercise we will familiarize ourselves with using functions in R.
# In particular, we will be looking at the families of functions used
# to work with different types of probability distributions. 
# Below are some functions for different types of distributions that it
# will be useful to familiarize yourself with:
# NOTE: All these families of functions work basically the same way.

?punif
?pnorm
?pbinom
?ppois
?pchisq
?pcauchy
?pf
?pgamma
?plogis
?plnorm

#############################################
#    PART ONE: Functions in R               #
#############################################

# Problems 1 & 2 are a repeat of the problems asked in the L03 Exercises.
# The solutions are provided for you, feel free to check your answers
# against those provided here. 

# 1.) Suppose x is a random variable distributed uniformly between 0 & 10.
# Note: you don't need any variables for this part. 
# a. Write an expression to calculate the mean of x. 
1/2*(0+10)

# b. Write an expression to calculate the variance of x.
1/12*(10-0)^2

# c. Write an expression to calculate the probability that x is less
# than 3.
(3-0)/(10-0)

# 2.) Repeat problem 1, this time using the following variables
a <- 0
b <- 10
xi <- 3 # This is the sample x-value for C.
# a. Write an expression to calculate the mean of x. 
Mu <- 1/2*(a+b)

# b. Write an expression to calculate the variance of x.
Var <- 1/12*(b-a)^2

# c. Write an expression to calculate the probability that x is less
# than 3. 
(xi-a)/(b-a)

# 3.) a. Using the same a & b, use the punif function to calculate the 
# probability that x is less than 3.
punif(xi, min = a, max = b)

# b. Rewrite the above function 5 additional ways using assignments by
# name, position, partial name, and mixing these methods of assignment. 
# verify that your assignments all provide the correct answer, and if
# any yield an error or incorrect answer, see if you can figure out why. 
punif(xi, mi = a, ma = b)
punif(xi, a, b)
punif(xi, max = b, min = a)
punif(max = b, min = a, xi)
punif(ma = b, mi = a, xi)

# c. By default, the "lower.tail" argument in the punif function  is 
# set to TRUE. What happens if you take you answer form part a and set 
# "lower.tail=FALSE"?
# Write a compound expression the calculates the correct probability for 
# part A from this result. 
punif(xi, min = a, max = b, lower.tail = TRUE)



# 4.) Lets try comparing these results with experimental calculations.
# a. Use the runif function to generate 1000 samples from the above 
# distribution.
xtest = runif(1000, min = a, max = b)

# b. Calculate the sample mean of xtest. 
mean(xtest)

# c. Calculate the sample variance of xtest.
var(xtest)

# d. Plot a histogram of xtest
hist(xtest)
# e. How do the answers to b & c compare with the values you calculated before?
#They are almost the same!

# 5.) a. Repeat problem 4 using 100000 test samples (all parts). 
xtest = runif(100000, min = a, max = b)

# b. Calculate the sample mean of xtest. 
mean(xtest)

# c. Calculate the sample variance of xtest.
var(xtest)

# d. Plot a histogram of xtest
hist(xtest)

# b. How does increasing the number of samples affect our sample mean & 
# variance in relation to the theoretical values?
#Makes it a little closer. Not much.

# 6.) The code provided below defines a range of x-values. Use the help 
#function for "seq" to try and figure out what this code, and each of the 
# arguments does. 
xset <- seq(from=-5,to=15,by=0.1)

# a. Using the xset variable defined above and the dunif function,
# calculate the pdf of of the previously defined uniform distribution
# across this range. 
?dunif

# b. Using the plot function, plot the relationship between xset and your
# probability density function generated in part a. 
# HINT: Your plot make not look like you want. Try adding the "type='l'"
# argument. 

# c. Repeat parts a & b for a normal distribution with a mean 5 and a 
# standard deviation of 2.


# d. Repeat parts a & b for an exponential distribution with a rate of 0.5.


# e. Try repeating a & b for some of the other families of distributions 
# listed at the start of this document. Experiment with the distribution 
# parameters and see how they affect the resulting plot. 
