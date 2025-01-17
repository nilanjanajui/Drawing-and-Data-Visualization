# Data frames are a data displayed in a format as a table

## Create a data frame 
# In R, we use the data.frame() function to create a Data Frame.
# The syntax of the data.frame() function is
# Create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE)
)

print(dataframe1)


## Access Data frame Column
#There are different ways to extract columns from a data frame.
# We can use [ ], [[ ]], or $ to access specific column of a data frame in R. For example,
# Create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE)
)

# pass index number inside [ ] 
print(dataframe1[1])

# pass column name inside [[  ]] 
print(dataframe1[["Name"]])

# use $ operator and column name 
print(dataframe1$Name)


## Combine Data Frames
# Combine Vertically using rbind()
# create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz"),
  Age = c(22, 15)
)

# create another data frame
dataframe2 <- data.frame (
  Name = c("Yiruma", "Bach"),
  Age = c(46, 89)
)

# combine two data frames vertically 
updated <- rbind(dataframe1, dataframe2)
print(updated)

# Combine Horizontally using cbind()
# create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz"),
  Age = c(22, 15)
)

# create another data frame
dataframe2 <- data.frame (
  Hobby = c("Tennis", "Piano")
)

# combine two data frames horizontally 
updated <- cbind(dataframe1, dataframe2)
print(updated)


## Length of Data frame
# Create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE)
)

cat("Total Elements:", length(dataframe1))
# Here, we have used length() to find the total number of columns in dataframe1. 
# Since there are 3 columns, the length() function returns 3.


## Summarize the Data
# Use the summary() function to summarize the data from a Data Frame:
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

summary(Data_Frame)


## Remove Rows and Columns
# Use the c() function to remove rows and columns in a Data Frame:
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Remove the first row and column
Data_Frame_New <- Data_Frame[-c(1), -c(1)]

# Print the new data frame
Data_Frame_New


## Amount of Rows and Columns
# Use the dim() function to find the amount of rows and columns in a Data Frame:
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

dim(Data_Frame)













