m0 = matrix(1:6, nrow = 2, ncol = 3)
m0

m = matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
m

rownames(m) = c("a", "b")
colnames(m) = letters[1:3] #letters is built in.
m

dim(m); nrow(m); ncol(m)

t(m) #transpose

m[-1, 2] #Exculed the first row.
m["a", ] # row,column, column is empty so it doesn't matter, it will do all. 
m[, c(TRUE, TRUE, FALSE)] #Include 1 with true, 2 with true, and last false. 

x = array(1:30, c(4,3,2)) #4 rows, 3 columns, 2 panels.
x #Only goes to 24, no need for last 6. 

x[1:2, 3, 2] #1 to 2 rows, 3rd column, 2nd panel. 
x[, 2,1] #All rows, 2nd column, 1st panel.
x[4:3, c(3,1),1] #Order matters here, 
x[1:2, 2, 2]
x[c(3,1) ,c(3,2) , 1]

#Arrays and matricies are different!




