#instaling the package for the tutorial
#install.packages("dslabs")
library(dslabs)

# doing a quadratic equation solving

a <- 1
b <- 1
c <- -1
print(c)

# to show all the object store the workspace use ls()
ls()

# to get the solution to the quadratic equation
(-b + sqrt(b^2 - 4*a*c))/(2*a)  # for the positive equation
(-b - sqrt(b^2 - 4*a*c))/(2*a)  # for the negative equation

# we will use the "motivating case study" here
# want to find out how safe a state is 

#functions
#library, sqrt, package --- seen soo far
#typing a function without () show the code of the function eg ls():

ls   # ls() is use to list our local variables  

log(2)

log(a)

# nested function e.g

exp(1)

log(exp(1))  # exp() is opposite of log


# you can learn about any function by using the "help" function e.g

help(log)

?help   # shot form for help()

log(8, base = 2)
log(x = 8, base = 2)
log(8,2)

# to get list of all datasets
data()

#coersion in R (forces list data into a dominant element) 
x <- 1:5
y <- as.character(x)
print(y)
m <- as.numeric(y)
print(m)


x <- c("1","b","3")
v = as.numeric(x)
print(v)

# how to create vectors

codes <- c(380, 120,233)
country <- c("italy", "cannada", "nigeria")

# or

codes <- c(italy = 380, cannada = 124, nigeria = 234)
codes

class(codes)


# codes can also be
codes <- c("italy"=380, "cannada"=124, "nigeria"=234)
codes

# it can also be
codes <- c(380,234,234)
country <- c("italy", "cannada", "nigeria")

names(codes) <- country

codes

# use seq
seq(1,10)

seq(1,10,2) 


#also 1:10 

1:10

# how to access any part of the vector

codes[2]  # access the 2nd elemet in the set

codes[c(1,3)]

codes[1:2]

codes["cannada"]  #to access using

codes[c("nigeria","italy")]  # to access many elements

#sorting the data to see the total murder in each state

library(dslabs)
data(murders)
sort(murders$total)

x <- c(31,4,15,92,65)
print(sort(x))

# or sorting by index

index <- order(x)
x[index]

murders$state[1:10]
murders$abb[1:10]

# we can order the state by the total murders

index <- order(murders$total)
murders$abb[index]

# a better way
max(murders$total)

# we can get the index of the mean

i_min <- which.min(murders$total)
i_min

# and use the index to locate the state
murders$state[i_min]

#likewise for max

i_max <- which.max(murders$total)
i_max
murders$state[i_max]

# one other order related vector == rank
x <- c(31, 4, 15, 92, 65)
rank(x)

# rank give the 


# variables in r
class(ls)

class(2)

class(murders)

#using str ("structure to find detail about a dataset

str(murders)

#showing the first 6 lines
head(murders)

# to list out the column headers
names(murders)


pop <- murders$population
length(pop)

# factor are useful for storing categorica data

class(murders$region)  #is a factor
levels(murders$region)

x <- c(FALSE, TRUE, FALSE, TRUE, TRUE)
which(x)
# which above tells us the inddexes that are true

# which, match, and %in%

#eg to find which index of of state is true

index <- which(murders$state =="Massachusetts")
index
names(murders)

head(murders)
#this aspect is yet to be completed

murders_state <- murders$state
murders_state[index]

# match
  
index  <- match(c("New York", "Florida","Texas"), murders$state)
index
# to confirm:
murders_state[index]


# using the %in%

x <- c("a","b","c","d","e")
y <- c("a", "d", "f")
y%in%x 

