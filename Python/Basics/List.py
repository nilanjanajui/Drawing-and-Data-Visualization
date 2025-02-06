"""
thislist = ["apple", "banana", "cherry"]
print(thislist)

print(len(thislist))
"""

"""
thislist = list(("apple", "banana", "cherry")) # note the double round-brackets
print(thislist)

print(thislist[1])

# negative indexing
print(thislist[-1])
"""


"""
# Range of Indexes
# You can specify a range of indexes by specifying where to start and where to end the range.
#When specifying a range, the return value will be a new list with the specified items.
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
print(thislist[2:5])
print(thislist[:4])
print(thislist[2:])
print(thislist[-4:-1])

if "apple" in thislist:
    print("Yes, 'apple' is in the fruit list")
"""    
    

# change items value
fruitlist = ["apple", "banana", "cherry"]
fruitlist[1] = "blackcurrent"
print(fruitlist)


# change a range of items value
fruitlist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
fruitlist[1:3] = "blackcurrent", "watermelon"
print(fruitlist)


thislist = ["apple", "banana", "cherry"]
thislist[1:2] = ["blackcurrant", "watermelon"]
print(thislist)



# If you insert less items than you replace, the new items will be inserted where you specified,
# and the remaining items will move accordingly:
thislist = ["apple", "banana", "cherry"]
thislist[1:3] = ["watermelon"]
print(thislist)



# Insert Items
# To insert a new list item, without replacing any of the existing values, 
# we can use the insert() method.
# The insert() method inserts an item at the specified index:
thislist = ["apple", "banana", "cherry"]
thislist.insert(2, "watermelon")
print(thislist)


"""
# ADD LIST ITEMS
thislist = ["apple", "banana", "cherry"]
thislist.append("orange")
print(thislist)


# Extend List
# To append elements from another list to the current list, use the extend() method.
Fruitslist = ["apple", "banana", "cherry"]
tropical = ["mango", "pineapple", "papaya"]
Fruitslist.extend(tropical)
print(Fruitslist)



# Add Any Iterable
# The extend() method does not have to append lists, you can add any iterable object (tuples, sets, dictionaries etc.).
thislist = ["apple", "banana", "cherry"]
thistuple = ("kiwi", "orange")
thislist.extend(thistuple)
print(thislist)

"""



# REMOVE LIST ITEMS

Fruits = ["apple", "banana", "cherry"]
Fruits.remove("banana")
print(Fruits)

Thislist = ["apple", "banana", "cherry", "banana", "kiwi"]
Thislist.remove("banana")
print(Thislist)


# Remove Specified Index
# The pop() method removes the specified index.
thislist = ["apple", "banana", "cherry"]
thislist.pop(1)
print(thislist)


thislist = ["apple", "banana", "cherry"]
thislist.pop()
print(thislist)

# The del keyword also removes the specified index:
thislist = ["apple", "banana", "cherry"]
del thislist[0]
print(thislist)


thislist = ["Pineapple"]
thislist.clear()
print(thislist)


# LOOP
#for loop
loopList = ["apple", "banana", "cherry"]
for x in loopList:
    print(x)
    
for i in range(len(loopList)):
    print(loopList[i])


# while loop
thislist = ["Potato", "tomato", "pepper"]
i = 0
while i < len(thislist):
    print(thislist[i])
    i = i + 1
    
    

# LIST COMPREHENSIVE

fruits = ["apple", "banana", "cherry", "kiwi", "mango"]

newlist = [x for x in fruits if "a" in x]

print(newlist)

# Syntex: "newlist = [expression for item in iterable if condition == True]"

# Condition
# The condition is like a filter that only accepts the items that valuate to True.
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]

newlist = [x for x in fruits if x != "apple"]

print(newlist) # The condition if x != "apple"  will return True for 
               #all elements other than "apple", making the new list contain all fruits except "apple".
     
     
     
               
# Iterable
newlist = [x for x in range(10)]
print(newlist)


newlist = [x for x in range(10) if x < 5]
print(newlist)



#Expression
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = [x.upper() for x in fruits]
print(newlist)


fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = ['hello' for x in fruits]
print(newlist)



# The expression can also contain conditions, not like a filter,
# but as a way to manipulate the outcome:
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = [x if x != "banana" else "orange" for x in fruits]
print(newlist)




# SORT LIST ALPHANEUMERICALLY
thislist = ["orange", "mango", "kiwi", "pineapple", "banana"]
thislist.sort()
print(thislist)


thislist = [100, 50, 65, 82, 23]
thislist.sort()
print(thislist)


# Sort Descending
thislist = ["orange", "mango", "kiwi", "pineapple", "banana"]
thislist.sort(reverse = True)
print(thislist)


thislist = [100, 50, 65, 82, 23]
thislist.sort(reverse = True)
print(thislist)



#CUSTOMIZE SORT FUNCTION
# You can also customize your own function by using the keyword argument key = function.
#The function will return a number that will be used to sort the list (the lowest number first):

def myfunc(n):
    return abs(n - 50)

thislist = [100, 50, 65, 82, 23]
thislist.sort(key = myfunc)
print(thislist)


# Case Insensitive Sort
# By default the sort() method is case sensitive,
# resulting in all capital letters being sorted before lower case letters:
thislist = ["banana", "Orange", "Kiwi", "cherry"]
thislist.sort()
print(thislist)


# Perform a case-insensitive sort of the list:
thislist = ["banana", "Orange", "Kiwi", "cherry"]
thislist.sort(key = str.lower)
print(thislist)



# REVERSE ORDER
# What if you want to reverse the order of a list, regardless of the alphabet?
# The reverse() method reverses the current sorting order of the elements.
thislist = ["banana", "Orange", "Kiwi", "cherry"]
thislist.reverse()
print(thislist)




# COPY A LIST
# You cannot copy a list simply by typing list2 = list1,
# because: list2 will only be a reference to list1,
# and changes made in list1 will automatically also be made in list2.

# There are ways to make a copy, one way is to use the built-in List method copy().
thislist = ["apple", "banana", "cherry"]
mylist = thislist.copy()
print(mylist)


# Another way to make a copy is to use the built-in method list().
thislist = ["apple", "banana", "cherry"]
mylist = list(thislist)
print(mylist)


# JOIN LIST
# Join two list:
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]
list3 = list1 + list2
print(list3)


# Append list2 into list1:
list1 = ["a", "b" , "c"]
list2 = [1, 2, 3]

for x in list2:
    list1.append(x)

print(list1)    


# Use the extend() method to add list2 at the end of list1:
list1 = ["a", "b" , "c"]
list2 = [1, 2, 3]

list1.extend(list2)
print(list1)



"""
    Method	Description
append()    Adds an element at the end of the list
clear()     Removes all the elements from the list
copy()	    Returns a copy of the list
count()	    Returns the number of elements with the specified value
extend()	Add the elements of a list (or any iterable), to the end of the current list
index()	    Returns the index of the first element with the specified value
insert()	Adds an element at the specified position
pop()	    Removes the element at the specified position
remove()	Removes the item with the specified value
reverse()	Reverses the order of the list
sort()	    Sorts the list

"""