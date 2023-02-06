
gold_target1 <- read.csv("./gold_target1.csv")
head(gold_target1)
#step0
names(gold_target1)
names(gold_target1)=c("As_Level","Sb_Level","Lineament_Proximity","Gold_Deposit_Proximity")
names(gold_target1)

#step1
#a
plot(Gold_Deposit_Proximity~As_Level,data=gold_target1)

#b
plot(Gold_Deposit_Proximity~Sb_Level,data=gold_target1)

#c
glm.out1=glm(gold_target1$Gold_Deposit_Proximity~gold_target1$Sb_Level,family = binomial(logit), data = gold_target1)
glm


#d
plot(Gold_Deposit_Proximity~Sb_Level, data = gold_target1) 
lines(gold_target1$Sb_Level, glm.out1$fitted, type="l",col="red")
title(main="gold_target1 Data with Fitted Logistic Regression")

#e
glm.out2=glm(cbind(gold_target1$As_Level,gold_target1$Sb_Level)~gold_target1$Gold_Deposit_Proximity,family = binomial(logit), data = gold_target1)

#f
summary(glm.out1)
summary(glm.out2)
