# Histogram is used to summarize discrete or continuous data that are measured on an interval scale.

## Create a Histogram 
# We use hist() function to create histogram
temperatures <- c(67, 72, 74, 62, 76, 66, 65, 59, 61, 69)

result <- hist(temperatures)

print(result)


## Add label & title
result2 <- hist(temperatures,
               main = "Histogram of Temperature",
               xlab = "Temperature in degrees Fahrenheit")
print(result2)


## Change color
result3 <- hist(temperatures,
               main = "Histogram of Temperature",
               xlab = "Temperature in degrees Fahrenheit",
               col = "dodgerblue",
               border = "firebrick")


## Range of Axes
result4 <- hist(temperatures,
               main = "Histogram of Temperature",
               xlab = "Temperature in degrees Fahrenheit",
               col = "dodgerblue",
               border = "firebrick",
               xlim = c(50, 100),
               ylim = c(0, 5))


## Number of Bins
hist(temperatures, 
     breaks = 10,  # Specify the number of bins
     main = "Histogram with 10 Bins", 
     col = "orange",
     xlim = c(50, 100),
     ylim = c(0,5),
     labels = T)


## Interactive histogram using ggplot2

set.seed(123) # Set seed for reproducibility
data <- data.frame(value = rnorm(100, mean = 50, sd = 10))

ggplot(data, aes(x = value)) +
  geom_histogram(binwidth = 2, fill = "blue", color = "black", alpha = 0.7) +
  labs(
    title = "Histogram of Randomly Generated Data",
    x = "Value",
    y = "Frequency") +
  theme_minimal()


# with custom binwidth
set.seed(123)
data <- data.frame(
  value = c(rnorm(100, mean = 50, sd = 10), rnorm(100, mean = 60, sd = 15)),
  group = rep(c("Group A", "Group B"), each = 100)
)

ggplot(data, aes(x = value)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "white", alpha = 0.8) +
  labs(
    title = "Basic Histogram with Binwidth = 5",
    x = "Value",
    y = "Frequency") +
  theme_bw()


# With density curve overlay
ggplot(data, aes(x = value)) +
  geom_histogram(aes(y = ..density..), 
                 binwidth = 5, 
                 fill = "lightblue", color = "darkblue", alpha = 0.6) +
  geom_density(color = "red", size = 1) +
  labs(
    title = "Histogram with Density Curve",
    x = "Value",
    y = "Density") +
  theme_bw()


# Faceted Histogram
ggplot(data, aes(x = value, fill = group)) +
  geom_histogram(binwidth = 5, position = "dodge", alpha = 0.7) +
  facet_wrap(~ group, ncol = 1) +
  labs(
    title = "Faceted Histogram by Group",
    x = "Value",
    y = "Frequency") +
  theme_bw()


# Combined histogram with group differentiation
ggplot(data, aes(x = value, fill = group)) +
  geom_histogram(binwidth = 5, position = "identity", alpha = 0.5) +
  scale_fill_manual(values = c("Group A" = "blue", "Group B" = "orange")) +
  labs(
    title = "Combined Histogram with Transparency",
    x = "Value",
    y = "Frequency",
    fill = "Group") +
  theme_bw()


# Add title & caption
ggplot(data, aes(x = value)) +
  geom_histogram(binwidth = 5, 
                 fill = "steelblue", color = "black", alpha = 0.7) +
  labs(
    title = "Fully Customized Histogram",
    subtitle = "With a detailed subtitle",
    caption = "Data source: Simulated random values",
    x = "Value Range",
    y = "Frequency") +
  theme(
    plot.title = element_text(size = 18, face = "bold", hjust = 0.5),
    plot.subtitle = element_text(size = 14, face = "italic", hjust = 0.5),
    plot.caption = element_text(size = 10, face = "italic"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10))


## Kernel density plot
# Creating plot
ggplot(data, aes(x = value)) +
  geom_density(fill = "lightblue", alpha = 0.7) +
  labs(
    title = "Kernel Density Plot",
    x = "Value",
    y = "Density") +
  theme_bw()


# Overlay
ggplot(data, aes(x = value)) +
  geom_histogram(aes(y = ..density..), 
                 bins = 30, 
                 fill = "lightgrey", color = "black", alpha = 0.5) +
  geom_density(color = "blue", size = 1.2) +
  labs(
    title = "Histogram with Density Overlay",
    x = "Value",
    y = "Density") +
  theme_minimal()


# Multiple group
set.seed(123)
grouped_data <- data.frame(
  value = c(rnorm(500, mean = 50, sd = 10), rnorm(500, mean = 60, sd = 10)),
  group = rep(c("Group A", "Group B"), each = 500)
)

ggplot(grouped_data, aes(x = value, fill = group)) +
  geom_density(alpha = 0.5) +
  scale_fill_manual(values = c("Group A" = "blue", "Group B" = "red")) +
  labs(
    title = "Kernel Density Plot by Group",
    x = "Value",
    y = "Density",
    fill = "Group") +
  theme_minimal()


# Add rug
ggplot(data, aes(x = value)) +
  geom_density(fill = "purple", alpha = 0.6) +
  geom_rug(color = "darkblue", size = 0.8) +
  labs(
    title = "Kernel Density Plot with Rug",
    x = "Value",
    y = "Density") +
  theme_light()


