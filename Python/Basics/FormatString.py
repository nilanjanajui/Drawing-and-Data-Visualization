# we cannot combine strings and numbers.

# F-Strings
# To specify a string as an f-string, simply put an f in front of the string literal, 
# and add curly brackets {} as placeholders for variables and other operations.
age = 36
txt = f"My name is John, I am {age}"
print(txt)


# Placeholders and Modifiers:
# A placeholder can contain variables, operations, functions, and modifiers to format the value.

# Add a placeholder for the price variable:
price = 59
txt = f"The price is {price} dollars"
print(txt)


txt = f"The price is {20 * 59} dollars"
print(txt)