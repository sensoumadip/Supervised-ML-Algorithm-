library(readxl)
library(car)
library(tinytex)
library(latexpdf)

# Name: Soumadip Sen

# Task 1: Prediction using Supervised ML
# Problem Statement: Predict the percentage obtained by students based on study hours

# Reading the input file with students study hours and marks obtained

Supervised_ML <- read_excel("D:/Spark Foundation/Supervised ML.xlsx")

# Applying the linear regression model to find relation between dependent and independent variable
# Dependent Variable: Score
# Independent Variable: Hours

relation <- lm(Scores~Hours,Supervised_ML)
summary(relation)

# Plotting the data points in 2D representation with scatter plots

plot(y = Supervised_ML$Scores,x = Supervised_ML$Hours,
     main = "Scattered Plot",cex = 2,pch = 18,col="orange",
     xlab = "Hours",ylab = "Score")

scatterplot(Supervised_ML$Scores~Supervised_ML$Hours, 
            data=Supervised_ML,col="red",xlab = "Hours",ylab = "Scores",pch = 18,cex=1.8)

# Finding the predicted score (percentage) of a student studying 9.25 hrs/day

test_data <- data.frame(Hours = 9.25)
predicted_score <-  predict(relation,test_data)
print(predicted_score)



