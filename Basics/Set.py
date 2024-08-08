# Unordered
thisset = {"apple", "banana", "cherry"}
print(thisset)



# Duplicate not allowed
thisset = {"apple", "banana", "cherry", "apple"}
print(thisset)

thisset = {"apple", "banana", "cherry", True, 1, 2}

print(thisset)



# Length of the set
thisset = {"apple", "banana", "cherry"}

print(len(thisset))




# Set Items-Data type
set1 = {"apple", "banana", "cherry"}
set2 = {1, 5, 7, 9, 3}
set3 = {True, False, False}

print(set1)
print(set2)
print(set3)



# Can contains different data types
set1 = {"abc", 34, True, 40, "male"}

print(set1)



# data type
myset = {"apple", "banana", "cherry"}

print(type(myset))


thisset = set(("apple", "banana", "cherry"))
print(thisset)
# Note: the set list is unordered, so the result will display the items in a random order.



# Access items
thisset = {"apple", "banana", "cherry"}

for x in thisset:
    print(x)
    
    
#
thisset = {"apple", "banana", "cherry"}

print("banana" in thisset)




# Add set items
thisset = {"apple", "banana", "cherry"}

thisset.add("orange")

print(thisset)



# To add items from another set into the current set, use the update() method.
thisset = {"apple", "banana", "cherry"}
tropical = {"pineapple", "mango", "papaya"}

thisset.update(tropical)

print(thisset)



# Add any iterable
thisset = {"apple", "banana", "cherry"}
mylist = ["kiwi", "orange"]

thisset.update(mylist)

print(thisset)



# Remove set items
thisset = {"apple", "banana", "cherry"}

thisset.remove("banana")

print(thisset)



# Remove "banana" by using the discard() method:
thisset = {"apple", "banana", "cherry"}

thisset.discard("banana")

print(thisset)



# Remove a random item by using the pop() method:
thisset = {"apple", "banana", "cherry"}

x = thisset.pop()

print(x)

print(thisset)



# The clear() method empties the set:

thisset = {"apple", "banana", "cherry"}

thisset.clear()

print(thisset)



# The del keyword will delete the set completely:
thisset = {"apple", "banana", "cherry"}

# del thisset

print(thisset)



# loop items
thisset = {"apple", "banana", "cherry"}

for x in thisset:
    print(x)



# Join Sets

# union
set1 = {"a", "b", "c"}
set2 = {1, 2, 3}

set3 = set1.union(set2)
print(set3)

set3 = set1 | set2
print(set3)



# join multiple sets
set1 = {"a", "b", "c"}
set2 = {1, 2, 3}
set3 = {"John", "Elena"}
set4 = {"apple", "bananas", "cherry"}

myset = set1.union(set2, set3, set4)
print(myset)

myset = set1 | set2 | set3 | set4
print(myset)



# join a set and a tuple 
x = {"a", "b", "c"}
y = (1, 2, 3)

z = x.union(y)
print(z)



# update
set1 = {"a", "b", "c"}
set2 = {1, 2, 3}

set1.update(set2)
print(set1)


# intersection
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1.intersection(set2)
print(set3)


# the & operator instead of the intersection() method
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1.intersection(set2)
print(set3)



# The intersection_update() method will also keep ONLY the duplicates,
# but it will change the original set instead of returning a new set.
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set1.intersection_update(set2)

print(set1)



# The values True and 1 are considered the same value. The same goes for False and 0.
set1 = {"apple", 1,  "banana", 0, "cherry"}
set2 = {False, "google", 1, "apple", 2, True}

set3 = set1.intersection(set2)

print(set3)



# Difference
# The difference() method will return a new set that will contain only 
# the items from the first set that are not present in the other set.
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1.difference(set2)

print(set3)


# You can use the - operator instead of the difference() method, and you will get the same result.
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1 - set2
print(set3)



# Use the difference_update() method to keep the items that are not present in both sets:
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set1.difference_update(set2)

print(set1)



# The symmetric_difference() method will keep only the elements that are NOT present in both sets.
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1.symmetric_difference(set2)

print(set3)



# You can use the ^ operator instead of the symmetric_difference() method, 
# and you will get the same result.
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1 ^ set2
print(set3)



# Use the symmetric_difference_update() method to keep 
# the items that are not present in both sets:
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set1.symmetric_difference_update(set2)

print(set1)


"""
Method	                     Shortcut   Description
add()	 	                            Adds an element to the set
clear()	 	                            Removes all the elements from the set
copy()	 	                            Returns a copy of the set
difference()	                -	    Returns a set containing the difference between two or more sets
difference_update()             -=      Removes the items in this set that are also included in another, specified set
discard()	 	                        Remove the specified item
intersection()	                &	    Returns a set, that is the intersection of two other sets
intersection_update()	        &=	    Removes the items in this set that are not present in other, specified set(s)
isdisjoint()	 	                    Returns whether two sets have a intersection or not
issubset()	                    <=	    Returns whether another set contains this set or not
 	                            <	    Returns whether all items in this set is present in other, specified set(s)
issuperset()	                >=      Returns whether this set contains another set or not
 	                            >	    Returns whether all items in other, specified set(s) is present in this set
pop()	 	                            Removes an element from the set
remove()	 	                        Removes the specified element
symmetric_difference()	        ^       Returns a set with the symmetric differences of two sets
symmetric_difference_update()	^=	    Inserts the symmetric differences from this set and another
union()	                        |	    Return a set containing the union of sets
update()	                    |=	    Update the set with the union of this set and others
"""