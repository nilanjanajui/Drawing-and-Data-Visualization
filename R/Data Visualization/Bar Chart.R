## Create Bar Plot
# we use barplot() to create bars
temperature <- c(20, 22, 30, 33, 17, 40, 37)

result <- barplot(temperature)
print(result)


## Add title 
result1 <- barplot(temperature, 
                  main = "Maximum Temperature in a week")


## Provide labels to axes
result2 <- barplot(temperature, 
                   main = "Maximum Temperature in a Week",
                   xlab = "Degree Celcius",
                   ylab = "Days")


## Provide Names for Each Bar
result3 <- barplot(temperature,
                   main = "Maximum Temperature in a Week",
                   xlab = "Degree Celcius",
                   ylab = "Days",
                   names.arg = c("sun", "mon", "tues", "wed", "thu", "fri", "sat"))


## Changing Bar colors
result4 <- barplot(temperature,
                   main = "Maximum Temperature in a Week",
                   xlab = "Degree Celcius",
                   ylab = "Days",
                   names.arg = c("sun", "mon", "tues", "wed", "thu", "fri", "sat"),
                   col = "darkgreen")


## Bar Texture
result5 <- barplot(temperature,
                   main = "Maximum Temperature in a Week",
                   xlab = "Degree Celcius",
                   ylab = "Days",
                   names.arg = c("sun", "mon", "tues", "wed", "thu", "fri", "sat"),
                   col = "darkred",
                   density = 30)


## Bar Width & Space
result6 <- barplot(temperature,
                   main = "Maximum Temperature in a Week",
                   xlab = "Degree Celcius",
                   ylab = "Days",
                   names.arg = c("sun", "mon", "tues", "wed", "thu", "fri", "sat"),
                   col = "darkred",
                   density = 30,
                   width = c(1, 3, 3, 5, 6, 4, 5),
                   space = c(0.5, 1, 2, 1.5, 1, 0.5, 2))


## Horizontal Bar
result7 <- barplot(temperature,
                   main = "Maximum Temperature in a Week",
                   xlab = "Degree Celcius",
                   ylab = "Days",
                   names.arg = c("sun", "mon", "tues", "wed", "thu", "fri", "sat"),
                   col = "darkblue",
                   density = 40,
                   horiz = T )


## Groupped Bars
data <- matrix(c(10, 20, 15, 25, 12, 18, 22, 28), nrow = 2, byrow = TRUE)

colnames(data) <- c("A", "B", "C", "D")
rownames(data) <- c("Group1", "Group2")

barplot(data, 
        beside = TRUE,
        col = c("red", "blue"), 
        main = "Grouped Bar Plot", 
        xlab = "Categories", 
        ylab = "Values")

legend("topleft", rownames(data), fill = c("red", "blue"))


## Stacked Bar
titanic_data <- matrix(c(112, 222, 212, 123, 621, 309, 531, 200), nrow = 2, ncol = 4)

result <- barplot(titanic_data,
                  main = "Survival of Each Class",
                  xlab = "Class",
                  names.arg = c("1st", "2nd", "3rd", "Crew"),
                  col = c("red", "green"))
legend("topleft", c("Not Survived", "Survived"), fill = c("red", "green"))


## Error Bars
counts <- c(10, 20, 15, 25)
errors <- c(2, 3, 1.5, 4)
categories <- c("A", "B", "C", "D")

bp <- barplot(counts, 
              names.arg = categories, 
              col = "darkviolet", 
              main = "Bar Plot with Error Bars", 
              xlab = "Categories", 
              ylab = "Counts", 
              ylim = c(0, max(counts + errors)))

arrows(bp, counts, bp, counts + errors, angle = 90, code = 3, length = 0.1, col = "darkgreen")


## Interactive Bar Plot using ggplot2
library(ggplot2)

data <- data.frame(Category = c("A", "B", "C", "D"), 
                   Counts = c(10, 20, 15, 25)
)

ggplot(data, aes(x = Category, y = Counts, fill = Category)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(
    values = c("A" = "darkred", "B" = "darkblue", "C" = "darkgreen", "D" = "darkorange")) +
  labs(title = "Interactive Bar Plot with ggplot2", 
       x = "Categories", 
       y = "Counts") +
  theme(legend.position = "top",
        legend.key = element_rect(fill = "darkgoldenrod1"),
        legend.title = element_text(family = "Playfair", color = "chocolate", size = 14, face = 2))
  # theme_minimal() for default pastel color


## Interactive Stacked Bar Plot using ggplot2
data <- data.frame(Category = rep(c("A", "B", "C", "D"), each = 2), 
                   Group = rep(c("Group1", "Group2"), times = 4), 
                   Counts = c(10, 12, 20, 18, 15, 22, 25, 28)
)

ggplot(data, aes(x = Category, y = Counts, fill = Group)) +
  geom_bar(stat = "identity") +
  labs(title = "Stacked Bar Plot in ggplot2", 
       x = "Categories", 
       y = "Counts") +
  theme_minimal()


## Horizontal Bar 
survey <- data.frame( fruit=c("Apple", "Banana", "Grapes", "Kiwi", "Orange", "Pears"), 
                      people=c(40, 50, 30, 15, 35, 20))

ggplot(survey, aes(x=fruit, y=people, fill=fruit)) + 
  geom_bar(stat="identity") +
  scale_fill_brewer(palette = "Oranges") +
  coord_flip()


## Group bar(column bar)
survey <- data.frame( group=rep(c("Men", "Women"),each=6), 
                      fruit=rep(c("Apple", "Kiwi", "Grapes", "Banana", "Pears", "Orange"), time = 2), 
                      people=c(22, 10, 15, 23, 12, 18, 18, 5, 15, 27, 8, 17))

ggplot(survey, aes(x=fruit, y=people, fill=group)) + 
  geom_bar(stat="identity", position=position_dodge()) +
  theme_bw()




