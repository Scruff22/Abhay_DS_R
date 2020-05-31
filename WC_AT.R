## Load Data ##
## By importing from environment Console ##


# Visualization
install.packages("lattice")
library(lattice)


dotplot(WC_AT$Waist, main="Waiste",col="dodgerblue4")
dotplot(WC_AT$AT, main="AT", col="dodgerblue4")
boxplot(WC_AT$Waist,col="dodgerblue4")
boxplot(WC_AT$AT,col="dodgerblue4")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)

#column names
colnames(WC_AT)

#Model building
model<- lm(AT~Waist,data =WC_AT)
summary(model)

#Preparing new data frame with new data
new_waist=data.frame(Waist=c(40,75,400))
new_waist

#Predict for the new data
AT1=predict(model,new_waist)

#Print predicted value
AT1
