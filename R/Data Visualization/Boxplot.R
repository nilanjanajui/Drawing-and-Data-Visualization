# Simple Boxplot
data <- c(7, 8, 5, 6, 9, 11, 10, 6, 7, 8, 5, 6, 9)

boxplot(data, 
        main = "Basic Boxplot", 
        ylab = "Values", 
        col = "lightblue")


# Multiple Groups
set.seed(42)
group1 <- rnorm(50, mean = 10, sd = 2)
group2 <- rnorm(50, mean = 15, sd = 3)
group3 <- rnorm(50, mean = 20, sd = 4)

data <- data.frame(
  value = c(group1, group2, group3),
  group = rep(c("Group 1", "Group 2", "Group 3"), each = 50)
)

boxplot(value ~ group, data, 
        main = "Boxplot for Multiple Groups", 
        xlab = "Groups", 
        ylab = "Values", 
        col = c("lightblue", "lightgreen", "lightpink"))


## Interactive Boxplot Using ggplot
library(ggplot2)

set.seed(42)
data <- data.frame( value = c(group1, group2, group3),
                    group = rep(c("Group 1", "Group 2", "Group 3"), each = 50))

ggplot(data, aes(x = group, y = value)) +
  geom_boxplot(fill = c("lightblue", "lightgreen", "lightpink")) +
  labs(title = "Boxplot with ggplot2", 
       x = "Groups", 
       y = "Values") +
  theme_minimal()


# Adding points(Jitter) to Boxplot
ggplot(data, aes(x = group, y = value)) +
  geom_boxplot(fill = "lightgray", outlier.colour = "red", outlier.shape = 8) +
  geom_jitter(width = 0.2, color = "blue", alpha = 0.6) +
  labs(title = "Boxplot with Jittered Points", 
       x = "Groups", 
       y = "Values") +
  theme_minimal()


# Horizontal Boxplot
ggplot(data, aes(x = group, y = value)) +
  geom_boxplot(fill = "lightblue") +
  coord_flip() +
  labs(title = "Horizontal Boxplot", 
       x = "Values", 
       y = "Groups") +
  theme_bw()


# Boxplot with Means
means <- aggregate(value ~ group, data = data, mean)

ggplot(data, aes(x = group, y = value)) +
  geom_boxplot(fill = "lightgreen") +
  geom_point(data = means, aes(x = group, y = value), 
             color = "red", size = 3) +
  labs(title = "Boxplot with Mean Points", 
       x = "Groups", 
       y = "Values") +
  theme_minimal()


# Customize Outlier
ggplot(data, aes(x = group, y = value)) +
  geom_boxplot(fill = "lightblue", outlier.colour = "red", outlier.shape = 17, outlier.size = 3) +
  labs(title = "Boxplot with Customized Outliers", 
       x = "Groups", 
       y = "Values") +
  theme_bw()


# Adding Annotation
ggplot(data, aes(x = group, y = value)) +
  geom_boxplot(fill = "lightblue") +
  annotate("text", x = 1, y = 17, label = "High value", color = "red", size = 5) +
  annotate("segment", x = 1.5, xend = 1.5, y = 14, yend = 16, arrow = arrow(length = unit(0.2, "cm"))) +
  labs(title = "Boxplot with Annotations", 
       x = "Groups", 
       y = "Values") +
  theme_minimal()


# Faceted Boxplot
data <- data.frame(
  value = c(rnorm(50, mean = 10, sd = 2), rnorm(50, mean = 15, sd = 3)),
  group = rep(c("Group 1", "Group 2"), each = 50),
  category = rep(c("Category A", "Category B"), times = 50)
)

ggplot(data, aes(x = group, y = value, fill = group)) +
  geom_boxplot() +
  facet_wrap(~ category) +
  labs(title = "Faceted Boxplots", 
       x = "Groups", 
       y = "Values") +
  theme_bw()


# Horizontal
ggplot(data, aes(x = group, y = value, fill = group)) +
  geom_boxplot() +
  coord_flip() +
  facet_wrap(~ category, ncol = 1) +
  labs(title = "Horizontal Faceted Boxplots", 
       x = "Values", 
       y = "Groups") +
  theme_bw()


# Boxplot with Notches
ggplot(data, aes(x = group, y = value, fill = group)) +
  geom_boxplot(notch = TRUE) +
  labs(title = "Boxplot with Notches", 
       x = "Groups", 
       y = "Values") +
  theme_bw()


# Customize theme
ggplot(data, aes(x = group, y = value, fill = group)) +
  geom_boxplot() +
  labs(title = "Boxplot with Custom Theme", 
       x = "Groups", 
       y = "Values") +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 12),
    legend.position = "none"
  )


# Boxplot with Colors Based on Another Variable
set.seed(50)
data <- data.frame(value = c(rnorm(50, mean = 10, sd = 2), rnorm(50, mean = 15, sd = 3)),
                   group = rep(c("Group 1", "Group 2"), each = 50),
                   subgroup = rep(c("Subgroup A", "Subgroup B"), times = 50))

ggplot(data, aes(x = group, y = value, fill = subgroup)) +
  geom_boxplot() +
  labs(title = "Boxplot with Subgroup Colors", 
       x = "Groups", 
       y = "Values") +
  theme_minimal()


# Color Gradient
data <- data.frame(value = rnorm(100),
                   group = rep(1:10, each = 10),
                   color_var = rep(seq(1, 10), each = 10))


ggplot(data, aes(x = factor(group), y = value, fill = color_var)) +
  geom_boxplot() +
  scale_fill_gradient(low = "darkblue", high = "red") +
  labs(title = "Boxplot with Gradient Colors", 
       x = "Groups", y = "Values", fill = "Color Scale") +
  theme_bw()


