# print the string in console
print("Hello World!")

# the argument "quote = FALSE" for printing the string without quote
print("Hello World", quote = FALSE)


## Paste() Function in R
# We can also print a string and variable together using the print() function. 
# For this, you have to use the paste() function inside print(). For example,
company <- "Programiz"

# print string and variable together
print(paste("Welcome to", company))
# If we don't want any default separator between the string and variable,
# we can use another variant of "paste()" called "paste0()"


## R sprintf() Function
# The sprintf() function of C Programming can also be used in R.
# It is used to print formatted strings. For example,
myString <- "Welcome to Programiz"

# print formatted string
sprintf("String: %s", myString)

#
# sprintf() with integer variable
myInteger <- 123
sprintf("Integer Value: %d", myInteger)

# sprintf() with float variable
myFloat <- 12.34
sprintf("Float Value: %f", myFloat)


## R cat() Function
# R programming also provides the cat() function to print variables. 
# However, unlike print(), the cat() function is only used with 
# basic types like logical, integer, character, etc.

# print using Cat
cat("R Tutorials\n")

# print a variable using Cat
message <- "Programiz"
cat("Welcome to ", message)


