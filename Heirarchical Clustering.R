#Data load
mydata1<-read.csv("/Volumes/Data/Course Content/DS content/Clustering/University Data Hierarchical clustering/Universities.csv")

################################
##data standardization
mydata1<-Universities
mydata <- scale(mydata1[,2:7])
mydata

d <- dist(mydata, method = "euclidean") #Computing the distance natrix
d
fit <- hclust(d, method="average") # Building the algorithm # try with 'centroid'
fit
plot(fit) # display dendogram
clusters <- cutree(fit, k=4) # cut tree into 4 clusters
clusters

# draw dendogram with red borders around the 4 clusters 
rect.hclust(fit, k=4, border="red")

#Attach the cluster numbers to Uni
Final_output=data.frame('Uni'=mydata1[,1],'Cluster' =clusters)
Final_output
View(Final_output)
