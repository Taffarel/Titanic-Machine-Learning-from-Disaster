#Set working directory and import datafiles
setwd("~/titanic")
train <- read.csv("~/titanic/data/train.csv")
test <- read.csv("~/titanic/data/test.csv")

str(train)
table(train$Survived)
prop.table(table(train$Survived))

str(test)
test$Survived <- rep(0, 418)
table(test$Surivived)
str(test)
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "theyallperish.csv", row.names = FALSE)