# Factors are used to categorize data. Examples of factors are:

  # Demography: Male/Female
  # Music: Rock, Pop, Classic, Jazz
  # Training: Strength, Stamina


## create a factor
students_gender <- factor(c("male", "female", "male", "transgender", "female"))

print(students_gender)

levels(students_gender)   # only to print 'levels'

## Access Factors Elements
students_gender <- factor(c("male", "female", "male", "transgender", "female"))

print(students_gender[1])

print(students_gender[4])


## Modify Factors Elements
marital_status <- factor(c("married", "single", "divorced", "married", "single", "single"))

marital_status[1] <- "divorced"
marital_status[5] <- "widow"  # cannot change the value of a specific item if 
                              # it is not already specified in the factor.
print(marital_status)


## Factor Length
music_genre <- factor(c("jazz", "classic", "pop", "rock", "jazz", "classic", "classic", "rock"))

print(length(music_genre))


## Loop in Factors
course_list <- factor(c("CSE-214", "MAT-231", "CSE-211", "STA-251", "ENG-271"))

for(status in course_list)
  print(status)












































































































