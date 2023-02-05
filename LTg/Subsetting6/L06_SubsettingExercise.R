# L07a: Subsetting Exercise

# Make sure that you save this exercise in the same folder as you saved the 
# family.rda file.
load("L05c_family.rda")

#############################################
#    PART ONE: Basic Subsetting             #
#############################################
# 1.) Return the BMI for the 5th person 
fbmi[5]

# 2.) Return the weight of the first 5 people 
fweight
fweight[1:5]

# 3.) Return the ages of everyone but the 6th and 7th people
fage[-6:-7]

# 4.) Return the weights of all overweight people
fweight[foverWt == TRUE]

########################################################
#    PART TWO: Subsetting with logical expressions     #
########################################################


# 5.) Return the names of all men 
fnames[fgender == "m"]

# 6.) Return the height of the person with the lightest weight
min(fweight)
x = which (fweight == min(fweight))
fheight[x]

fheight[fweight == min(fweight)]

# 7.) Return the names of anyone with height above 70 or weight above 180


############################################
#    PART THREE: Challenge Problems        #
############################################

# 8.) Return the names of any women with height above 70 or weight above 180


# 9.) How much heavier is the heaviest person than the tallest person?


# 10.) Return the names of any men that are heavier than the tallest person?



# 11.) Define a new variable fdelta as the difference between fdesiredWt and
# fweight. This measures the amount of weight each family member would like to 
# gain / lose. Then use fdelta to answer the following questions.

# a.) What is mean of fdelta?


# b.) What is the mean of fdelta for only overweight family members


# c.) What is the mean of fdelta for women in the family


# d.) On average, do women want to lose more weight than men (yes or no)?


# e.) List the names of all of the women who want to gain weight.


# f.) Plot the relationship between fdelta (y-variable) and fbmi (x-variable) 
# only for the overweight family members. 
# Does there appear to be a relationship between these variables in this group?

