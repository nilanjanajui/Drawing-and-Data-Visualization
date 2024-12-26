## Assign a String to a Variable
# Assigning a string to a variable is done with the variable followed by the <- operator and the string:
str1<- "Hello"
str1 # print the value of str


## Multiline Strings
# We can assign a multiline string to a variable like this:
str2 <- "I'm sorry for the pain,
will be pursued but they happened at such a time
as with some great labor and pain.."

str2  # print the value of str
cat(str2)  # cat() function print the line breaks to be inserted at the same position as in the code.


str3 <- "Hello World!"

nchar(str3)  # used for the String length(or find the number of characters in a string) 


## Check a String
# Use the grepl() function to check if a character or a sequence of characters are present in a string:
str4 <- "Hello World!"

grepl("H", str4)
grepl("Hello", str4)
grepl("X", str4)


## Combine Two Strings
# Use the paste() function to merge/concatenate two strings:
str5 <- "Combining"
str6 <- "Strings"

paste(str5, str6)


## Escape Characters 
# An escape character is a backslash "\" followed by the character we want to insert.
str7 <- "We are the so-called \"Vikings\", from the north."

str7
cat(str7)   # Note that auto-printing the str variable will print the backslash in the output. 
            # The cat() function is use to print it without backslash.


## Other escape characters in R:##
  
#  Code   Result
#   \\	  Backslash
#   \n	  New Line
#   \r	  Carriage Return
#   \t	  Tab
#   \b	  Backspace


## Comparing Strings
# We use the == operator to compare two strings. 
# If two strings are equal, the operator returns TRUE. Otherwise, it returns FALSE. For example,
message1 <- "Hello, World!"
message2 <- "Hola, Mundo!"
message3 <- "Hello, World!"

# compare message1 and message2 
print(message1 == message2)

# compare message1 and message3 
print(message1 == message3)


## Change the case of the String
message <- "R Programming"

# change string to uppercase
message_upper <- toupper(message)
cat("Uppercase:", message_upper)

# change string to lowercase
message_lower <- tolower(message)
cat("\nLowercase:", message_lower)












