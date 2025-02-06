library(ggplot2)

# 'geom_point()' for scatter plots.
# 'geom_line()' for line charts.
# 'geom_smooth()' for drawing smoothed lines.
# 'geom_bar()' for bar charts.
# 'geom_histogram()' for histogram.
# 'geom_polygon()' for arbitrary shapes.
# 'geom_map()' for polygons in the shape of a map,
#       we can access the data to use for these maps by using the 'map_data()' function.


## Create a simple ggplot plot
# sample dataset
data <- data.frame(catagory = c("A", "B", "C", "D", "E", "F", "G", "H", "I"),
                   values = c(10, 25, 30, 40, 45, 30, 20, 10, 36)
)

## Scatter plots

ggplot(data, aes(x = catagory, y = values)) + 
  geom_point()


# change of properties
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5)


# default ggplot theme
theme_set(theme_bw())     # theme_bw() — by calling theme_set() all following plots 
                          # will have the same black’n’white theme.

ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5)


# Change axis title
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories")


# Increase space between axis and axis-title
        # theme() is an essential command to modify particular 
        # theme elements (texts and titles, boxes, symbols, backgrounds, …).
        # for changing properties of text, we use "element_text()"

ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") + 
  theme(axis.title.x = element_text(vjust = 0, size = 15),  
        axis.title.y = element_text(vjust = 2, size = 13))    # "vjust" for vertical alignment


ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") + 
  theme(axis.title.x = element_text(margin = margin(t = 10), size = 15),  
        axis.title.y = element_text(margin = margin(r = 10), size = 13))
      
      # Can also change the distance by specifying the margin of both text elements,
      # The labels 't' and 'r' within the margin() refer to 'top' and 'right', (t, r, b, l).

ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") + 
  theme(axis.title = element_text(margin = margin(t = 10), 
                                  size = 15, color = "blue", face = "italic")) 
        # 'axis.tile' for both


# Changing Axis text
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") + 
  theme(axis.text.x = element_text(color = "red", face = "bold.italic", size = 10),
        axis.text.y = element_text(color = "dodgerblue", face = "italic", size = 11))

      # 'axis.text' for both

# rotate axis text
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") +
  theme(axis.text.x = element_text(angle = 50, vjust = 1, hjust = 1, size = 12))


# Remove axis text & ticks
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") +
  theme(axis.ticks = element_blank(),
        axis.text = element_blank())


# Remove Axis tile
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  theme(axis.text.x = element_text(color = "red", face = "bold.italic", size = 10),
        axis.text.y = element_text(color = "dodgerblue", face = "italic", size = 11)) +
  labs(x = NULL, y = "")


# Limit Axis Range
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") +
  ylim(c(1, 40))


# Force plot to start at Origin
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") +
  expand_limits(x = 0, y = 0) 


# Add a Title
ggplot(data, aes(x = catagory, y = values)) + 
  geom_point(color = "firebrick", shape = "diamond", size = 5) +
  labs(x = "Name of Catagories", y = "Values of Catagories") +
  ggtitle("Ggplot Tutorial")


# Working with Legends
ggplot(data, aes(x = catagory, y = values, color = "red", size = 5)) +
  geom_point() +
  labs(x = "Catagories", y = "Values")
      # One nice thing about {ggplot2} is that 
      # it adds a 'legend' by default when mapping a variable to an aesthetic.


# Turn off the legend
ggplot(data, aes(x = catagory, y = values, color = "red", size = 5)) +
  geom_point() +
  labs(x = "Catagories", y = "Values") +
  theme(legend.position = "none")


# Remove legend title
ggplot(data, aes(x = catagory, y = values, color = "red", size = 5)) +
  geom_point() +
  labs(x = "Catagories", y = "Values") +
  theme(legend.title = element_blank())


# Change legend Position
ggplot(data, aes(x = catagory, y = values, color = "red", size = 5)) +
  geom_point() +
  labs(x = "Catagories", y = "Values") +
  theme(legend.position = "top")

      # legend background
ggplot(data, aes(x = catagory, y = values, color = "red", size = 5)) +
  geom_point() +
  labs(x = "Catagories", y = "Values") +
  theme(legend.position = c(0.15, 0.15),
      legend.background = element_rect(fill = "transparent"))


# Change legend Direction

ggplot(data, aes(x = catagory, y = values, color = "red")) +
  geom_point(size = 5, shape = "diamond") +
  labs(x = "Catagories", y = "Values") +
  ylim(c(1, 50)) +
  theme(legend.position = c(0.5, 0.95),
        legend.background = element_rect(fill = "transparent")) +
  guides(color = guide_legend(direction = "horizontal"))


# Change legend title
ggplot(data, aes(x = catagory, y = values, color = "red")) +
  geom_point(size = 5, shape = "diamond") +
  labs(x = "Catagories", y = "Values") +
  ylim(c(1, 50)) +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.title = element_text(family = "Playfair",
                                    color = "chocolate",
                                    size = 14, face = "bold"))


## Multi-panel Plots

# using facet_wrap plot
facet_data <- data.frame(x = rnorm(100),
                         y = rnorm(100),
                         category = rep(c("A", "B", "C", "D"), each = 25)  # Categories of how many graphs
)

ggplot(facet_data, aes(x = x, y = y)) +     # Map aesthetics
  geom_point(color = "darkblue") +          # Add points
  facet_wrap(~ category) +                  # Facet by category (also can managed 
                                                # manually by using nrow or ncol)
  labs(title = "Faceted Scatter Plot",      # Add title
       x = "X-axis",                        # Label for X-axis
       y = "Y-axis") +                      # Label for Y-axis
  theme_minimal()                           # Using minimal theme




