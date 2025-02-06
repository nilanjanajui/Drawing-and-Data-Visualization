# When we are working with R in an interactive session, 
# we can use readline() function to take input from the user (terminal).
# This function will return a single element character vector.
# So, if we want numbers, we need to do appropriate conversions.


my.name <- readline(prompt="Enter name: ")
my.age <- readline(prompt="Enter age: ")

# convert character into integer
my.age <- as.integer(my.age)

print(paste("Hi,", my.name, "next year you will be", my.age+1, "years old."))

# Here, we see that with the prompt argument 
# we can choose to display an appropriate message for the user.
# In the above example, we convert the input age, 
# which is a character vector into integer using the function as.integer().
# This is necessary for the purpose of doing further calculations.