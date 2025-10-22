# Exercise
# (i) — Hypotheses & data setup
# H0: Snack choices are equally likely (pA = pB = pC = pD = 0.25).
# H1: At least one snack's probability differs from 0.25.

counts <- c(A = 120, B = 95, C = 85, D = 100)
sum(counts); counts



# Exercise 
# (ii) — Chi-square goodness-of-fit test
counts  <- c(A = 120, B = 95, C = 85, D = 100)
p_equal <- rep(1/4, 4)

test_ex <- chisq.test(counts, p = p_equal)

# Output
test_ex
test_ex$expected
test_ex$statistic
test_ex$p.value



# Exercise 
# (iii) — Conclusion
counts  <- c(A = 120, B = 95, C = 85, D = 100)
p_equal <- rep(1/4, 4)

test_ex <- chisq.test(counts, p = p_equal)

alpha <- 0.05
cat("p-value =", test_ex$p.value, "\n")
if (test_ex$p.value < alpha) {
  cat("Conclusion (Exercise): Reject H0 — snack choices are NOT equally likely.\n")
} else {
  cat("Conclusion (Exercise): Do not reject H0 — choices are consistent with equal probabilities.\n")
}