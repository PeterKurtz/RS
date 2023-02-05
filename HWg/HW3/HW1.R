turtles=read.csv("turtles.csv")

#1. Graphically summarize the distributions of the three variables using boxplots, histograms, 
#and normal quantile plots.  Do the summaries for the combined data and for each gender 
#of turtle.  Please include the graphs you generate with your report. 

#Together

#Length
hist(turtles$Length,main="Histogram of Turtle Carapace
Lengths",xlab="Length",ylab="Count")

qqnorm(turtles$Length,main="Normal Q-Q Plot of Turtle Carapace Lengths")

boxplot(turtles$Length,main="Boxplot of Turtle Carapace Lengths")

#Width

hist(turtles$Width,main="Histogram of Turtle Carapace
Widths",xlab="Width",ylab="Count")

qqnorm(turtles$Width,main="Normal Q-Q Plot of Turtle Carapace Widths")

boxplot(turtles$Width,main="Boxplot of Turtle Carapace Widths")

#Height

hist(turtles$Height,main="Histogram of Turtle Carapace
Height",xlab="Length",ylab="Count")

qqnorm(turtles$Height,main="Normal Q-Q Plot of Turtle Carapace Height")

boxplot(turtles$Height,main="Boxplot of Turtle Carapace Heights")

#Males:

males=subset(turtles, Gender == "male")

hist(males$Length,main="Histogram of male Turtle Carapace
Lengths",xlab="Length",ylab="Count")

qqnorm(males$Length,main="Normal Q-Q Plot of male Turtle Carapace Lengths")

boxplot(males$Length,main="Boxplot of males Trutle Carapace Lengths")

#Width

hist(males$Width,main="Histogram of male Turtle Carapace
Widths",xlab="Width",ylab="Count")

qqnorm(males$Width,main="Normal Q-Q Plot of male Turtle Carapace Widths")

boxplot(males$Width,main="Boxplot of male Turtle Carapace Widths")

#Height

hist(males$Height,main="Histogram of male Turtle Carapace
Height",xlab="Length",ylab="Count")

qqnorm(males$Height,main="Normal Q-Q Plot of male Turtle Carapace Height")

boxplot(males$Height,main="Boxplot of male Turtle Carapace Heights")

#Females

females = subset(turtles, Gender == "female")

hist(females$Length,main="Histogram of female Turtle Carapace
Lengths",xlab="Length",ylab="Count")

qqnorm(males$Length,main="Normal Q-Q Plot of male Turtle Carapace Lengths")

boxplot(males$Length,main="Boxplot of female Turtle Carapace Lengths")

#Width

hist(females$Width,main="Histogram of female Turtle Carapace
Widths",xlab="Width",ylab="Count")

qqnorm(females$Width,main="Normal Q-Q Plot of female Turtle Carapace Widths")

boxplot(females$Width,main="Boxplot of female Turtle Carapace Widths")

#Height

hist(females$Height,main="Histogram of female Turtle Carapace
Height",xlab="Length",ylab="Count")

qqnorm(females$Height,main="Normal Q-Q Plot of female Turtle Carapace Height")

boxplot(females$Height,main="Boxplot of female Turtle Carapace Heights")

# 2. Compute the covariance matrices and the correlation matrices for the male and female 
# turtles, and visually compare them.  Please include the computed matrices in your 
# report.(Later we will determine how to formally compare covariance matrices and mean 
#         vectors for different groups.) 



# 3. For one of the genders, compute the matrix  𝑇𝑇=1
# 𝑛𝑛−1�𝒀𝒀𝑇𝑇𝒀𝒀−𝑛𝑛𝒚𝒚𝒚𝒚𝑇𝑇� and compare it with 
# the covariance matrix you previously obtained.  Include the computed matrix in your 
# report and briefly comment on the result. 



# 4. For one of the covariance matrices, compute the eigenvalues and eigenvectors of the 
# variance-covariance matrix and the inverse of the covariance matrix.  What is the 
# relationship between the eigenvalues and eigenvectors of a covariance matrix and its 
# inverse? 


   
#   5. Let  𝑺𝑺 be the variance covariance matrix for a data matrix  𝒀𝒀.  Letting  𝒖𝒖1 denote the 
# eigenvector of  𝑺𝑺 corresponding to the largest eigenvalue,  𝜆𝜆1.  Verify that 𝑺𝑺𝒖𝒖1 =𝜆𝜆1𝒖𝒖1 
# and  𝒖𝒖1𝑇𝑇𝑺𝑺𝒖𝒖1 =𝜆𝜆1. 



# 6. The length, width, and height are all measured in the same units.  Is there any reason we 
# might prefer to use the correlation matrices over the covariance matrices if we were to 
# carry out principal components analysis on these data?  Briefly explain your reasoning. 



# 7. Compute the eigenvalues and eigenvectors for the covariance and the correlation matrix for 
# one of the genders of turtle, and compare the eigenvectors.  In each case, how many 
# principal components would you recommend retaining? Again, briefly explain your 









