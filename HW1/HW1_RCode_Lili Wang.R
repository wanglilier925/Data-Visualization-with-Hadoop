# name lili wang

# open the pdf file


# name iris
names(iris)

#length of iris
length(iris$Sepal.Length)

#Sepal.Length Max value
max(iris$Sepal.Length)

#Sepal.Length min value
min(iris$Sepal.Length)

# integer values of Sepal.Length
min_length=floor(min(iris$Sepal.Length))
min_length
max_length=ceiling(max(iris$Sepal.Length))
max_length
#plot species
#plot(iris$Sepal.Length,iris$Species=="setosa", main="length and species")


#set plotting area to 3 sections
par(mfrow=c(1,3))
#histgram for different species
hist(iris$Sepal.Length[which(iris$Species =="setosa")],xlab = "sepal.Length", xlim=c(4,8),ylim=c(0,13),breaks = seq(4,8,0.2),
     main = "setosa",col = "blue")
hist(iris$Sepal.Length[which(iris$Species =="versicolor")],xlab = "sepal.Length",xlim=c(4,8),ylim=c(0,13),breaks = seq(4,8,0.2),
     main = "versicolor",col = "yellow")
hist(iris$Sepal.Length[which(iris$Species =="virginica")],xlab = "sepal.Length",xlim=c(4,8),ylim=c(0,13),breaks = seq(4,8,0.2),
     main = "virginica",col = "red")



#Sepal.Width Max value
max(iris$Sepal.Width)
#Sepal.Width min value
min(iris$Sepal.Width)
# integer values of Sepal.Width
min_length=floor(min(iris$Sepal.Width))
min_length
max_length=ceiling(max(iris$Sepal.Width))
max_length

#set the sepal.width plotting area to 3 sections
par(mfrow=c(1,3))
#histgram for different species
hist(iris$Sepal.Width[which(iris$Species =="setosa")],xlab = "Sepal.Width", xlim=c(2,5),ylim=c(0,15),breaks = seq(2,5,0.2),
     main = "setosa",col = "blue")
hist(iris$Sepal.Width[which(iris$Species =="versicolor")],xlab = "Sepal.Width",xlim=c(2,5),ylim=c(0,15),breaks = seq(2,5,0.2),
     main = "versicolor",col = "yellow")
hist(iris$Sepal.Width[which(iris$Species =="virginica")],xlab = "Sepal.Width",xlim=c(2,5),ylim=c(0,15),breaks = seq(2,5,0.2),
     main = "virginica",col = "red")








#inter value of Petal.Length
min_length=floor(min(iris$Petal.Length))
min_length
max_length=ceiling(max(iris$Petal.Length))
max_length


#set plotting area to 3 sections
par(mfrow=c(1,3))
#histgram for different species
hist(iris$Petal.Length[which(iris$Species =="setosa")],xlab = "Petal.Length", xlim=c(1,7),ylim=c(0,20),breaks = seq(1,7,0.2),
     main = "setosa",col = "blue")
hist(iris$Petal.Length[which(iris$Species =="versicolor")],xlab = "Petal.Length",xlim=c(1,7),ylim=c(0,20),breaks = seq(1,7,0.2),
     main = "versicolor",col = "yellow")
hist(iris$Petal.Length[which(iris$Species =="virginica")],xlab = "Petal.Length",xlim=c(1,7),ylim=c(0,20),breaks = seq(1,7,0.2),
     main = "virginica",col = "red")








#inter value of Petal.Width
min_length=floor(min(iris$Petal.Width))
min_length
max_length=ceiling(max(iris$Petal.Width))
max_length

#set plotting area to 3 sections
par(mfrow=c(1,3))
#histgram for different species
hist(iris$Petal.Width[which(iris$Species =="setosa")],xlab = "Petal.Width", xlim=c(0,3),ylim=c(0,35),breaks = seq(0,3,0.2),
     main = "setosa",col = "blue")
hist(iris$Petal.Width[which(iris$Species =="versicolor")],xlab = "Petal.Width",xlim=c(0,3),ylim=c(0,35),breaks = seq(0,3,0.2),
     main = "versicolor",col = "yellow")
hist(iris$Petal.Width[which(iris$Species =="virginica")],xlab = "Petal.Width",xlim=c(0,3),ylim=c(0,35),breaks = seq(0,3,0.2),
     main = "virginica",col = "red")



