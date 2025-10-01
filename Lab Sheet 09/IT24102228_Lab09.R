## Question 01
# Since the true variance is unknown and the sample size is less than 30,
# we can apply the one-sample t-test.
#
# Hypothesis: H0: μ = 3  vs  H1: μ ≠ 3
# Consider a 5% level of significance

# To run the one-sample t-test, use the "t.test" command as follows:
x <- c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)

# Run the t-test with the null hypothesis μ = 3
t_test_result <- t.test(x, mu = 3)

# Print the t-test result
print(t_test_result)

# P-value approach will be used to get the conclusion of hypothesis testing.
# Conclusion: Since p-value (0.2012) is greater than 0.05, do not reject H0 at 
# the 5% significance level. Therefore, we can conclude that the true average number of meme
# professors know is not significantly different from 3 (exactly equal to 3).


# Question 02 
# Part 1
# Since the true variance is unknown and sample size is less than 30,
#Hypothesis: HO: µ ≥ 25 VS H1: u < 25
#Consider 5% level of significance
#To run the one-sample t test, "t.test" command can be used as follows.
Weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(Weight , mu=25 , alternative= "less")
#P value approach will be used to get the conclusion of hypothesis testing.
#Conclusion: Since p value (3.977e-06) is less than 0.05, reject HO at 5% level of significance.
#Therefore, we can conclude that the true mean weight of mice is significantly less than
#25 grams.

#Part 2
#To obtain each value separately, we need to store the results of the hypothesis testing
#into a variable. Accordingly, results were stored into "res" variable.
res <- t.test(Weight , mu=25 , alternative= "less")
#To extract test statistic, use "res$statistic" command as follows.
res$statistic
#To extract p value for the test, use "res$p.value" command as follows.
res$p.value
#To extract confidence interval for the test, use "res$conf.int" command as follows.
res$conf.int


##Question 03
#Part 1
#To generate random numbers from a Normal distribution, we can use "rnorm" command as follows.
y <- rnorm(30, mean = 9.8, sd = 0.05)

#Part 2
#Since the true variance is known we can apply one sample z-test.
#Hypothesis : H0 : μ < 10 Vs H1: μ >10
#Consider 5% level of significance
#To run the one-sample z test, "t.test" command can be used as follows.
#when samples are large enough, t distribution can be approximated into Normal distribution.
#So that same command ("t.test") can be used for one sample z test.
t.test(y , mu=10 , alternative= "greater")
#P value approach will be used to get the conclusion of hypothesis testing.
#Conclusion: Since p value (1) is greater than 0.05, do not reject HO at 5% level of
#significance. Therefore, we can conclude that the true mean sugar level of a cookie is
#less than or equal to 10.
#Note that based on the random numbers you got as the sample, results of the test
#will be different.