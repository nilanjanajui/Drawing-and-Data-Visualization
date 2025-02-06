## Creating function & Call a function
my_function <- function() {
  print("Hello World!")
}

my_function()   #Calling function

#
# define a function to compute power
power <- function(a, b) {
  print(paste("a raised to the power b is: ", a^b))
}

# call the power function with arguments
power(2, 3) 


## Arguments
# Information can be passed into functions as arguments.
# Arguments are specified after the function name, inside the parentheses.
# You can add as many arguments as you want, just separate them with a comma.
# The following example has a function with one argument (fname). 
#When the function is called, we pass along a first name, which is used inside the function to print the full name:
my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")


## Named Arguments
# define a function to compute power
power <- function(a, b) {
  print(paste("a raised to the power b is: ", a^b))
}

# call the power function with arguments
power(b=3, a=2)


## Default parameter value
my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA")


# 
# define a function to compute power
power <- function(a = 2, b) {
  print(paste("a raised to the power b is: ", a^b))
}

# call the power function with arguments
power(2, 3)

# call function with default arguments
power(b=3)


## Return values
my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))


# 
# define a function to compute power
power <- function(a, b) {
  return (a^b)
}

# call the power function with arguments
print(paste("a raised to the power b is: ", power(4, 3)))


## Nested Function
# In R, you can create a nested function in 2 different ways.
# 1. By calling a function inside another function call.
# 2. By writing a function inside another function.

# Call a function inside another function call 
# define a function to compute addition
add <- function(a, b) {
  return (a + b)
}

# nested call of the add function 
print(add(add(1, 2), add(3, 4)))


# Write a function inside another function 
# define a function to compute power
power <- function(a) {
  exponent <- function(b) {
    return (a^b)
  }
  return (exponent)
}

# call nested function 
result <- power(2)
print(result(3))
# Here, we cannot directly call the power() function because 
# the exponent() function is defined inside the power() function.
# Hence, we need to first call the outer function with the argument a and set it to a variable. 
# This variable now acts as a function to which we pass the next argument b.


## Recursion
# R also accepts function recursion, which means a defined function can call itself.
# Recursion is a common mathematical and programming concept. It means that a function calls itself. 
#This has the benefit of meaning that you can loop through data to reach a result.
# The developer should be very careful with recursion as it can be quite easy to slip into writing a
#function which never terminates, or one that uses excess amounts of memory or processor power. 
# However, when written correctly, recursion can be a very efficient and mathematically-elegant 
# approach to programming.
# In this example, tri-recursion() is a function that we have defined to call itself ("recurse"). 
# We use the k variable as the data, which decrements (-1) every time we recurse.
#The recursion ends when the condition is not greater than 0 (i.e. when it is 0).
# To a new developer it can take some time to work out how exactly this works, 
#best way to find out is by testing and modifying it.
tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)


## Global Variables
# Variables that are created outside of a function are known as global variables.
txt <- "awesome"
my_function <- function() {
  paste("R is", txt)
}

my_function()


## Global assignment Operator
#To create a global variable inside a function, we use the global assignment operator <<- 
my_function <- function() {
    txt <<- "fantastic"
    paste("R is", txt)
  }

my_function()

print(txt)


# 
txt <- "awesome"
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

paste("R is", txt)

