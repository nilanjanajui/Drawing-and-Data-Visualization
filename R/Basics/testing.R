# Load ggplot2
library(tidyverse)

# Create a simple dataset
data <- data.frame(
  category = c("A", "B", "C", "D"),
  count = c(10, 15, 7, 20)
)

# Create a bar chart
ggplot(data, aes(x = category, y = count)) +
  geom_bar(stat = "identity", fill = "black") +
  labs(
    title = "Bar Chart Example",
    x = "Category",
    y = "Count"
  ) +
  theme_minimal()

