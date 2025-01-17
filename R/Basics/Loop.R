
### WHILE LOOP ###

# variable to store current number
number = 1

# variable to store current sum
sum = 0

# while loop to calculate sum
while(number <= 10) {
  
  # calculate sum
  sum = sum + number
  
  # increment number by 1
  number = number + 1
}

print(sum)


## Break Statement
# The break statement in R can be used to stop 
#the execution of a while loop even when the test expression is TRUE. For example,
number = 1

# while loop to print numbers from 1 to 5
while(number <= 10) {
  print(number)
  
  # increment number by 1
  number = number + 1 
  
  # break if number is 6
  if (number == 6) {
    break
  } 

}


## Next statement
# We can use the next statement in a while loop to skip an 
# iteration even if the test condition is TRUE. For example,
number = 1

# while loop to print odd number between 1 to 10
while(number <= 10) {
  
  # skip iteration if number is even
  if (number %% 2 == 0) {  
    number = number + 1
    next
  }
  
  # print number if odd
  print(number)
  
  # increment number by 1
  number = number + 1  
}


## Yahtzee Game 
dice <- 1
while (dice <= 6) {
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  dice <- dice + 1
}




### FOR LOOP ###
# syntax
for (value in sequence) {
  # block of code
}

#
numbers = c(1, 2, 3, 4, 5)

# for loop to print all elements in numbers
for (x in numbers) {
  print(x)
}


## Count the number of even numbers
# vector of numbers
num = c(2, 3, 12, 14, 5, 19, 23, 64)

# variable to store the count of even numbers
count = 0

# for loop to count even numbers
for (i in num) {
  
  # check if i is even
  if (i %% 2 == 0) {
    count = count + 1
  }
}

print(count)


## Break Statement
# vector of numbers
numbers = c(2, 3, 12, 14, 5, 19, 23, 64)

# for loop with break
for (i in numbers) {
  
  # break the loop if number is 5
  if( i == 5) {
    break
  }
  
  print(i)
}


## Next statement
# vector of numbers
numbers = c(2, 3, 12, 14, 5, 19, 23, 64)

# for loop with next
for (i in numbers) {
  
  # use next to skip odd numbers
  if( i %% 2 != 0) {
    next
  }
  
  print(i)
}


## Nested for loop
# vector of numbers
sequence_1 = c(1, 2, 3)
sequence_2 = c(1, 2, 3)

# nested for loop
for (i in sequence_1) {
  for (j in sequence_2) {
    
    # check if sum is even
    if ( (i+j) %% 2 == 0 ) {
      print(paste(i, j))   
    }
    
  }
}

