# Question 01

# Part 1
# The baking time is N(mean = 45, sd = 2). We take a sample of size 25.
time <- rnorm(25, mean = 45, sd = 2)
print(time)

# Part 2

# Hypothesis: H0: μ ≥ 46  Vs  H1: μ < 46
# Consider a 5% level of significance

# Run the one-sample (left-tailed) test with the null hypothesis μ = 46
res <- t.test(time, mu = 46, alternative = "less")

# Print the full test result
print(res)

# Test statistic:
res$statistic


# p-value:
res$p.value


# Confidence interval 
res$conf.int


# P-value approach will used to conclude the hypothesis test.
# Conclusion:
# Since the p-value (1) > 0.05, we do not reject H₀ at the 5% level of significance.
# Therefore, we conclude that there is no evidence to suggest the true mean is greater than 10. In other words, the true mean sugar level of a cookie is likely less than or equal to 10.