library(readxl)
library(dplyr)

Mydata <- read_excel("/home/nilanjana/2nd Semester/CSE-214/R/RProgrammingPractice/PieData.xlsx", sheet=1)

cats <-Mydata$Category
values <- Mydata$UserNumber

percentages <- round(values / sum(values) * 100, 1) 

pie(values, labels = paste(cats,"-",percentages,"%"), main = "Pie Chart")
