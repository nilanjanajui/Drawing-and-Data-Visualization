# A vector is the basic data structure in R that stores data of similar types.

## Create a Vector
# To combine the list of items to a vector, use the c() function and separate the items by a comma.
# create vector of string types
employees <- c("Sabby", "Cathy", "Lucy")

print(employees)


# example-2
# Vector of numerical values
numbers <- c(1, 2, 3)

# Print numbers
print(numbers)


# example-3
# Vector with numerical values in a sequence
numbers <- 1:10

# Print numbers
print(numbers)


# example-4
# Vector with numerical decimals in a sequence
numbers1 <- 1.5:6.5
print(numbers1)

# Vector with numerical decimals in a sequence where the last element is not used
numbers2 <- 1.5:6.3
print(numbers2)


# example-5
numbers <- seq(from = 0, to = 100, by = 20)

print(numbers)
# The seq() function has three parameters: 
# 'from' is where the sequence starts, 'to' is where the sequence stops, and 'by' is the interval of the sequence.


## Access Vector Elements
# In R, each element in a vector is associated with a number. The number is known as a vector index.
# We can access elements of a vector using the index number (1, 2, 3 …). For example,

# a vector of string type
languages <- c("Swift", "Java", "R")

# access first element of languages
print(languages[1])  # "Swift"

# access third element of languages
print(languages[3]) # "R"
### NOTE: In R, the vector index always starts with 1. ### 


## Modify Vector Elements
# To change a vector element, we can simply reassign a new value to the specific index. For example,
dailyActivities <- c("Eat","Repeat")
cat("Initial Vector:", dailyActivities,"\n")

# change element at index 2
dailyActivities[2] <- "Sleep"

cat("Updated Vector:", dailyActivities)


## Repeat Vectors
# In R, we use the rep() function to repeat elements of vectors. For example,
# repeat sequence of vector 2 times
numbers <- rep(c(2,4,6), times = 2)

cat("Using times argument:", numbers)

# We can see that we have repeated the whole vector two times. 
# However, we can also repeat each element of the vector. For this we use the each parameter.
# repeat each element of vector 2 times
numbers <- rep(c(2,4,6), each = 2)

cat("\nUsing each argument:", numbers)


## Loop
numbers <- c(1, 2, 3, 4, 5)

# iterate through each elements of numbers
for (number in numbers) {
  print(number)
}


## Length of Vectors
languages <- c("R", "Swift", "Python", "Java")

# find total elements in languages using length()
cat("Total Elements:", length(languages))


## Vector Manipulation ##

## Vector Sorting
# To sort items in a vector alphabetically or numerically, use the sort() function:
fruits <- c("banana", "apple", "orange ", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers

# example-2

v <- c(3,8,4,5,0,11, -9, 304)

# Sort the elements of the vector.
sort.result <- sort(v)
print(sort.result)

# Sort the elements in the reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

# Sorting character vectors.
v <- c("Red","Blue","Yellow","Violet")
sort.result <- sort(v)
print(sort.result)

# Sorting character vectors in reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)


## Vector arithmetic
# Two vectors of same length can be added, subtracted, multiplied or divided giving the result as a vector output.
# Create two vectors.
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)

# Vector addition.
add.result <- v1+v2
print(add.result)

# Vector subtraction
sub.result <- v1-v2
print(sub.result)

# Vector multiplication.
multi.result <- v1*v2
print(multi.result)

# Vector division.
divi.result <- v1/v2
print(divi.result)


## Vector Elements Recycle
# If we apply arithmetic operations to two vectors of unequal length, 
# then the elements of the shorter vector are recycled to complete the operations.
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)
# V2 becomes c(4,11,4,11,4,11)

add.result <- v1+v2
print(add.result)

sub.result <- v1-v2
print(sub.result)

