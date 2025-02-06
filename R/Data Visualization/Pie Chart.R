# Create a Pie Chart
x <- c(25, 35, 35, 65)

pie(x)
pie(x, init.angle = 90)


## Labeling
mylabels <- c("Mango", "Banana", "Grape", "Cherry")

pie(x, labels = mylabels, main = "Fruits")

# 
expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
              main = "Monthly Expenditure Breakdown",
              labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"))


## color
colors <- c("red", "yellow", "green", "purple")

pie(x, labels = mylabels, main = "Fruits", col = colors)

legend("bottomright", mylabels, fill = colors)

# 
expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
              main = "Monthly Expenditure Breakdown",
              labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
              col = c("red", "orange", "yellow", "blue", "green")
)


## Add title 
expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
              main = "Monthly Expenditure Breakdown")


## 3D Pie chart
# import plotrix to use pie3D()
library(plotrix)

expenditure <- c(600, 300, 150, 100, 200)

result <- pie3D(expenditure,
                main = "Monthly Expenditure Breakdown",
                labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
                col = c("darkred", "darkorange", "yellow", "darkblue", "darkgreen"))

#
survey <- c(apple=40, kiwi=15, grape=30, banana=50, pear=20, orange=35)
pie3D(survey,
      col=c("steelblue4", "steelblue", "steelblue3", "steelblue2", "steelblue1", "skyblue1"),
      labels = names(survey),
      labelcex = 1,
     explode=0.2,
      theta = 0.8,
      main="3D Pie Chart")


# Optional
## Interactive Pie chart using ggplot

library(ggplot2)

data <- data.frame(
  category = c("A", "B", "C", "D"),
  value = c(25, 35, 20, 20)
)

ggplot(data, aes(x = "", y = value, fill = category)) +
  geom_bar(stat = "identity", width = 1) + # Create a bar chart
  coord_polar("y", start = 0) + # Convert to pie chart
  theme_void() + # Remove axes and gridlines for a clean look
  labs(title = "Pie Chart Example") + # Add a title
  scale_fill_brewer(palette = "Set3") # Optional: Change the color palette







