data = read.csv("practice.csv")

Rova = data$X
N = data$Y
print(data)

barplot(Rova, names.arg = N, col = "Yellow",main = "Barplot of X", xlab= "X", ylab = "Y", horiz = T)
barplot(Y~X, col = "Yellow", main = "Barplot of X", xlab= "X", ylab = "Y")



# read airtravel.csv file from our current directory

read_data <- read.csv("practice.csv")

# display csv file
print(read_data)

x_axis <- read_data$X
y_axis <- read_data$Y

barplot(x_axis, names.arg= y_axis, col = "Yellow", main = "Barplot of X", xlab= XX, ylab = YY, horiz = T)


