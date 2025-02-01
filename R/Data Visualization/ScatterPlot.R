x <- c(1, 2, 2, 3, 4, 9, 3, 4, 8, 7, 10, 11, 13)
y <- c(88, 87, 99, 121, 65, 87, 95, 86, 83, 80, 90, 110, 112)

plot(x, y)

plot(x, y, main = "Observation of Cars", xlab = "car ages", ylab = "speed")


# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)



## Interactive Scatter Plot using ggplot

library(ggplot2)

data <- data.frame(x = c(1, 2, 3, 4, 5), 
                   y = c(2, 4, 3, 8, 7))

ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Basic Scatter Plot", 
       x = "X-axis Label", 
       y = "Y-axis Label") +
  theme_minimal()


# CUstomize with color & size
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 5, shape = "diamond") +
  labs(title = "Customized Scatter Plot",
       x = "X-axis Label",
       y = "Y-axis Label") +
  theme_minimal()


# Add label & Title
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "red", size = 4) +
  labs(title = "Scatter Plot with Titles",
       subtitle = "An example of ggplot2 scatter plot",
       x = "X Values",
       y = "Y Values",
       caption = "Data source: Example") +
  theme_light()


# Multiple Group
data <- data.frame(x = c(1, 2, 3, 4, 5, 6, 7, 8),
                   y = c(3, 5, 4, 7, 6, 8, 5, 9),
                   group = rep(c("Group A", "Group B"), each = 4))

ggplot(data, aes(x = x, y = y, color = group)) +
  geom_point(size = 5, shape = 18) +
  labs(title = "Scatter Plot with Groups",
       x = "X-axis",
       y = "Y-axis") +
  theme_grey()


# Scatter Plot with Trend line or smooth line
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = T, color = "red") +
  labs(title = "Scatter Plot with Trend Line",
       x = "X-axis",
       y = "Y-axis") +
  theme_classic()


# Loess line
data <- data.frame(x = 1:100,
                   y = rnorm(100, mean = 5, sd = 2) + 0.05 * (1:100))


ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "loess", color = "blue", se = TRUE) +
  labs(title = "Scatter Plot with LOESS Line",
       x = "X-axis",
       y = "Y-axis") +
  theme_minimal()



# Scatter plot with facet
set.seed(123)       # set.seed() for control different output at every run.

data <- data.frame(x = rnorm(30),
                   y = rnorm(30),
                   group = rep(c("Group A", "Group B", "Group C"), each = 10))

ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3) +
  facet_wrap(~ group, ncol = 2) +
  labs(title = "Scatter Plot with Facets",
       x = "X-axis",
       y = "Y-axis") +
  theme_bw()


# Scatter Plot with error bar
data <- data.frame(x = c(1, 2, 3, 4, 5), 
                   y = c(2, 4, 3, 8, 7),
                   ymin = c(1.5, 3.5, 2.5, 7.5, 6.5),
                   ymax = c(2.5, 4.5, 3.5, 8.5, 7.5))

ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3) +
  geom_errorbar(aes(ymin = ymin, ymax = ymax), width = 0.2, color = "red") +  # For error bar
  labs(title = "Scatter Plot with Error Bars",
       x = "X-axis",
       y = "Y-axis") +
  theme_bw()


# Density Overlay
set.seed(42)
data <- data.frame(x = rnorm(100), y = rnorm(100))

ggplot(data, aes(x = x, y = y)) +
  geom_point(alpha = 0.6, color = "blue") +   # "alpha" for transparency or opacity
  geom_density_2d(color = "red") +
  labs(title = "Scatter Plot with Density Overlay",
       x = "X-axis",
       y = "Y-axis") +
  theme_minimal()


# Scatter plot with bubble size
data <- data.frame(x = c(1, 2, 3, 4, 5),
                   y = c(2, 4, 3, 8, 7),
                   size = c(5, 10, 15, 20, 25))

ggplot(data, aes(x = x, y = y, size = size)) +
  geom_point(color = "firebrick", alpha = 0.5) +
  scale_size_continuous(name = "Bubble Size") +
  labs(title = "Scatter Plot with Bubble Sizes",
       x = "X-axis",
       y = "Y-axis") +
  theme_light()


# Scatter Plot with Gradient Color
data <- data.frame( x = c(1, 2, 3, 4, 5), 
                    y = c(2, 4, 3, 8, 7), 
                    color = c(10, 20, 30, 40, 50))

ggplot(data, aes(x = x, y = y, color = color)) +
  geom_point(size = 4) +
  scale_color_gradient(low = "darkblue", high = "red") +
  labs(title = "Scatter Plot with Gradient Colors",
       x = "X-axis",
       y = "Y-axis",
       color = "Intensity") +
  theme_minimal()


# Annotation
# Sample data
data <- data.frame(x = c(1, 2, 3, 4, 5), 
                   y = c(2, 4, 3, 8, 7))

# Scatter plot with annotations
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3) +
  annotate("text", x = 4, y = 8.2, label = "Highest Point", color = "red", size = 5) +
  labs(title = "Scatter Plot with Annotations",
       x = "X-axis",
       y = "Y-axis") +
  expand_limits(x = 0, y = 0) +
  theme_minimal()


# Multiple Scatter Plot
data <- data.frame(x = rnorm(100),
                   y = rnorm(100),
                   category = rep(c("Category 1", "Category 2", "Category 3"), length.out = 100))

ggplot(data, aes(x = x, y = y)) +
  geom_point(alpha = 0.6, color = "blue") +
  facet_wrap(~ category, nrow = 2) +
  labs(title = "Scatter Plot with Facets",
       x = "X-axis",
       y = "Y-axis") +
  theme_bw()


# Prediction ellipse
data <- data.frame(x = c(1, 2, 3, 4, 5, 6, 7, 8),
                   y = c(3, 5, 4, 7, 6, 8, 5, 9),
                   group = rep(c("Group A", "Group B"), each = 4))

ggplot(data, aes(x = x, y = y, color = group)) +
  geom_point(size = 5, shape = 18) +
  labs(title = "Scatter Plot with Groups",
       x = "X-axis",
       y = "Y-axis") +
  stat_ellipse() +
  theme_grey()


