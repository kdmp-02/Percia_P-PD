## NUMBER 1

# Load the stats package for normal distribution functions
library(stats)

# Mean and variance of the normal distribution
mean <- 200
variance <- 256

# Standard deviation
sd <- sqrt(variance)

# (a) Probability that the signal will exceed 224 μV
prob_a <- 1 - pnorm(224, mean, sd)
cat("Probability (a):", prob_a, "\n")

# (b) Probability that the signal will be between 186 and 224 μV
prob_b <- pnorm(224, mean, sd) - pnorm(186, mean, sd)
cat("Probability (b):", prob_b, "\n")

# (c) Microvoltage below which 25% of the signals will be
quantile_c <- qnorm(0.25, mean, sd)
cat("Microvoltage for (c):", quantile_c, "\n")

# (d) Probability that the signal will be less than 240 μV, given that it is larger than 210 μV
prob_d <- (pnorm(240, mean, sd) - pnorm(210, mean, sd)) / (1 - pnorm(210, mean, sd))
cat("Probability (d):", prob_d, "\n")

# (e) Estimate the interquartile range
quantile_25 <- qnorm(0.25, mean, sd)
quantile_75 <- qnorm(0.75, mean, sd)
interquartile_range <- quantile_75 - quantile_25
cat("Interquartile Range:", interquartile_range, "\n")

# (f) Probability that the signal will be less than 220 μV, given that it is larger than 210 μV
prob_f <- (pnorm(220, mean, sd) - pnorm(210, mean, sd)) / (1 - pnorm(210, mean, sd))
cat("Probability (f):", prob_f, "\n")

# (g) Probability that the signal is greater than 220 μV given that it is greater than 200 μV
prob_g <- (pnorm(220, mean, sd) - pnorm(200, mean, sd)) / (1 - pnorm(200, mean, sd))
cat("Probability (g):", prob_g, "\n")


## NUMBER 2

# Mean and standard deviation
mean <- 25
sd <- sqrt(144)

# (a) Bounds which will include 95% of the downtime of all the customers
lower_bound_95 <- qnorm(0.025, mean, sd)
upper_bound_95 <- qnorm(0.975, mean, sd)
cat("Bounds (95%):", lower_bound_95, "-", upper_bound_95, "\n")

# (b) Bound above which 10% of the downtime is included
upper_bound_10 <- qnorm(0.90, mean, sd)
cat("Upper Bound (10%):", upper_bound_10, "\n")
