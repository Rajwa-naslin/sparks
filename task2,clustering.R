
# K-Means Clustering 

# Load InBuild IRIS DataSet 
data("iris")

#Create a copy of the data set and 
#remove the labels
unlabeled <- iris
str(unlabeled)

#Remove Lable from the Temparory DataSet
unlabeled$Species <- NULL
str(unlabeled)

# Create Cluster
result <- kmeans(unlabeled,centers = 3)
result
# Size Of Cluster
result$size

# Cluster
result$cluster

# Visualize the result 
# Dividing plot window for displaying two graphs
par(mfrow=c(1,2))
#plot the sepal length and sepal width
#color according to the cluster
plot(unlabeled$Sepal.Length,unlabeled$Sepal.Width,col=result$cluster)
#draw the point for the center of each 
#cluster
points(result$centers,pch=19,col="blue")
#plot the original data
plot(iris$Sepal.Length,iris$Sepal.Width,col=iris$Species)
#lets plot petal length nstead
#par(mfrow=c(2,4))
plot(iris$Petal.Length,iris$Petal.Width,col=iris$Species)
plot(unlabeled$Petal.Length,unlabeled$Petal.Width,col=result$cluster)
result$cluster


# Validating the result
table(iris$Species,result$cluster)
 
result

