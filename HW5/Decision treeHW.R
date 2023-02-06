#decision Tree HW  
#Lili Wang

# part1 setting up the data
library(titanic)
#1)
titanic_train$Survived=factor(titanic_train$Survived)
#2 create subset
subset=titanic_train[,c(2,3,5,6,7,8)]
head(subset)
#3 a
set.seed(587)

#3 b
indices=split(sample(nrow(subset),nrow(subset), replace = FALSE),as.factor(1:3))

#3 c test_set1.train_set1: partition1 is the testing partition
test_set1=subset[indices[[1]],]
train_set1=subset[-indices[[1]],]
print(head(test_set1))
print(head(train_set1))

#3 c test_set2.train_set2: partition2 is the testing partition
test_set2=subset[indices[[2]],]
train_set2=subset[-indices[[2]],]

#3 c test_set3.train_set3: partition3 is the testing partition
test_set3=subset[indices[[3]],]
train_set3=subset[-indices[[3]],]


# Part 2: Decision Tree Analysis of the titanic dataset


#example:fit = rpart(Species ~ Petal.Length + Petal.Width + Sepal.Length 
#+ Sepal.Width, method = "class", data=iris, control =rpart.control(minsplit=2, cp=0.001))


# 1) train decision-tree models
install.packages("rpart")
DT1=rpart(Survived~Pclass+Sex+Age+SibSp+Parch, method = "class",  data=train_set1, control=rpart.control(minsplit = 2,cp=0.02))
DT2=rpart(Survived~Pclass+Sex+Age+SibSp+Parch, method = "class",  data=train_set2, control=rpart.control(minsplit = 2,cp=0.02))
DT3=rpart(Survived~Pclass+Sex+Age+SibSp+Parch, method = "class",  data=train_set3, control=rpart.control(minsplit = 2,cp=0.02))
print(DT1)
plot(DT1)
# 2)


#table(predict(fit, iris[-sub,], type = "class"), iris[-sub, "Species"])

M1 =table(predict(DT1, test_set1[,2:6], type = "class"),test_set1[,1])
M2 =table(predict(DT2, test_set2[,2:6], type = "class"),test_set2[,1])
M3 =table(predict(DT3, test_set3[,1:6], type = "class"),test_set3[,1])
print(M1)

print(M2)
print(M3)
# 3) calculate display
sensitivity1_test = M1[2,2]/(M1[2,2]+M1[1,2])
sensitivity1_test
#0.71875
specificity1_test <- M1[1,1]/(M1[1,1]+M1[2,1])
specificity1_test
#0.8059701
sensitivity2_test <- M2[2,2]/(M2[2,2]+M2[1,2])
sensitivity2_test
# 0.4566929
specificity2_test <- M2[1,1]/(M2[1,1]+M2[2,1])
specificity2_test
# 0.9941176

sensitivity3_test <- M3[2,2]/(M3[2,2]+M3[1,2])
sensitivity3_test
# 0.6470588
specificity3_test <- M3[1,1]/(M3[1,1]+M3[2,1])
specificity3_test
# 0.8426966

# 4)calculate and display the average sensitivity and specificity on test set
avg_sensitivity_test = (sensitivity1_test + sensitivity2_test + sensitivity3_test)/3
avg_sensitivity_test
# 0.607500659
avg_specificity_test = (specificity1_test + specificity2_test + specificity3_test)/3
avg_specificity_test
# 0.8809281

# 5) repeat step 2 on training set

M4 =table(predict(DT1, train_set1[,2:6], type = "class"),train_set1[,1])
M5 =table(predict(DT2, train_set2[,2:6], type = "class"),train_set2[,1])
M6 =table(predict(DT3, train_set3[,1:6], type = "class"),train_set3[,1])

# 6) calculate display
sensitivity1_train = M4[2,2]/(M4[2,2]+M4[1,2])
sensitivity1_train
# 0.7439024
specificity1_train = M4[1,1]/(M4[1,1]+M4[2,1])
specificity1_train
# 0.8304598
sensitivity2_train = M5[2,2]/(M5[2,2]+M5[1,2])
sensitivity2_train
# 0.4790698
specificity2_train = M5[1,1]/(M5[1,1]+M5[2,1])
specificity2_train
# 0.9788918

sensitivity3_train = M6[2,2]/(M6[2,2]+M6[1,2])
sensitivity3_train
# 0.7219731
specificity3_train <- M6[1,1]/(M6[1,1]+M6[2,1])
specificity3_train
# 0.9218329

# 7)calculate and display the average sensitivity and specificity on test set
avg_sensitivity_train = (sensitivity1_train + sensitivity2_train + sensitivity3_train)/3
avg_sensitivity_train
# 0.6483151
avg_specificity_train = (specificity1_train + specificity2_train + specificity3_train)/3
avg_specificity_train
# 0.9103948





