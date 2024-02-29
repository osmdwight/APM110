---
title: "Formative Assesment 6"
author: "Dwight Gonzales"
output: html_document   
---

```{r}

library(moments)

# Generate random numbers from a geometric distribution
p <- 0.2
r <- rgeom(1000, p)

# Calculate mean, variance, and standard deviation
mean_r <- mean(r)
var_r <- var(r)
sd_r <- sd(r)

# Print summary statistics
cat("Mean:", round(mean_r, digits = 2), "\n")
cat("Variance:", round(var_r, digits = 2), "\n")
cat("Standard Deviation:", round(sd_r, digits = 2), "\n")
cat("Number of errors or trials before success (first simulation): ", r[1], "\n")

# Plot the histogram
hist(r, main = "Histogram of Geometric Distribution", xlab = "Number of Trials", ylab = "Frequency", col = "lightblue", border = "black")

# Calculate skewness using moments::skewness
skewness_r <- skewness(r)
cat("Skewness:", round(skewness_r, digits = 2), "\n")

# Calculate kurtosis using moments::kurtosis
kurtosis_r <- kurtosis(r)
cat("Kurtosis:", round(kurtosis_r, digits = 2), "\n")

# Function to calculate binomial probability
binomial_probability <- function(n, k, p) {
  choose(n, k) * p^k * (1 - p)^(n - k)
}

# Parameters
p_defective <- 0.1

# Scenario 1: Sample of 10 from a box of 40
n1 <- 10
k_values1 <- 1:n1  # Possible number of defectives

# Calculate probability for more than 10% defectives
prob_more_than_10_percent1 <- sum(sapply(k_values1, function(k) binomial_probability(n1, k, p_defective)))

cat("Probability of more than 10% defectives in a sample of 10 from a box of 40:", prob_more_than_10_percent1, "\n")

# Scenario 2: Sample of 10 from a box of 5000
n2 <- 10
k_values2 <- 1:n2  # Possible number of defectives

# Calculate probability for more than 10% defectives
prob_more_than_10_percent2 <- sum(sapply(k_values2, function(k) binomial_probability(n2, k, p_defective)))

cat("Probability of more than 10% defectives in a sample of 10 from a box of 5000:", prob_more_than_10_percent2, "\n")

# APM110
