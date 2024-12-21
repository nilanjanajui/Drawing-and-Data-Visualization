thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
print(thisdict)



# Dictionary Items
# Dictionary items are ordered, changeable, and do not allow duplicates.
thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
print(thisdict["brand"])



# Duplicates Not Allowed
thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964,
    "year": 2020
}
print(thisdict)
print(len(thisdict)) # dictionary lenth



# Dictionary items can be any data types
mydict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964,
    "colors": ["red", "white", "blue"]
}
print(mydict)
print(type(mydict))



# The dict() Constructor
# It is also possible to use the dict() constructor to make a dictionary.
mydict = dict(name = "John", age = 36, country = "Norway")
print(mydict)




# Access Items
thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
x = thisdict["model"]
print(thisdict)

# get method
thisdict =	{
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
x = thisdict.get("model")
print(x)

# get keys
thisdict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964
}
x = thisdict.keys()
print(x)

# 