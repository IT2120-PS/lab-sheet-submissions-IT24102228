laptopbagweights <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(laptopbagweights)
attach(laptopbagweights)

# Question 01
#Calculate the population mean & population variance
popmn <- mean(Nicotine) # population mean find
popmn # population mean value
popvar <- var(Nicotine) # population variance find
popvar # population variance value

# Question 02
samp <- c()
n <- c()
for(i in 1:25){
  s <- sample(Nicotine,6,replace = TRUE)
  samp <- cbind(samp,s)
  n <- c(n,paste("S",i))
}
# Assign column names for each sample created. Names have stored earlier under "n" variable.
colnames(samp) = n
# Using "apply" commands we can ask to calculate any function such as mean, variance, etc. row wise or
# column wise in a matrix.
#Here, considering the second argument as "2" we can calculate either mean/variance column wise
#which stored earlier in "samples" variable which is a matrix
s.means <- apply(samp,2,mean)
s.means 
s.vars <- apply(samp,2, var)
s.vars 
s.sd <- apply(samp,2,sd)
s.sd 

#Following commands will calculate mean and variance of samples means stored in "s.means" variable.
sampmean <- mean(s.means)
sampmean # mean of the sample
sampvars <- var(s.means)
sampvars # Variance of the sample
sampsd <- sd(s.sd)
sampsd # Standard derivation of the sample

# Question 03
truevar = popvar / 6
truevar
sampvars
truesd = sd(Nicotine) / 6
truesd
sampsd