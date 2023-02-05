## =========================================================
#
#    STAT5050: some in class practice with vectors, 
#      matrices, and some linear algebra calculations
#
## =========================================================

# here's a good dictionary of functions related to 
#  matrices
?matrix
help.search("%*%")
?solve
?diag
?eigen
?t
?dim
?cbind
?rbind
?det
?sum
?colSums
?colMeans
?rowSums
?rowMeans

#1.) a.) Use rep() and matrix() to make a 3 x 3 matrix with 
#    1's in first column, 2's in second column and 3's in 
#    third column... assign to 'm1'
x <- c(1,2,3)
m1 = matrix(rep(x, 3), nrow=3, ncol = 3, byrow=TRUE)
m1

# b.) create a similar matrix but with 1's in first row,
#      2's in second row, etc. HINT: ?matrix, see byrow arg
#      assign to 'm2'
m2 = matrix(rep(x, 3), nrow=3, ncol = 3)
m2

# c.) Use t() to take the matrix you built from part a.) and
#      return the matrix you built from part b.)... assign to 
#      "m3"
m3=t(m1)
m3 

#  d. ) look at m2 == m3, what is it doing?
m2 == m3
# If the elements at the same location the same the value at the location is true. 

#  e.) use all() to show that m2 is same as m3
all(m2 == m3)

# 2.) a.) Use colSums() on m1 to produce a vector of column sums
c(colSums(m1))

# b.) now use rep(1,3) and matrix multiplication to produce
#   the answer from a.)
vec = rep(1,3)
vec %*% m1

# c.) Post multiply (matrix calc) m1 by rep(1,3)
m1 %*% vec

# d.) use the rowSums() function to get the same result as c.)
rowSums(m1)

# 3.) a.) Write an arithmetic expression to calculate the number of elements in 
# an array with dimensions: c(3,6,5,3)?
3*6*5*3

# b.) Construct an array with the dimensions from a, and use the length function 
# to verify your verify you calculated the correct number of elements.
length(array(1:300, c(3,6,5,3)))

# c.) Write an arithmetic expression to calculate the number of elements in 
# an array with dimensions: c(80,100,300,45,90)?
80*100*300*45*90

# d.) Construct an array with the dimensions from c, and use the length function 
# to verify your verify you calculated the correct number of elements. If you 
# get an error, explain why.
length(array(1:10, c(80,100,300,45,90)))
#It's too big.

# 4.) Read the description of the Titanic dataset, and examine what the data. 

?Titanic
Dat<-Titanic
print(Dat)

# a.) Write an expression that returns a reduced array with only Males
Dat[,Sex = "Male",,]


# b.) Write an expression that returns a reduced array containing only girls 
# (female children)
Dat[,Sex="Female",Age="Child",]

# c.) Write an expression that returns the number of 3rd class girls who survived
Dat[Class="3rd",Sex="Female",Age="Child",Survived="Yes"]
Dat[Class="3rd",Sex="Female",Age="Child",Survived="No"]

# d.) Write an expression that returns the number adult males who died
# HINT: Use sum
sum(Dat[,Sex="Male",Age="Adult",Survived="No"])

# e.) Write an expression to calculate the percentage of 3rd class passengers
# who survived.
sum(Dat[Class="3rd",,,Survived="Yes"])/sum(Dat[Class="3rd",,,Survived="No"] + Dat[Class="3rd",,,Survived="Yes"])

# f.) Write an expression to calculate the percentage of 1st class passengers
# who survived.
sum(Dat[Class="1st",,,Survived="Yes"])/sum(Dat[Class="1st",,,Survived="No"] + Dat[Class="1st",,,Survived="No"])

# g.) Compare the values from e & f, what would you infer from this?
#More 1st class people survived.