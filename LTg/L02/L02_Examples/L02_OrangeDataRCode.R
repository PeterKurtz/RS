# L01b: Code Getting Started (Orange Data)

# List all available data sets
data()

# Load the "Orange" data set (optional here)
data(Orange)

# Display the entire Orange data set
Orange

# Display the first n = 6 rows of the Orange data set (6 is default; can be changed)
head(Orange)

# Look at the help page for the Orange data set
?Orange

# Calculate summary statistics for all variables of the Orange data set
summary(Orange)

# Display the entire content of the "age" column of the Orange data set
Orange$age

# Calculate the mean of the "age" column of the Orange data set
mean(Orange$age)

# Calculate the standard deviation of the "age" column of the Orange data set
sd(Orange$age)

# Create a default scatterplot of "age" (horizontal) and "circumference" (vertical) columns
# of the Orange data set [for details about graphics, attend "Statistical Visualization I"]

