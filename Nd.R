# Visualization
install.packages("lattice")
library(lattice)
dotplot(Nd$sunday, main="Dot Plot of Sunday Circulations",col="dodgerblue4")
dotplot(Nd$daily, main="Dot Plot of Daily Circulations", col="dodgerblue4")
boxplot(Nd$sunday,col="dodgerblue4")
boxplot(Nd$daily,col="dodgerblue4")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)

#column names
colnames(Nd)

#Model building
model<- lm(sunday~daily,data =Nd)
summary(model)

#Preparing new data frame with new data
new_daily=data.frame(daily=c(300))
new_daily

#Predict for the new data
sun1=predict(model,new_daily)

#Print predicted value
sun1
