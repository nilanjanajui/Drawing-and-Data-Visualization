library(readr)
library(dplyr)
library(ggplot2)


# Read airtravel.csv file
# testing
read_data <- read.csv("airtravel.csv")    # Default header is always true, 
                                          # we can print without header by 'header = F'
print(read_data)
str(read_data)    # importing data

# Number of rows and Column
cat("Total Columns: ", ncol(read_data))

cat("Total Rows:", nrow(read_data))

# Minimum & Maximum Data
min_data <- min(read_data$X1960)
print(min_data)

max_data <- max(read_data$X1958)
print(max_data)

# Subset of csv file
sub_data <- subset(read_data, X1958 > 400)
print(sub_data)

# Write into CSV file
# for writing data need to be pass as matrix or dataframe
dataframe1 <- data.frame(Name = c("Juan", "Alcaraz", "Simantha"),
                         Age = c(22, 15, 19),
                         Vote = c(TRUE, FALSE, TRUE))

write_data <- write.csv(dataframe1, "file1.csv")
write_data <- write.csv(dataframe1, "file1.csv", quote = F)

# append csv file
dataframe2 <- data.frame(Name = "John",
                         age = 20,
                         Vote = TRUE)
write_data2 <- write.table(dataframe2, "file1.csv",
                           append = TRUE,
                           sep = ",",
                           col.names = FALSE,
                           row.names = FALSE,
                           quote = FALSE)


# Basic Plotting

read_data <- read.csv("airtravel.csv")
ggplot(read_data, aes(x = Month, y = X1959)) +
  geom_bar(stat = "identity", fill = "steelblue3", width = 0.5) +
  theme_bw()
 


## Plotting by using ggplot2

# Read customers-100.csv file
customers_data <- read.csv("customers-100.csv")

# Line plot of purchase over time
customers_data$PurchaseDate <- as.Date(data$PurchaseDate)   # Convert purchaseDate to Date type

ggplot(customers_data, aes(x = PurchaseDate, y = PurchaseAmount)) +
  geom_line(color = "blue", linewidth = 1) +
  geom_point(color = "red", size = 2) +
  labs(title = "Purchases Over Time", x = "Date", y = "Purchase Amount") +
  theme_bw()


# Bar plot of total purchase by region
ggplot(customers_data, aes(x = Region, y = PurchaseAmount, fill = Region)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Total Purchases by Region", x = "Region", y = "Total Purchase") +
  theme_minimal()


# Scatter Plot of purchase customer
ggplot(customers_data, aes(x = CustomerID, y = PurchaseAmount, color = Region)) +
  geom_point(size = 3) +
  labs(title = "Scatter Plot of Purchases by Customer", x = "Customer ID", y = "Purchase Amount") +
  theme_minimal()


# faceted plot
ggplot(customers_data, aes(x = PurchaseDate, y = PurchaseAmount)) +
  geom_line(size = 1, color = "blue") +
  geom_point(size = 2, color = "red") +
  facet_wrap(~ Region) +
  labs(title = "Purchase Trends by Region", x = "Date", y = "Purchase Amount") +
  theme_bw()


# time series with smoothing
ggplot(customers_data, aes(x = PurchaseDate, y = PurchaseAmount)) +
  geom_line(color = "blue", size = 1) +
  geom_smooth(method = "loess", se = TRUE, color = "red") +
  labs(title = "Time Series with Smoothing", x = "Date", y = "Purchase Amount") +
  theme_minimal()


# density Plot
ggplot(customers_data, aes(x = PurchaseAmount, fill = Region)) +
  geom_density(alpha = 0.5) +
  labs(title = "Density Plot of Purchase Amount", x = "Purchase Amount", y = "Density") +
  theme_minimal()


# BoxPlot to compare purchase amount
ggplot(customers_data, aes(x = Region, y = PurchaseAmount, fill = Region)) +
  geom_boxplot() +
  labs(title = "Boxplot of Purchase Amount by Region", x = "Region", y = "Purchase Amount") +
  theme_bw()


# Histogram of purchases
ggplot(customers_data, aes(x = PurchaseAmount)) +
  geom_histogram(binwidth = 50, fill = "steelblue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Purchase Amount", x = "Purchase Amount", y = "Frequency") +
  theme_bw()


# Scatter Plot pairwise
library(GGally)

ggpairs(customers_data[, c("CustomerID", "PurchaseAmount")], 
        title = "Pairwise Scatter Plot") +
  theme_bw()


# Combine plots with patchwork
library(patchwork)

p1 <- ggplot(customers_data, aes(x = PurchaseDate, y = PurchaseAmount)) +
  geom_line(color = "blue", size = 1) +
  labs(title = "Line Plot")

p2 <- ggplot(customers_data, aes(x = Region, y = PurchaseAmount, fill = Region)) +
  geom_boxplot() +
  labs(title = "Boxplot")

p1 + p2 + plot_layout(ncol = 1)     # combine plots



