##Question 01
#Uniform Distribution
#Here, random variable X follows a uniform distribution with a=0 and b=30.

#Part 1
#It asks to find P(X <= 10). Following command gives the cumulative
#probability ( <= ), if ""lower.tail" argument equals to "TRUE".
punif(10,min = 0, max = 30, lower.tail = TRUE)

#Part 2
#It asks to find P(x>20). This can find using "punif" command as follows.
#You need to rearrange the probability statement as follows.
#P(X>20)=1-P(X <= 20)
#Then command will be as follows.
1-punif(20,min = 0, max = 30, lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail" as "FALSE".
#Here, when that argument is "FALSE", it means that P(x>20).
punif(20,min = 0, max = 30, lower.tail = FALSE)




##Question 02
#Exponential Distribution
#Here, random variable X has exponential distribution with lambda=0.5

#Part 1
#It asks to find P(X <= 3). Following command gives the cumulative
#probability ( <= ), if ""lower.tail" argument equals to "TRUE".
pexp (3,rate = 0.5, lower.tail = TRUE)

#Part 2
#It asks to find P(X>4). This can find using "pexp" command as follows.
#You need to rearrange the probability statement as follows.
#P(x>4)=1-P(X <= 4)
#Then command will be as follows.
1-pexp(4,rate = 0.5,lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower. tail" as "FALSE".
#Here, when that argument is "FALSE", it means that P(X>4).
pexp(4,rate = 0.5, lower.tail = FALSE)

#Part 3
#It asks to find P(2<X<4). This can find using "pexp" command as follows.
#You need to rearrange the probability statement as follows.
#P(2<X<4)=P(X <= 4)-P(X <= 2)
#Then command will be as follows.
pexp(4,rate = 0.5, lower.tail = TRUE)-pexp(2, rate = 0.5, lower.tail = TRUE)




##Question 03
#Normal Distribution
#Here, random variable X has normal distribution with mean=36.8 and standard deviation=0.4

#Part 1
#It asks to find P(X>=37.9). Following command gives the cumulative
#probability ( <= ), if ""lower.tail" argument equals to "TRUE".
#You need to rearrange the probability statement as follows.
#P(X>=37.9)=1-P(X<37.9)
#Then command will be as follows.
1-pnorm(37.9,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 2
#It asks to find P(36.4<X<36.9). This can find using "pnorm" command as follows.
#You need to rearrange the probability statement as follows.
#P(36.4<X<36.9)=P(X <= 36.9)-P(X <= 36.4)
#Then command will be as follows.
pnorm(36.9,mean = 36.8, sd=0.4, lower.tail = TRUE)-pnorm(36.4,mean = 36.8, sd=0.4,lower.tail = TRUE)

#Part 3
#Let consider that the maximum temperature they want to find is "b".
#Then, P(X<b)= 1.2% = 0.012
#Here, they want to find the value of "b". This can be done using "gnorm" command.
qnorm(0.012,mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 4
#Let consider that the minimum temperature they want to find is "b".
#Then, P(X>b)= 1.0% = 0.01
#Here, they want to find the value of "b". This can be done using "qnorm" command.
#Here, you need to make the "lower.tail" argument as FALSE.
qnorm(0.01,mean = 36.8, sd=0.4, lower.tail = FALSE)