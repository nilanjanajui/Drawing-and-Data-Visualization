# A matrix is a two-dimensional data structure where data are arranged into rows and columns.

## Create a Matrix
# In R, we use the matrix() function to create a matrix.
# The syntax of the matrix() function is

##  Systax 'matrix(vector, nrow, ncol)'
# vector - the data items of same type
# nrow - number of rows
# ncol - number of columns
# byrow (optional) - if TRUE, the matrix is filled row-wise. By default, the matrix is filled column-wise.
# create a 2 by 3 matrix
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)

print(matrix1)


## Access Matrix Elements
# We use the vector index operator [ ] to access specific elements of a matrix in R.
matrix1 <- matrix(c("Sabby", "Cathy", "Larry", "Harry"), nrow = 2, ncol = 2)

print(matrix1)

# access element at 1st row, 2nd column
cat("\nDesired Element:", matrix1[1, 2])


## Access Entire Row or Column
# In R, we can also access the entire row or column based on the value passed inside [].
# [n, ] - returns the entire element of the nth row.
# [ ,n] - returns the entire element of the nth column.
matrix1 <- matrix(c("Sabby", "Cathy", "Larry", "Harry"), nrow = 2, ncol = 2)

print(matrix1)

# access entire element at 1st row
cat("\n1st Row:", matrix1[1, ])

# access entire element at 2nd column
cat("\n2nd Column:", matrix1[, 2])


## Access More Than One Row or Column
# We can access more than one row or column in R using the c() function.
# [c(n1,n2), ] - returns the entire element of n1 and n2 row.
# [ ,c(n1,n2)] - returns the entire element of n1 and n2 column.
# create 2 by 3 matrix
matrix1 <- matrix(c(10, 20, 30, 40, 50, 60), nrow = 2, ncol = 3)

print(matrix1)

# access entire element of 1st and 3rd row
cat("\n1st and 2nd Row:", matrix1[c(1,2), ])

# access entire element of 2nd and 3rd column
cat("\n2nd and 3rd Column:", matrix1[  ,c(2,3)])


## Modify Matrix Elements
# We use the vector index operator [] to modify the specified element.
# create 2 by 2 matrix
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)

# print original matrix
print(matrix1)

# change value at 1st row, 2nd column to 5 
matrix1[1,2] = 5

# print updated matrix
print(matrix1)


## Combine Two Matrices
# we use the cbind() and the rbind() function to combine two matrices together.
# create two 2 by 2 matrices 
even_numbers <- matrix(c(2, 4, 6, 8), nrow = 2, ncol = 2)
odd_numbers <- matrix(c(1, 3, 5, 7), nrow = 2, ncol = 2)

# combine two matrices by column
total1 <- cbind(even_numbers, odd_numbers)
print(total1)

# combine two matrices by row
total2 <- rbind(even_numbers, odd_numbers)
print(total2)


## Check if the Elements are Exist in Matrix
matrix1 <- matrix(c("Sabby", "Cathy", "Larry", "Harry"), nrow = 2, ncol = 2)

"Larry" %in% matrix1 # TRUE

"Kinsley" %in% matrix1 # FALSE


## Remove Rows and Columns
# Use the c() function to remove rows and columns in a Matrix:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange ", "mango", "pineapple"), nrow = 3, ncol =2)

#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]

thismatrix


## Number of Rows and Columns
# Use the dim() function to find the number of rows and columns in a Matrix:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange "), nrow = 2, ncol = 2)

dim(thismatrix)


## Length of Matrix
# Use the length() function to find the dimension of a Matrix:

thismatrix <- matrix(c("apple", "banana", "cherry", "orange "), nrow = 2, ncol = 2)

length(thismatrix)


## Loop Through a matrix
# You can loop through a Matrix using a for loop. The loop will start at the first row, moving right:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange "), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}






















