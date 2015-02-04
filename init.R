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

summary(train$Sex)
prop.table(table(train$Sex, train$Survived))
prop.table(table(train$Sex, train$Survived), 1)

test$Survived <- 0
test$Survived[test$Sex == 'female'] <- 1

str(test)
submit2 <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit2, file = "allmenpersih.csv", row.names = FALSE)
