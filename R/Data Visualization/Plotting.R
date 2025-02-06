plot(1, 3)


plot(c(1, 4), c(3, 8))

## Multiple Points
plot(c(1, 3, 5, 7), c(2, 4, 6, 8))


x <- c(1, 2, 3, 4, 5)
y <- c(3, 4, 6, 7, 9)

plot(x, y)


## Sequence
plot(1:10)


## Draw a Line
plot(1:10, type = "l")


## Plot Labels
plot(1:10, main = "My Graph", xlab = "x-axis", ylab = "y-axis")


## Graph Appearance

# Color
plot(1:10, col = "red")

# Size
plot(1:10, cex = 2)

# Shape
plot(1:10, pch = 8, cex =2)


## Finally
plot(1:10, main = "My Graph", xlab = "x-axis", ylab = "y-axis", col = "darkblue", pch = 8, cex = 2)



