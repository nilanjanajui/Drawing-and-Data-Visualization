x = "awesome"

def Myfunc():
    x = "fantastic" 
    print("Python is " +x)
    
Myfunc()

print("Python is " +x)  #creating a variable with the same name inside a function, 
                        #this variable will be local, and can only be used inside the function.
                        #The global variable with the same name will remain as it was, global and with the original value.
                        
                        
# To change the value of a global variable inside a function, refer to the variable by using the global keyword:

"""
x = "awesome"

def Myfunc():
    global x
    x = "fantastic" 
    print("Python is " +x)
    
Myfunc()

print("Python is " +x) """