Bridget Moroney
rm(list=ls()) #to remove global environment before setting variables
setwd("/Users/bridgetmoroney/Desktop/Biocomp-Fall2018-181005-Exercise6/") #setting the working directory

#part one:
#setting variable to read file
headfile=read.csv(file = "iris.csv", header = TRUE, stringsAsFactors = FALSE)
#set x to desired number of lines to be displayed
x=5
#run this line to display x first lines of iris.csv
headfile[1:x,]
#question: do I have to do something different to print to terminal?

#part two:
iris=read.csv(file = "iris.csv", header = TRUE)
#to find there are 150 rows
nrow(iris)
#to find there are 5 columns
ncol(iris)
### Brittni: We wanted you to print the last two rows and cols. This could work like:
## iris[149:150, 4:5]
## I took off 0.5 points. 

#to find the unique species names
unique(iris$Species)
#to install plyr package for count function
install.packages('plyr')
#calling library
library(plyr)
#using count function to see frequency of each Species type
count(iris, 'Species')

#to get subset of iris data with sepal width > 3.5
subset(iris, Sepal.Width > 3.5) 

#defining new file with only setosa 
setosa=iris[c(1:50), ]
#writing new file to setosa.csv in working directory
write.csv(iris, 'setosa.csv')

#defining new variable for Petal.Length observations of virginica
virginica=(iris[c(101:150),3])
#mean of virginica data is 5.552
mean(virginica)
#min of data is 4.5
min(virginica)
#max of data is 6.9
max(virginica)
