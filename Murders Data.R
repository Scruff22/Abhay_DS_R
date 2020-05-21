library(dslabs)
data(murders)
str(murders)

names(murders)

a<-murders$abb
a
class(a)
b<-murders[["abb"]]
b
identical(a,b)

class(murders$region)
levels(murders$region)
length(levels(murders$region))

table(murders$region)

pop<-murders$population
pop

min(pop)
max(pop)
which.min(x)
which.max(pop)

pop<-sort(pop)
pop[1]
pop[51]
order(pop)

i<-which.min(murders$population)
i
states<-murders$state
states[51]

states<-murders$state
ranks<-rank(murders$population)
ind<-order(murders$population)
ind
my_df<-data.frame(states,ranks)
my_df<-data.frame(states[ind],ranks[ind])
my_df

murder_rate<-murders$total/murders$population*100000
murder_rate
mean(murder_rate)
low<-murder_rate<1
low
sum(low)
which(low)
murders$state[low]

ind<-low & murders$region=="northeast"
ind
murders$state[ind]

abbs<-c("AL","AZ","AK")
ind<-match(abbs,murders$abb)
murders$state[ind]

abbs<-c("MA","ME","MI","MO","MU")
abbs
abbs%in%murders$abb
ind<-which(!abbs%in%murders$abb)
abbs[ind]

library(dplyr)
murders<-mutate(murders,rate=murders$total/murders$population*100000)
murders
murders<-mutate(murders,rank=rank(-rate))
murders
select(murders,state,abb)
filter(murders,rank<=5)

no_south<-filter(murders, region != "South")
no_south
nrow(no_south)

murder_nw<-filter(murders, region %in% c("Northeast","West"))
murder_nw
nrow(murder_nw)

murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))
murders
my_states<-filter(murders, region %in% c("Northeast","West") & rate<1)
my_states
select(my_states, state,rate, rank)

murders %>% filter(region %in% c("Northeast","West") & rate<1) %>% select(state,rate,rank)

my_states<-murders %>% mutate(rate=total/population*100000,rank=rank(-rate)) %>% filter(region %in% c("Northeast","West") & rate<1) %>% select(state,rate,rank)
my_states

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions,total_gun_murders)
hist(population_in_millions) 
boxplot(population~region,data=murders)

nchar(murders$state)
new_names<-ifelse(nchar(murders$state)>8,murders$abb,murders$state)
new_names

summary(murders)
boxplot(murders)