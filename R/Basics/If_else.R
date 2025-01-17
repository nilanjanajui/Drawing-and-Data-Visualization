## if Statement 

x <- 3

# check if x is greater than 0
if (x > 0) {
  print("The number is positive")
}

print("Outside if statement")


## if..else statement

age <- 17

# check if age is greater than 18
if (age > 18) {
  print("You are eligible to vote.")
} else {
  print("You cannot vote.")
}


## 
x <- 12

# check if x is positive or negative number
if (x > 0) {
  print("x is a positive number")
} else {
  print("x is a negative number")
}


## if..else if..else statement
x <- 0

# check if x is positive or negative or zero
if (x > 0) {
  print("x is a positive number")
} else if (x < 0) {
  print("x is a negative number")
} else {
  print("x is zero")
}


## Nested if..else statements

x <- 20

# check if x is positive
if (x > 0) {
  
  # check if x is even or odd
  if (x %% 2 == 0) {
    print("x is a positive even number")
  } else {
    print("x is a positive odd number")
  }
  
  # execute if x is not positive
} else {
  
  # check if x is even or odd
  if (x %% 2 == 0) {
    print("x is a negative even number")
  } else {
    print("x is a negative odd number")
  }
}



### ifelse() function

# In R, the ifelse() function is a shorthand vectorized alternative to the standard if...else statement.
# Most of the functions in R take a vector as input and return a vectorized output. 
# Similarly, the vector equivalent of the traditional if...else block is the ifelse() function.
# The syntax of the ifelse() function is:

# Syntex:  ifelse(test_expression, x, y)

# example-1
# input vector
x <- c(12, 9, 23, 14, 20, 1, 5)

# ifelse() function to determine odd/even numbers
ifelse(x %% 2 == 0, "EVEN", "ODD")

# example-2
# input vector of marks
marks <- c(63, 58, 12, 99, 49, 39, 41, 2)

# ifelse() function to determine pass/fail
ifelse(marks < 40, "FAIL", "PASS")


