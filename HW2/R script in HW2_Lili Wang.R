# cse 587 Lili Wang HW2

#step2 create a data frame(abaloneFeatures)
abaloneFeatures = abalone[, 2:8]

#step3 create WWS for abaloneFeatures
withinSumSqrs= numeric(20)
for (k in 1:20)
{set.seed(555)
 withinSumSqrs[k]=sum(kmeans(abaloneFeatures,centers=k,15)$withinss)
}
plot(1:20,withinSumSqrs,type = "b",xlab="#Clusters",ylab = "Within sum of square")  

#step4  elbow value is 4
set.seed(555)
kmeans=kmeans(abaloneFeatures, 4, 15)
plot(abaloneFeatures,col=kmeans$cluster)



#step5 normailed
myShift=function(x){x-min(x,na.rm = TRUE)}
myScale=function(x){max(x,na.rm = TRUE)-min(x,na.rm = TRUE)}
myNorm=function(x){myShift(x)/myScale(x)}
NormalizedAbaloneFeatures=as.data.frame(lapply(abaloneFeatures,myNorm))

summary(NormalizedAbaloneFeatures)


#step6 repeat step3 use normalized number
withinSumSqrs = numeric(20)
for (k in 1:20){
set.seed(555)
withinSumSqrs[k] = sum(kmeans(NormalizedAbaloneFeatures,centers=k,15)$withinss)
}
plot(1:20,withinSumSqrs,type = "b",xlab="# Clusters",ylab = "Within sum of square") 

#step7  repeat step4 use normalized number
set.seed(555)
kmeansNormalized=kmeans(NormalizedAbaloneFeatures,4,15)
plot(NormalizedAbaloneFeatures,col=kmeansNormalized$cluster)

#step8

