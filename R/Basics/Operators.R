## In R, boolean variables can take only 2 values: TRUE and FALSE. For example,

# declare boolean 
x <- TRUE
print(x)
print(class(x))

# declare boolean using single character
y <- FALSE
print(y)
print(class(y))


## COMPARISON OPERATOR ##
# Operator    Description	    Example
#   >	        Greater than	  5 > 6 returns FALSE

#   <         Less than       5 < 6 returns TRUE

#   ==      	Equals to       10 == 10 returns TRUE

#   !=	      Not equal to	  10 != 10 returns FALSE

#   >=	      Greater than    5 >= 6 returns FALSE
#             or equal to	

#   <=	      Less than or    6 <= 6 returns TRUE
#             equal to	


x <- 10
y <- 23

# compare x and y
print(x == y)  # FALSE
print(x<y)


## AND Operator
# print & of TRUE and FALSE combinations
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE


x <- 10
y <- 23
z <- 12

print(x<y & y>z)


## OR Operator
# print | of TRUE and FALSE combinations
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE


w <- 54
x <- 12
y <- 25
z <- 1

print(w>x | x>y | z>w)


## NOT Operator
# print ! of TRUE and FALSE
!TRUE
!FALSE


x <- 3 + 5i

# using ! with in-built function
print(!is.numeric(x))     # Here, since x is of type complex, the function is.numeric(x) 
                          # evaluates to FALSE and the negation of FALSE is TRUE, hence the output.


## Arithmetic Operator

x <- 2
y <- 5

print(x^y)    # Exponent
print(y%%x)    # Modulus
 


a <- 15
b <- 2

print(a%/%b)    #Integer Division
# the integer division (%/%) rounds the result down to the nearest whole number



