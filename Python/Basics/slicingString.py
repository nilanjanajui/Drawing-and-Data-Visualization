# Slicing

# Get the characters from position 2 to position 5 (not included):
b = "Hello, World!"
print(b[2:5])


# Slice From the Start

# Get the characters from the start to position 5 (not included):
b = "Hello, World!"
print(b[:5])


# Slice To the End

# Get the characters from position 2, and all the way to the end:
b = "Hello, World!"
print(b[2:])


# Negative Indexing: Use negative indexes to start the slice from the end of the string

#From: "o" in "World!" (position -5) To, but not included: "d" in "World!" (position -2):
b = "Hello, World!"
print(b[-5:-2])