FA8
================
Dwight Gonzales
2024-05-24

### Number 1

``` r
mean <- 200
sd <- 16

# a
prob_exceed_224 <- 1 - pnorm(224, mean, sd)
print(prob_exceed_224)
```

    ## [1] 0.0668072

``` r
# b
prob_between_186_224 <- pnorm(224, mean, sd) - pnorm(186, mean, sd)
print(prob_between_186_224)
```

    ## [1] 0.7424058

``` r
# c
quantile_25 <- qnorm(0.25, mean, sd)
print(quantile_25)
```

    ## [1] 189.2082

``` r
# d
prob_less_240_given_greater_210 <- (pnorm(240, mean, sd) - pnorm(210, mean, sd)) / (1 - pnorm(210, mean, sd))
print(prob_less_240_given_greater_210)
```

    ## [1] 0.9766541

``` r
# d (2)
quantile_25 <- qnorm(0.25, mean, sd)
quantile_75 <- qnorm(0.75, mean, sd)

# e
IQR <- quantile_75 - quantile_25
print(IQR)
```

    ## [1] 21.58367

``` r
# f
prob_less_220_given_greater_210 <- (pnorm(220, mean, sd) - pnorm(210, mean, sd)) / (1 - pnorm(210, mean, sd))
print(prob_less_220_given_greater_210)
```

    ## [1] 0.6027988

``` r
# g
prob_greater_220_given_greater_200 <- (1 - pnorm(220, mean, sd)) / (1 - pnorm(200, mean, sd))
print(prob_greater_220_given_greater_200)
```

    ## [1] 0.2112995

### Number 2

``` r
mean_downtime <- 25
sd_downtime <- 12

# Calculate the 2.5th and 97.5th percentiles
lower_bound_95 <- qnorm(0.025, mean_downtime, sd_downtime)
upper_bound_95 <- qnorm(0.975, mean_downtime, sd_downtime)


print(lower_bound_95)
```

    ## [1] 1.480432

``` r
print(upper_bound_95)
```

    ## [1] 48.51957

``` r
# Calculate the 90th percentile
bound_90th_percentile <- qnorm(0.90, mean_downtime, sd_downtime)


print(bound_90th_percentile)
```

    ## [1] 40.37862

Simply copy and paste this R Markdown content into your file, and you
will get the calculated bounds for both parts (a) and (b), along with
explanations.

### Explanation of the Parts

- **(a) Bounds which will include 95% of the downtime of all the
  customers**:
  - For a normal distribution, 95% of the data lies between the 2.5th
    percentile and the 97.5th percentile.
  - We use the `qnorm` function to find these percentiles, which gives
    us the lower and upper bounds.
- **(b) Bound above which 10% of the downtime is included**:
  - To find the value above which 10% of the data lies, we need the 90th
    percentile (since 100% - 10% = 90%).
  - We use the `qnorm` function to find the 90th percentile, which gives
    us the required bound.
