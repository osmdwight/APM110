# Given probabilities
pJ <- 0.1 # prior probability of Jane
pA <- 0.3 # prior probability of Amy
pV <- 0.6 # prior probability of Ava

pE_J <- 0.08
pE_A <- 0.05
pE_V <- 0.01

# Calculate the total percentage of error
pE <- (pJ * pE_J) + (pA * pE_A) + (pV * pE_V)

# Calculate conditional probabilities
pJ_E <- pJ * pE_J / pE
pA_E <- pA * pE_A / pE
pV_E <- pV * pE_V / pE

# Bar plot
bar_data <- c(pJ_E, pA_E, pV_E)
names(bar_data) <- c("Jane", "Amy", "Ava")
bar_colors<- c("violet","red","green")

barplot(bar_data, col = bar_colors, main = "Conditional Probabilities of Errors", ylab = "Probability", ylim = c(0, 1))




  