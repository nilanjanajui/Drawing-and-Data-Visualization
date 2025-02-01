library(readxl)
library(dplyr)

Mydata <- read_excel("/home/nilanjana/2nd Semester/CSE-214/R/RProgrammingPractice/ColumnBarData.xlsx", sheet=1)

cats <-Mydata$Years
values <- Mydata$Sales

plot(values, type="l", col = "red", lwd=2)
