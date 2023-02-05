# L10: List Exercises

##################  Data Generation  ##############################
# The below code generates some sample data for variables x & y. 
set.seed(1)
n=25
x<-rnorm(n)
y<-.8*x +0.5+0.1*rnorm(n)
###################################################################

# Note: make sure you have run the above data generation code before you start 
# with the problems. 

# 1.) Using the lm function, construct a regression model between x & y, and 
# assign your model to variable LM.
LM = lm(y ~ x)

# 2.) What type of variable is LM?
typeof(LM)

# 3.) Double click the LM variable in your environment and explore the different 
# information stored there. Do you understand what all of these values mean?


# 4.) Write a single line expression to return the intercept term from your 
# linear model (LM). Is it close to the true value?
LM$coefficients[1]

# 5.) Some important information about LM isn't included in this list. To get a 
# more complete summary of our model we can use the summary function. Apply the 
# summary function to LM, and define the output as variable "Sum". 
Sum = summary(LM)

# 6.) Some information is shared between LM & Sum, but some is unique. Both lists 
# include a variable called "coefficients". Is this variable the same for both 
# lists?
#They are not the same. 

# 7.) Write an expression to return the p-value for the slope of LM. 
Sum$coefficients[2,4]

# 8.) Using the residuals found in LM, write an expression to calculate the
# sum of squared residuals (SSR) for your model. 
yBar = mean(y)
sum((LM$residuals-yBar)**2)





