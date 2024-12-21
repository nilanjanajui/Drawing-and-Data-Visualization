# Quote insides qoute 
print("It's alright")
print("He is called 'Johnny'")
print('He is called "Johnny"')


# Multiline Strings: assign a multiline string to a variable
# by using three single or double quotes
a = """
Lorem ipsum dolor sit amet,  
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."""

print(a)  # Note: in the result, the line breaks are inserted
          # at the same position as in the code.
          
          
# Strings are arrays
a = "Hello, World!"
print(a[1])        


# Looping through a string
for x in "Banana":
    print(x)
    
    
# Check string
txt = "The best things in life are free!"
print("free" in txt)            # Check if "free" is present in the following text
# with 'if' statement
txt = "The best things in life are free!"
if "free" in txt:
    print("Yes, 'free' is present.")


txt = "The best things in life are free!"
print("expensive" not in txt)       # Check if "expensive" is not present in the following text
# with 'if' statement
txt = "The best things in life are free!"
if "free" in txt:
    print("No, 'expensive' is not present.")