# An Array is a data structure which can store data of the same type in more than two dimensions.


## Create an Array
# In R, we use the 'array()' function to create an array.
# and the 'dim' parameter to specify the dimensions.
# Systax: array(vector, dim = c(nrow, ncol, nmat))
# create two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))

print(array1)


## Access Array Elements
# We use the vector index operator [ ] to access specific elements of an array in R.
# Syntax: array[n1, n2, mat_level]
# n1 - specifies the row position
# n2 - specifies the column position
# mat_level - specifies the matrix level
# create two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))

print(array1)

# access element at 1st row, 3rd column of 2nd matrix
cat("\nDesired Element:", array1[1, 3, 2])


## Access Entire Row or Column
# In R, we can also access the entire row or column based on the value passed inside [].
# [c(n), ,mat_level] - returns the entire element of the nth row.
# [ ,c(n), mat_level] - returns the entire element of the nth column.
# create a two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))

print(array1)


# access entire elements at 2nd column of 1st matrix
cat("\n2nd Column Elements of 1st matrix:", array1[,c(2),1])

# access entire elements at 1st row of 2nd matrix
cat("\n1st Row Elements of 2nd Matrix:", array1[c(1), ,2])


## Check if Elemets Exists
# create a two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))

11 %in% array1 # TRUE

13 %in% array1 # FALSE


## Length of Array
# create a two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))

# find total elements in array1 using length()
cat("Total Elements:", length(array1))


## Amount of Rows and Columns
# Use the dim() function to find the amount of rows and columns in an array:
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

dim(multiarray)


## Loop Through an Array
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

for(x in multiarray){
  print(x)
}

