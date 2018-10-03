# Preclass Assignment - 19 September 2018
# Nana Boame

# Part 1
#1: Generate 200 random values from the standard exponential distribution and 
#store them in a vector exp.draws.1. Find the mean and standard deviation of exp.draws.1.
exp.draws.1 = rexp(200)
mean1 = mean(exp.draws.1)
sd1 = sd(exp.draws.1)

#2: Repeat, but change the rate to 0.2, 5, 7.3 and 10, storing the results in vectors 
#called exp.draws.0.2, exp.draws.5, exp.draws.7.3 and exp.draws.10.
exp.draws.0.2 = rexp(200,0.2)
exp.draws.5 = rexp(200,5)
exp.draws.7.3 = rexp(200,7.3)
exp.draws.10 = rexp(200,10)

#3: The function plot() is the generic function in R for the visual display of data. 
#hist() is a function that takes in and bins data as a side effect. 
#To use this function, we must first specify what we'd like to plot. 
#a.Use the hist() function to produce a histogram of your standard exponential distribution.
hist(exp.draws.1)
#b.Use plot() with this vector to display the random values from your standard distribution in order. 
plot(exp.draws.1)
#c.Now, use plot() with two arguments -- any two of your other stored random value vectors
#-- to create a scatterplot of the two vectors against each other.
plot(exp.draws.0.2, exp.draws.7.3)

#4: We'd now like to compare the properties of each of our vectors. 
#Begin by creating a vector of the means of each of our five distributions in the order we 
#created them and saving this to a variable name of your choice. 
mean02 = mean(exp.draws.0.2)
mean5 = mean(exp.draws.5)
mean73 = mean(exp.draws.7.3)
mean10 = mean(exp.draws.10)
means = c(mean1, mean02, mean5, mean73, mean10)
#Using this and other similar vectors, create the following scatterplots and explain in words what is going on: 
#a. The five means versus the five rates used to generate the distribution. 
rates = c(1, 0.2, 5, 7.3, 10)
plot(means, rates)
#b. The standard deviations versus the rates. 
sd02 = sd(exp.draws.0.2)
sd5 = sd(exp.draws.5)
sd73 = sd(exp.draws.7.3)
sd10 = sd(exp.draws.10)
stdevs = c(sd1, sd02, sd5, sd73, sd10)
plot(stdevs, rates)
#c. The means versus the standard deviations.
plot(means, stdevs)

# Part 2
#5: R's capacity for data and computation is large to what was available 10 years ago. 
#a. To show this, generate 1.1 million numbers from the standard exponential distribution 
# and store them in a vector called big.exp.draws.1.
big.exp.draws.1 = rexp(1100000)
#Calculate the mean and standard deviation. 
mean.big = mean(big.exp.draws.1)
std.big = sd(big.exp.draws.1)
#b. Plot a histogram of big.exp.draws.1. Does it match the function (1-e^{-x})? Should it?
hist(big.exp.draws.1)
  #Yes, it matches the exponential function, as it should. The sample was drawn from the 
  #exponential distribution.

#c. Find the mean of all of the entries in big.exp.draws.1 which are strictly greater than 1. 
#You may need to first create a new vector to identify which elements satisfy this. 
big.gr1 = big.exp.draws.1 > 1
mean.big.gr1 = mean(big.gr1)
#d. Create a matrix, big.exp.draws.1.mat, containing the the values in big.exp.draws.1, 
#with 1100 rows and 1000 columns. 
big.exp.draws.1.mat = matrix(big.exp.draws.1,1100,1000)
#Use this matrix as the input to the hist() function and save the result to a variable of your choice. 
big.hist=hist(big.exp.draws.1.mat)
# What happens to your data? 
  #The histograms are the same.

#e. Calculate the mean of the 371st column of big.exp.draws.1.mat.
col371 = big.exp.draws.1.mat[,371]
mean371st = mean(col371)

#f. Now, find the means of all 1000 columns of big.exp.draws.1.mat simultaneously.
big.all.means = colMeans(big.exp.draws.1.mat)
#Plot the histogram of column means. 
hist(big.all.means)
#Explain why its shape does not match the histogram in problem 5b).
  #The histogram approximates the normal distribution. 

