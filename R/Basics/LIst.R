# A List is a collection of similar or different types of data.
# In R, we use the list() function to create a list. For example,

# list with similar type of data 
list1 <- list(24, 29, 32, 34)

# list with different type of data
list2 <- list("Ranjy", 38, TRUE)


## Access List Elements

list1 <- list(24, "Sabby", 5.4, "Nepal")

# access 1st item
print(list1[1]) # 24

# access 4th item
print(list1[4]) # Nepal


## Modify a List Element
# To change a list element, we can simply reassign a new value to the specific index. For example,
list1 <- list(24, "Sabby", 5.4, "Nepal")

# change element at index 2
list1[2] <- "Cathy"

# print updated list
print(list1)


## Add Item to List
# We use the append() function to add an item at the end of the list. For example,
list1 <- list(24, "Sabby", 5.4, "Nepal")

# using append() function 
append(list1, 3.14)

#
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange ", after = 2)


## Remove Item from List
# R allows us to remove items for a list. We first access elements using a list 
# index and add negative sign - to indicate we want to delete the item. For example,
list_rm <- list(24, "Sabby", 5.4, "Nepal")

# remove 4th item
print(list1[-4]) # Nepal


## Length of a List
list1 <- list(24, "Sabby", 5.4, "Nepal")

# find total elements in list1 using length()
cat("Total Elements:", length(list1))


## Loop Over a List
items <- list(24, "Sabby", 5.4, "Nepal")

# iterate through each elements of numbers
for (item in items) {
  print(item)
}


## Check if elements are exist in List
# In R, we use the %in% operator to check if the specified element is present 
# in the list or not and returns a boolean value.
# TRUE - if specified element is present in the list
# FALSE - if specified element is not present in the list

list1 <- list(24, "Sabby", 5.4, "Nepal")

"Sabby" %in% list1 # TRUE

"Kinsley" %in% list1 # FALSE


## Range of Indexes
thislist1 <- list("apple", "banana", "cherry", "orange ", "kiwi", "melon", "mango")

(thislist)[2:5]


## Join Two Lists
list1 <- list("a", "b", "c")
list2 <- list(1, 2, 3)
list3 <- c(list1,list2)

list3


