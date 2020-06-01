
######### Hypothesis Testing #############

## Hypothesis of type 1 sample-1 tail test ##

x<-c(0.593,0.142,0.329,0.91,0.231,0.793,0.519,0.392,0.418)
t.test(x,alternative = "greater",mu=0.3)

## Hypothesis of type 2 sample-2 tail test ##

control<-c(91,87,99,77,88,91)
treat<-c(101,110,103,93,99,104)
t.test(control,treat,alternative = "two.sided")


