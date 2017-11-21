library(rattle)
library(rpart.plot)
library(RColorBrewer)




train <- read.csv("C:/Users/Aman/Desktop/Titanic/train_titanic.csv")
test <- read.csv("C:/Users/Aman/Desktop/Titanic/test_titanic.csv")

my_tree_two <- rpart(Survived ~ Pclass + 
                       Sex + 
                       Age + 
                       SibSp + 
                       Parch + 
                       Fare + 
                       Embarked, data = train, method = "class")

plot( my_tree_two )
text( my_tree_two )

fancyRpartPlot( my_tree_two )

my_prediction <- predict( my_tree_two, newdata = test, type = "class" )

my_solution <- data.frame(PassengerId = test$PassengerId, Survived = my_prediction)

nrow(my_solution)

str(my_solution)

write.csv(my_solution, file = "C:/Users/Aman/Desktop/Titanic/kaggle_dc.csv", row.names = FALSE)


library(randomForest)

set.seed(111)

rf_model <- randomForest(Survived ~ Pclass + Sex + Age + SibSp + Parch + 
                           Fare + Embarked,
                         data = train)





