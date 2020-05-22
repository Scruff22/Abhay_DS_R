n<-1000
x<-seq(1,n)
sum(x)

sqrt(log10(100))

temp <- c(35, 88, 42, 84, 81, 30)
temp
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city

paste(city,temp)
paste(city,temp,sep=":")
paste(city,temp,sep=":",collapse = ",")

names(temp)<-city
names(temp)
temp[1:3]
temp[c(3,5)]

x<-12:73
length(x)
odd<-seq(13,73,2)
odd
length(odd)
seq(12,73,length.out = 100)

class(1)
class(1L)

x <- c(1, 3, 5,"a")
x
class(x)
x<-as.numeric(x)      
class(x)
x<-as.character(x)
class(x)
x

temp <- (temp - 32)*5/9
temp
city_temp<-data.frame(name=city,temprature=temp)
city_temp

y<-seq(1:100)
sum(1/y^2)

sum_n<-function(n){
  x<-1:n
  sum(x)
}
sum_n(5000)

altman_plot_1<-function(x,y){
  sm<-x+y
  sb<-x-y
  plot(sm,sb)
}
altman_plot(45,67)

altman_plot_2<-function(x,y){
  plot(x+y,x-y)
}


compute_s_n<-function(n){
  x<-1:n
  s<-1/n^2
  sum(s)
}
compute_s_n(10)



s_n <- vector("numeric", 25)

compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
n<-25
for(i in 1:n){
  x<-1:i
  s<-sum(x)
  s_n[i]<-compute_s_n(i)
}

