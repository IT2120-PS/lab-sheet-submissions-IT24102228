##Question 01
#Part 1
#Here, the shop owner claims that an equal number of customers come into his shop each weekday.
#That means probability of customer arriving on each day would be 0.2.
#To test this claim we need to conduct goodness of fit test which is a chi-squared test.
#So that null hypothesis will be probability that customers arriving on each day will be 0.2.
#Alternative hypothesis will be at least one weekday exists such that probability of customer
#arriving will be different from 0.2.
#To conduct the test observed counts will be stored into a variable called "observed"
#And probabilities for each day will be stored into another variable called "prob"
observed <- c(55, 62, 43, 46, 50)
prob <- c(.2, .2, .2, .2, .2)
#To conduct the test "chisq.test" command will be used as follows.
chisq.test(x=observed, p=prob)


#Part 2
#Consider 5% level of significance for the test.
#Rejection Region: If the p value for the test is less than 0.05,
#reject the null hypothesis at 5% level of significance.
#P value for the test got as 0.351.
#Conclusion:Since the p value (0.351) is greater than 0.05, do not reject null hypothesis at 5%
#level of significance. Therefore we can conclude that probability that customers arriving on
#each day will be same which is 0.2.



##Question 02
#Part 1
#First needs to set the path where data set exists as follows.
file_path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt"
#Then, "read.delim" command will be used to reads the file which is in a table format
#and creates a data frame from it, with cases corresponding to lines and variables to fields.
housetasks <- read.delim(file_path, row.names = 1)
housetasks


#Part 2
#Here, they wanted to check whether there is any association between house tasks
#and their distribution in the couple.
#To test this we need to conduct the association test which is a chi-squared test.
#So that null hypothesis will be there is no association between house tasks
#and their distribution in the couple.
#Alternative hypothesis will be there is a significant association between house tasks
#and their distribution in the couple.
#To conduct the test "chisq.test" command will be used as follows.
chisq <- chisq.test(housetasks)
chisq
#Consider 5% level of significance for the test.
#Rejection Region: If the p value for the test is less than 0.05,
#reject the null hypothesis at 5% level of significance.
#P value for the test got as 2.2e-16.
#Conclusion:Since the p value (2.2e-16) is less than 0.05, reject the null hypothesis at 5%
#level of significance. Therefore we can conclude that there is a significant association between
#house tasks and their distribution in the couple.

