# iris data set as an example

library(tidyverse)
library(varhandle)
library(class)

summary(iris)


iris_new <- data.frame(iris[,1:4], varhandle::unfactor(iris$Species), stringsAsFactors = FALSE)
colnames(iris_new)[5] <- "Species"
iris_new <- iris_new %>% 
  mutate(Species=replace(Species, Species=="setosa", "A")) %>% 
  mutate(Species=replace(Species, Species=="versicolor", "B")) %>%
  mutate(Species=replace(Species, Species=="virginica", "C"))


# Divide the data into train and test
ind <- sample(2, nrow(iris_new), replace=TRUE, prob=c(0.67, 0.33))
iris_training <- iris_new[ind==1, 1:4]
iris_test <- iris_new[ind==2, 1:4]
iris_trainLabels <- iris_new[ind==1,5]
iris_testLabels <- iris_new[ind==2, 5]

# knn fit
iris_pred <- knn(train = iris_training, test = iris_test,
                 + cl = iris_trainLabels, k=3)
iris_pred