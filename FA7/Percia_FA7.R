## NUMBER 1

# Rate parameter (events per minute)
gamma <- 4

# (a) P(T ≤ 0.25) = P(time between submissions is at most 15 seconds)
prob_a <- pexp(0.25, rate = gamma/60)  # Convert gamma to events per second
cat("Probability (a):", prob_a, "\n")

# (b) P(T > 0.5) = P(time between submissions is greater than 30 seconds)
prob_b <- 1 - pexp(0.5, rate = gamma/60)  # Convert gamma to events per second
cat("Probability (b):", prob_b, "\n")

# (c) P(0.25 < T < 1) = P(time between submissions is between 15 seconds and 1 minute)
prob_c <- pexp(1, rate = gamma/60) - pexp(0.25, rate = gamma/60)  # Convert gamma to events per second
cat("Probability (c):", prob_c, "\n")


## NUMBER 3

# Load the stats package for Poisson distribution functions
library(stats)

# Average rate of job submissions (λ)
lambda <- 2

# (a) Probability that more than two jobs will arrive in a minute
prob_a <- 1 - ppois(2, lambda)
cat("Probability (a):", prob_a, "\n")

# (b) Probability that at least 30 seconds will elapse between any two jobs
# Convert 30 seconds to a fraction of a minute
time_30_seconds <- 30 / 60
prob_b <- ppois(0, lambda * time_30_seconds)
cat("Probability (b):", prob_b, "\n")

# (c) Probability that less than 30 seconds will elapse between jobs
prob_c <- 1 - prob_b
cat("Probability (c):", prob_c, "\n")

# (d) Probability that a job will arrive in the next 30 seconds
prob_d <- 1 - ppois(0, lambda * time_30_seconds)
cat("Probability (d):", prob_d, "\n")


## NUMBER 7

# Load the stats package for Poisson distribution functions
library(stats)

# Average rate of visits (λ)
lambda <- 15

# (a) Probability that at least 10 minutes will elapse without a visit
# Convert 10 minutes to a fraction of an hour
time_10_minutes <- 10 / 60
prob_a <- ppois(0, lambda * time_10_minutes)
cat("Probability (a):", prob_a, "\n")

# (b) Probability that in any hour, there will be less than eight visits
prob_b <- ppois(7, lambda)
cat("Probability (b):", prob_b, "\n")

# (c) Probability that a visit will occur in the next 15 minutes given 15 minutes have elapsed
# Convert 15 minutes to a fraction of an hour
time_15_minutes <- 15 / 60
prob_c <- 1 - ppois(0, lambda * time_15_minutes)
cat("Probability (c):", prob_c, "\n")

# (d) Calculate the top quartile
top_quartile <- qpois(0.75, lambda)
cat("Top Quartile:", top_quartile, "\n")

