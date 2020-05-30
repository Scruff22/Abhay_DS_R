
#Packages for CI

install.packages("gmodels")
library(gmodels)


#Data

install.packages("nycflights13")
library(nycflights13)

#Load the data from packages

data("flights")
str(flights)

######### OR ########

flg<-nycflights13::flights
flg

## find Dep delay
dep_delay<-flg$dep_delay
dep_delay

# Find how many NA values are present
sum(is.na(dep_delay))

# Remove NA from Dep Delay and reasssign another name
dep_delay1<-dep_delay[!is.na(dep_delay)]
dep_delay1

# CI Construction
ci(dep_delay1,confidence = 0.95)
# Ignore warning 

