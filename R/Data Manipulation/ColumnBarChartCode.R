library(readxl)
library(dplyr)

Mydata <- read_excel("/home/nilanjana/2nd Semester/CSE-214/R/RProgrammingPractice/ColumnBarData.xlsx", sheet=1)

Mydata
# cats <-Mydata$Years
# values <- Mydata$Sales

barplot(values,names.arg=cats,xlab="Sales",ylab="Year",col="blue",main="Sales Trend",border="red",horiz = TRUE)

