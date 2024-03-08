Formative Assesment 5
================
Dwight Gonzales

``` r
overall_percentage<-(0.40*0.01+0.25*0.02+0.35*0.015)*100
overall_percentage
```

    ## [1] 1.425

``` r
no_error<-100-overall_percentage
no_error
```

    ## [1] 98.575

``` r
server_1_no_error<-(100-1)*40/no_error
server_1_no_error
```

    ## [1] 40.17246

``` r
# Given probabilities
P_A = 0.20   # Probability of not buying
P_B = 0.70   # Probability of buying
P_C = 1 - P_A - P_B  # Probability of being undecided
P_G_given_A = 0.10  # Probability of upgrading given not buying
P_G_given_B = 0.40  # Probability of upgrading given buying
P_G_given_C = 0.20  # Probability of upgrading given undecided

# (a) Calculate the probability that a manager chosen at random will not upgrade the computer hardware (P(G))
P_G = P_A * P_G_given_A + P_B * P_G_given_B + P_C * P_G_given_C
print(paste("P(G):", P_G))
```

    ## [1] "P(G): 0.32"

``` r
# (b) Explain what is meant by the posterior probability of B given G, P(B|G)
# P(B|G) is the probability of buying given that the manager intends to upgrade (posterior probability).

# (c) Construct a tree diagram and use it to calculate the following probabilities:

# Probability of not upgrading and not buying
P_A_not_G = P_A * (1 - P_G_given_A)

# Probability of buying and upgrading
P_B_G = P_B * P_G_given_B

# Probability of not buying and upgrading
P_A_G = P_A * P_G_given_A

# Probability of being undecided and upgrading
P_C_G = P_C * P_G_given_C

# Probability of being undecided and not upgrading
P_C_not_G = P_C * (1 - P_G_given_C)

# Display the results
print(paste("P(A and not G):", P_A_not_G))
```

    ## [1] "P(A and not G): 0.18"

``` r
print(paste("P(B and G):", P_B_G))
```

    ## [1] "P(B and G): 0.28"

``` r
print(paste("P(A and G):", P_A_G))
```

    ## [1] "P(A and G): 0.02"

``` r
print(paste("P(C and G):", P_C_G))
```

    ## [1] "P(C and G): 0.02"

``` r
print(paste("P(C and not G):", P_C_not_G))
```

    ## [1] "P(C and not G): 0.0800000000000001"

``` r
p_internet <- 0.7
p_email <- 0.3
p_detect_internet <- 0.6
p_detect_email <- 0.8

p_infection <- p_internet * (1 - p_detect_internet) + p_email * (1 - p_detect_email)


p_internet_given_detected <- (p_internet * p_detect_internet) / p_infection

cat("(a) Probability that the spyware infects the system:", p_infection, "\n")
```

    ## (a) Probability that the spyware infects the system: 0.34

``` r
cat("(b) Probability that, if detected, the spyware came through the Internet (using conditional probability):", p_internet_given_detected, "\n")
```

    ## (b) Probability that, if detected, the spyware came through the Internet (using conditional probability): 1.235294
