thistuple = ("apple", "banana", "cherry", "banana", "cherry")
print(thistuple)
print(len(thistuple))

# Tuple items are ordered, unchangeable, and allow duplicate values.



# To create a tuple with only one item, you have to add a comma after the item, 
# otherwise Python will not recognize it as a tuple.
thistuple = ("apple",)
print(type(thistuple))

#NOT a tuple
thistuple = ("apple")
print(type(thistuple))



# tuple items can be any data type
tuple1 = ("apple", "banana", "cherry")
tuple2 = (1, 5, 7, 9, 3)
tuple3 = (True, False, False)

print(tuple1)
print(tuple2)
print(tuple3)



# A tuple can contain different data types:
tuple1 = ("abc", 34, True, 40, "male")

print(tuple1)



# Access tuple items by referring to the index number, inside square brackets:

thistuple = ("apple", "banana", "cherry")
print(thistuple[1])
print(thistuple[-1])



# You can specify a range of indexes by specifying where to start and where to end the range.
# When specifying a range, the return value will be a new tuple with the specified items.

thistuple = ("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
print(thistuple[2:5])
print(thistuple[:4])
print(thistuple[2:])
print(thistuple[-4:-1])




# Check if Item Exists
# To determine if a specified item is present in a tuple use the in keyword:
thistuple = ("apple", "banana", "cherry")
if "apple" in thistuple:
    print("Yes, 'apple' is in the fruits tuple")
    
    
    


# Once a tuple is created, you cannot change its values. 
# Tuples are unchangeable, or immutable as it also is called.
# But there is a workaround. You can convert the tuple into a list, 
# change the list, and convert the list back into a tuple.
x = ("apple", "banana", "cherry")
y = list(x)
y[1] = "kiwi"
x = tuple(y)

print(x)



# ADD ITEMS
# Convert into a list: Just like the workaround for changing a tuple, 
# you can convert it into a list, add your item(s), and convert it back into a tuple.
thistuple = ("apple", "banana", "cherry")
y = list(thistuple)
y.append("orange")
thistuple = tuple(y)
print(thistuple)

# Add tuple to a tuple. You are allowed to add tuples to tuples, 
# so if you want to add one item, (or many), create a new tuple with the item(s), 
# and add it to the existing tuple:
thistuple = ("apple", "banana", "cherry")
y = ("orange",)
thistuple += y
print(thistuple)



# REMOVE ITEMS
#Convert the tuple into a list, remove "apple", and convert it back into a tuple:

thistuple = ("apple", "banana", "cherry")
y = list(thistuple)
y.remove("apple")
thistuple = tuple(y)
print(thistuple)


"""
thistuple = ("apple", "banana", "cherry")
del thistuple
print(thistuple) #this will raise an error because the tuple no longer exists
"""


# UNPACKING
fruits = ("apple", "banana", "cherry")

(green, yellow, red) = fruits

print(green)
print(yellow)
print(red)


# USING ASTERISK
# If the number of variables is less than the number of values, 
# you can add an * to the variable name and the values will be assigned to the variable as a list:
fruits = ("apple", "banana", "cherry", "strawberry", "raspberry")

(green, yellow, *red) = fruits

print(green)
print(yellow)
print(red)


# 
fruits = ("apple", "mango", "papaya", "pineapple", "cherry")

(green, *tropic, red) = fruits

print(green)
print(tropic)
print(red)



# LOOP 
# Iterate through the items and print the values:
thistuple = ("apple", "banana", "cherry")
for x in thistuple:
    print(x)


# You can also loop through the tuple items by referring to their index number.
# Use the range() and len() functions to create a suitable iterable.
thistuple = ("apple", "banana", "cherry")
for i in range(len(thistuple)):
    print(thistuple[i])


# You can loop through the tuple items by using a while loop.
# Use the len() function to determine the length of the tuple,
# then start at 0 and loop your way through the tuple items by referring to their indexes.
# Remember to increase the index by 1 after each iteration.
thistuple = ("apple", "banana", "cherry")
i = 0
while i < len(thistuple):
    print(thistuple[i])
    i = i + 1



# JOIN TUPLE
tuple1 = ("a", "b" , "c")
tuple2 = (1, 2, 3)

tuple3 = tuple1 + tuple2
print(tuple3)

# Multiply
fruits = ("apple", "banana", "cherry")
mytuple = fruits * 2

print(mytuple)


# TUPLE METHOD
# count
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)

x = thistuple.count(5)

print(x)

#index
thistuple = (1, 3, 7, 8, 7, 5, 4, 6, 8, 5)

x = thistuple.index(8)

print(x)