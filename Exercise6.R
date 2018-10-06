
rm(list=ls()) #to remove global environment before setting variables
setwd("/Users/bridgetmoroney/Desktop/Biocomp-Fall2018-181005-Exercise6/") #setting the working directory

#part one:
headfile=read.csv(file = "iris.csv", header = TRUE, stringsAsFactors = FALSE) #setting variable to read file
x=5 #set x to desired number of lines to be displayed
headfile[1:x,] #run this line to display x first lines of iris.csv
#question: do I have to do something different to print to terminal?

#part two:
iris=read.csv(file = "iris.csv", header = TRUE)
nrow(iris) #to find there are 150 rows
ncol(iris) #to find there are 5 columns
unique(iris$Species) #to find the unique species names
install.packages('plyr') #to install plyr package for count funciton
library(plyr) #calling library
count(iris, 'Species') #using count function to see frequency of each Species type
subset(iris, Sepal.Width > 3.5) #to get subset of iris data with sepal width > 3.5
setosa=iris[c(1:50), ] #defining new file with only setosa 
write.csv(iris, 'setosa.csv') #writing new file to setosa.csv in working directory
virginica=(iris[c(101:150),3]) #defining new variable for Petal.Length observations of virginica
mean(virginica) #mean of virginica data is 5.552
min(virginica) #min of data is 4.5
max(virginica) #max of data is 6.9
