library(rattle)
library(rpart.plot)
library(RColorBrewer)
library(gapminder)




#train <- read.csv("C:/Users/Aman/Desktop/Titanic/Kaggle-Titanic/train_titanic.csv")
#test <- read.csv("C:/Users/Aman/Desktop/Titanic/Kaggle-Titanic/test_titanic.csv")

my_tree_two <- rpart(continent ~ lifeExp + 
                       gdpPercap + 
                       pop, data = gapminder, method = "class")

plot( my_tree_two )
text( my_tree_two )

fancyRpartPlot( my_tree_two )
